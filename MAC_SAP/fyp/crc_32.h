#ifndef CRC_32_H
#define CRC_32_H

//crc polynomial
//x^32 + x^26 + x^23 + x^22 + x^16 + x^12 + x^11 + x^10 + x^8 + x^7 + x^5 + x^4 + x^2 + x + 1
//(1) 0000 0100 1100 0001 0001 1101 1011 0111
// 0x04c11db7

unsigned int calc_crc(unsigned char data[100]);

unsigned int validate_crc(unsigned char data[100]);

#endif
