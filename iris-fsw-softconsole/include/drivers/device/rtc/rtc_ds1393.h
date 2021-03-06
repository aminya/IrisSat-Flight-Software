#ifndef RTC_DS1393_H_
#define RTC_DS1393_H_
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
//  Driver for the DS1393 RTC (i.e. the external RTC).
//
// History
// 2019-04-17 by Tamkin Rahman
// - Created.
// 2019-06-23 by Tamkin Rahman
// - Move pin and SPI core definitions to board_definitions.h.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// INCLUDES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "rtc_common.h"

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// DEFINITIONS AND MACROS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// ENUMS AND ENUM TYPEDEFS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Refer to the datasheet for information about bit fields.
typedef enum
{
	DS1393_REG_HUNDREDTHS = 0x00, // 0-99 BCD.
	DS1393_REG_SECONDS    = 0x01, // 0-59 BCD.
	DS1393_REG_MINUTES    = 0x02, // 0-59 BCD.
	DS1393_REG_HOURS      = 0x03, // 1-12 AM/PM, or 0-23 BCD.
	DS1393_REG_DAY        = 0x04, // 1-7 BCD.
	DS1393_REG_DATE       = 0x05, // 1-31 BCD.
	DS1393_REG_MONTH      = 0x06,
	DS1393_REG_YEAR       = 0x07,

	// Rest are alarm, control, and status registers which aren't used.
} DS1393RegAddresses_t;

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// FUNCTION PROTOTYPES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Description:
//  Initialize the driver. It should only be initialized once the SPI driver has been initialized.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
void ds1393_init();

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Description:
//  Read the time from the external RTC.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
void ds1393_read_time(
		Calendar_t * read_buffer // The pointer to the object to write the time to.
		);

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Description:
//  Write a time to the external RTC.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
void ds1393_write_time(
		Calendar_t * write_buffer // The pointer to the object containing time to write.
		);

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Description:
//  Read a byte of data from a register on the external RTC.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
void ds1393_read_reg(
		DS1393RegAddresses_t address, // The register address to read from.
		uint8_t * buffer              // The buffer to read the byte into.
		);

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Description:
//  Write a byte to a register on the external RTC.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
void ds1393_write_reg(
		DS1393RegAddresses_t address, // The register address to read from.
		uint8_t value                 // The buffer to read the byte into.
		);

#endif /* RTC_DS1393_H_ */
