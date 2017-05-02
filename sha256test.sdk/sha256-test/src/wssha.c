/* 
 * SSH implementation of routine in wscrypt.h
 *
 * THIS FILE GOES AWAY WHEN HARDWARE AVAILABLE
 */
#include <stdio.h>
#include <stdint.h>

//#include "wsconst.h"

#include "xparameters.h"
#include "xil_cache.h"
#include "xsha256.h"
#include "xil_cache.h"

#define HWSUCCESS 0

#define SHA256_HASHSIZE 32
#define DATASIZE 256

int32_t sha256(uint8_t *datap, uint64_t datalen,
			   uint8_t *digestp, uint32_t *digest_lenp)
{
	// device structs
	XSha256 xsha256;
	XSha256_Config *sha256Ptr;

	// Look Up the device configuration
	sha256Ptr = XSha256_LookupConfig(XPAR_XSHA256_0_DEVICE_ID);
	if (!sha256Ptr) {
		print("ERROR: Lookup of accelerator configuration failed.\n\r");
		return XST_FAILURE;
	}

	// Initialize the Device
	int status = XSha256_CfgInitialize(&xsha256, sha256Ptr);
	if (status != XST_SUCCESS) {
		print("ERROR: Could not initialize accelerator.\n\r");
		exit(-1);
	}

	// Digest size is constant: 32 bytes
	*digest_lenp = SHA256_HASHSIZE;

	// get address of the data and digest buffers in S_AXI addressable region
	uint8_t* data = (uint8_t*)XSha256_Get_data_BaseAddress(&xsha256);
	uint8_t* digest = (uint8_t*)XSha256_Get_digest_BaseAddress(&xsha256);

	// Initialize the hash digest to zero, and copy the data to be hashed into buffer
	memset((void *)digestp, 0, SHA256_HASHSIZE);
	memcpy((void *)data, (void*)datap, DATASIZE);

	// Check if the hardware engine is ready. If it is not, this function will
	// return a failure code but the hash should also be obviously invalid
	if( !XSha256_IsReady(&xsha256) ) {
		xil_printf("SHA Engine Not Ready\r\n");
		return -2;
	}

	// Configure the parameters for the hardware engine
	XSha256_Set_base_offset(&xsha256, (uint32_t)0);
	XSha256_Set_bytes(&xsha256, (uint32_t)datalen);

	// Start the accelerator to compute the hash, and wait for it to finish
	XSha256_Start(&xsha256);
	while( !XSha256_IsDone(&xsha256));

	// The result is written directly to RAM - flush the cache
	Xil_DCacheFlushRange((UINTPTR)digest, SHA256_HASHSIZE);

	// copy the resulting hash into the destination
	memcpy((void *)digestp, (void*)digest, SHA256_HASHSIZE);

	return HWSUCCESS;
}

