/*
 * sha256test.c
 *
 *  Created on: Apr 7, 2017
 *      Author: brett
 */


#include <xil_printf.h>
#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "wssha.h" // Device driver for HLS HW block
#include "xil_cache.h"

#define DATASIZE 64
#define SHA256_HASHSIZE 32

	uint8_t data[DATASIZE];                   // the data to hash
	volatile uint8_t digest[SHA256_HASHSIZE]; // the location of the digest
	uint8_t digest_len = SHA256_HASHSIZE;     // dummy variable will be overwritten

int main(void)
{
	// Fill data buffer with something interesting to hash
	for (int i=0; i<DATASIZE; i++) {
		data[i] = 'A'+(i%26);
		xil_printf("%c",data[i]);
	}

	print("\r\nTesting SHA256...\r\n");

	int32_t status = sha256(data, DATASIZE, digest, &digest_len);

	print("Result received.\n\r");
	print("SHA256_HASH: ");
	for (int i=0; i<SHA256_HASHSIZE; i++) {
		xil_printf("%02X ", digest[i]);
	}
	xil_printf("\r\n");

	while(1)
	{
		sleep(1);
		xil_printf("*\r\n");
	}

	return 0;
}
