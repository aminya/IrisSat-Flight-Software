//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// UMSATS 2018-2020
//
// License:
//  Available under MIT license.
//
// Repository:
//  Github: https://github.com/UMSATS/cdh-tsat5
//
// File Description:
//  Functions for CAN initialization, message reception, and message transmission. Received messages are read into a Queue, which
//  can be handled by a dedicated task.
//
// History
// 2019-03-28 by Tamkin Rahman
// - Created.
// 2019-04-16 by Tamkin Rahman
// - Add a #error for situations where the firmware indicates the wrong clock rate.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// INCLUDES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
#include <stdio.h>

#include "can.h"

#include "drivers_config/sys_config/sys_config_mss_clocks.h"

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// DEFINITIONS AND MACROS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
#define CAN_EXTENDED_ID_MASK     0x1FFFFFFF  // 29-bit mask
#define CAN_STANDARD_ID_MASK     0x7FF       // 11-bit mask

#define NUM_CAN_RX_MAILBOXES    32
#define NUM_CAN_TX_MAILBOXES    32

// Definitions of generating the queue.
#define ITEM_SIZE               sizeof(CANMessage_t)    // Size of a queue item object.
#define QUEUE_LENGTH            64                      // Max number of items in a queue.

#if (MSS_SYS_APB_1_CLK_FREQ != 32000000u)
    #error "Error: This module assumes the APB1 clock rate is 32 MHz."
#endif

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// VARIABLES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
QueueHandle_t can_rx_queue;
QueueHandle_t csp_rx_queue;
mss_can_instance_t g_can0;  // MSS CAN object instance.

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// FUNCTIONS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
int init_CAN(CANBaudRate baudrate, QueueHandle_t *csp_rx_queue_handle)
{
    int rc = 1;


    //---------------------------------------------------------------------
    // Initialize the CAN receive queue.
    //---------------------------------------------------------------------
    can_rx_queue = xQueueCreate( QUEUE_LENGTH, ITEM_SIZE);
    csp_rx_queue = csp_rx_queue_handle;
    if (can_rx_queue == NULL)
    {
        rc = 0;
    }
    else
    {
        //---------------------------------------------------------------------
        // Initialize the MSS CAN and MSS CAN interrupt
        //---------------------------------------------------------------------
        // Set up a CAN filter object to enable reception of all CAN messages.
        CAN_FILTEROBJECT filter;
        PCAN_FILTEROBJECT pFilter = &filter;
        pFilter->ACR.L=0x00000000;
        pFilter->AMR.L= 0xFFFFFFFF;
        pFilter->AMCR_D.MASK= 0xFFFF;
        pFilter->AMCR_D.CODE= 0x00;

        MSS_CAN_init(
                &g_can0,
                baudrate | CAN_AUTO_RESTART | CAN_LITTLE_ENDIAN,
                NULL, // NULL indicates that default registers are used.
                NUM_CAN_RX_MAILBOXES,    // Number of Basic CAN rx mailboxes
                NUM_CAN_TX_MAILBOXES     // Number of Basic CAN tx mailboxes
                );

        MSS_CAN_set_mode(&g_can0, CANOP_MODE_NORMAL);
        MSS_CAN_config_buffer(&g_can0, pFilter);
        MSS_CAN_start(&g_can0);

        NVIC_EnableIRQ(CAN_IRQn); // Enable the CAN interrupt.
        // Interrupts must be at a priority equal to or lower than the FreeRTOS defined MAX priority in order
        // to use FreeRTOS '_from_ISR' functions.
        NVIC_SetPriority(CAN_IRQn, configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY);
        MSS_CAN_set_int_ebl(&g_can0, CAN_INT_RX_MSG);
    }

    return rc;
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
int CAN_transmit_message(CANMessage_t * message)
{
    CAN_MSGOBJECT msg;
    PCAN_MSGOBJECT pMsg = &msg;
    int rc = 1;

    // Copy in the data to a CAN_MSGOBJECT.
    for (int ix = 0; ix < message->dlc; ix++)
    {
        pMsg->DATA[ix] = message->data[ix];
    }

    pMsg->DLC = message->dlc;

    //There is no way for a RTR CAN message to be requested by the application
    //code, so hard code as a normal frame.
    pMsg->RTR = 0;
    pMsg->IDE = 1;

     pMsg->ID = message->id & CAN_EXTENDED_ID_MASK;



    MSS_CAN_set_id(pMsg);

    if (CAN_VALID_MSG != MSS_CAN_send_message(&g_can0, pMsg))
    {
        rc = 0;
    }

    return rc;
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Interrupt handler for the CAN interrupt. Received CAN messages are placed into a Queue.
__attribute__((__interrupt__)) void CAN_IRQHandler(void)
{

	//TODO: figure out how to know if a frame is for csp or not.
	// Probably need to look at all possible csp can id to filter out.
    volatile uint32_t status = MSS_CAN_get_int_status(&g_can0);
    static CAN_MSGOBJECT rx_buf;
    static CANMessage_t q_buf;

    if (status & CAN_INT_RX_MSG)
    {
        while (CAN_VALID_MSG == MSS_CAN_get_message(&g_can0, &rx_buf))
        {
          q_buf.id = MSS_CAN_get_id(&rx_buf);
          q_buf.dlc = rx_buf.DLC;
          for (int ix = 0; ix < q_buf.dlc; ix++)
          {
              q_buf.data[ix] = rx_buf.DATA[ix];
          }

          //xQueueSendToBackFromISR(can_rx_queue, &q_buf, NULL);

          //NOTE: The queue (and CSP) use an internal can_frame_t but we are sending a CANMessage_t.
          // Make sure these are the same otherwise CSP will interpret the messages wrong.
          BaseType_t res = xQueueSendToBackFromISR(csp_rx_queue, &q_buf,NULL);
        }
        MSS_CAN_clear_int_status(&g_can0, CAN_INT_RX_MSG); // This is needed to indicate the interrupt was serviced.
    }
}
