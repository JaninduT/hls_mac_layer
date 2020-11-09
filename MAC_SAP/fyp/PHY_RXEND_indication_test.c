//#include "PHY_RXEND_indication.h"
//
//int main(void){
//	bool r_error = 0;
//	bool s_edca = 0;
//	phy_rxend_indication(NO_ERROR, &r_error, &s_edca);
//	bool res1 = r_error;
//	phy_rxend_indication(FORMAT_VIOLATION, &r_error, &s_edca);
//	bool res2 = r_error;
//	phy_rxend_indication(NO_ERROR, &r_error, &s_edca);
//	bool res3 = r_error;
//	phy_rxend_indication(UNSUPPORTED_RATE, &r_error, &s_edca);
//	bool res4 = r_error;
//	printf("%d, %d, %d, %d, %d\n",res1, res2, res3, res4, s_edca);
//	if((res1==0)&&(res2==1)&&(res3==0)&&(res4==1)){
//		return 0;
//	}
//	return 1;
//}
