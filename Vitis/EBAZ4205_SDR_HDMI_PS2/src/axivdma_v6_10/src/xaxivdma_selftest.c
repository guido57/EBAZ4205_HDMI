/******************************************************************************
* Copyright (C) 2015 - 2021 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
*
* @file xaxivdma_selftest.c
* @addtogroup axivdma_v6_10
* @{
*
* Contains diagnostic/self-test functions for the XAxiVdma component.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -----------------------------------------------
* 5.1 	adk  29/01/15 First release
* </pre>
*
******************************************************************************/

/***************************** Include Files *********************************/

//#include "xil_io.h"
#include "xaxivdma.h"


/************************** Constant Definitions *****************************/
#define XAXIVDMA_RESET_TIMEOUT   500

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/


/************************** Variable Definitions *****************************/


/*****************************************************************************/
/**
*
* Runs a self-test on the driver/device. This test perform a
* reset of the VDMA device and checks the device is coming out of reset or not
*
* @param	InstancePtr is a pointer to the XAxiVdma instance.
*
* @return
* 		- XST_SUCCESS if self-test was successful
*		- XST_FAILURE if the device is not coming out of reset.
*
* @note
*     None.
*
******************************************************************************/
int XAxiVdma_Selftest(mm_IP * _mm_IP,  XAxiVdma * InstancePtr)
{
	XAxiVdma_Channel *RdChannel;
	XAxiVdma_Channel *WrChannel;
	int Polls;

	Xil_AssertNonvoid(InstancePtr != NULL);

	RdChannel = XAxiVdma_GetChannel(_mm_IP, InstancePtr, XAXIVDMA_READ);
	WrChannel = XAxiVdma_GetChannel(_mm_IP, InstancePtr, XAXIVDMA_WRITE);

	if (InstancePtr->HasMm2S) {
		RdChannel->ChanBase = InstancePtr->BaseAddr + XAXIVDMA_TX_OFFSET;
		RdChannel->InstanceBase = InstancePtr->BaseAddr;

		XAxiVdma_ChannelReset(_mm_IP, RdChannel);
		Polls = XAXIVDMA_RESET_TIMEOUT;

		while (Polls && XAxiVdma_ChannelResetNotDone(_mm_IP, RdChannel)) {
			Polls -= 1;
		}

		if (!Polls) {
			return XST_FAILURE;
		}
	}

	if (InstancePtr->HasS2Mm) {
		WrChannel->ChanBase = InstancePtr->BaseAddr + XAXIVDMA_RX_OFFSET;
		WrChannel->InstanceBase = InstancePtr->BaseAddr;
		XAxiVdma_ChannelReset(_mm_IP, WrChannel);

		Polls = XAXIVDMA_RESET_TIMEOUT;

		while (Polls && XAxiVdma_ChannelResetNotDone(_mm_IP, WrChannel)) {
			Polls -= 1;
		}

		if (!Polls) {
			return XST_FAILURE;
		}

	}

	return XST_SUCCESS;
}
/** @} */
