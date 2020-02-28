#ifndef SCHEDULER_H
#define SCHEDULER_H
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// UMSATS 2018-2020
//
// Repository:
//  UMSATS GitHub cdh-tsat5: Command and Data Handling (CDH) for TSAT5
//
// File Description:
//  Custom task scheduler. Uses a queue of time-tagged tasks to be executed at a given future time.
//
// History
// 2019-09-08 by Eric Kapilik
// - Created.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// INCLUDES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
#include <request_code.h>
#include "drivers/mss_rtc/mss_rtc.h"

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// DEFINITIONS AND MACROS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// ENUMS AND ENUM TYPEDEFS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// STRUCTS AND STRUCT TYPEDEFS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Description: Holds a desired execution time along with a request code.
//
//	time_tag: the desired future execution time of the request
//  request_code: the code of the predefined task to execute
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
typedef struct {
	mss_rtc_calendar_t time_tag;
	request_code_t request_code;
} time_tagged_task_t;

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// TYPEDEFS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// CONSTANTS
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// FUNCTION PROTOTYPES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Description:
//  Schedule a predefined task at a give future time.
//
// Parameters:
//	req - Predefined task request specified by request code.
//	time - Given future time to fulfill requested action at.
//
// Returns:
//  Integer - 0 if successfully scheduled task, error occurred otherwise.
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
int schedule_task(
    request_code_t req,
	mss_rtc_calendar_t time
	);

//-------------------------------------------------------------------------------------------------------------------------------------------------------------
// Description:
//  Poll the queue of scheduled tasks and execute them at set time.
//
// Returns:
//  Void
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
void vTestTaskScheduler(void *pvParameters);

#endif // SCHEDULER_H
