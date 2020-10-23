#include "crc_32.h"

//crc_poly = 0x04c11db7

unsigned int validate_crc(unsigned char data[100]){
	unsigned int remainder = 0xffffffff;

	for (int i=0; i < 100; i++){
		unsigned int byte_of_interest = data[i];
		remainder = remainder ^ (byte_of_interest << 24);
		for (int j=0; j < 8; j++){
			if (remainder & 0x80000000){
				remainder = (remainder << 1) ^ 0x04c11db7;
			}else{
				remainder = remainder << 1;
			}
			//if remainder is not a 32bit variable
			//remainder = remainder & 0xffffffff;
		}
	}
	return remainder;
}
