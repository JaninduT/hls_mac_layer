//#include "edca.h"
//
//int main(){
//	uint1 ms = 1;
//	bool idle_tm0_ms1 = false;
//	slot_boundary_timing(0, &idle_tm0_ms1, &ms);
//	printf("tm0_ms1 : %d\n",idle_tm0_ms1);
//
//	bool idle_tm0_ms0 = false;
//	ms = 0;
//	slot_boundary_timing(0, &idle_tm0_ms0, &ms);
//	printf("tm0_ms0 : %d\n",idle_tm0_ms0);
//
//	bool idle_tm1_ms1 = false;
//	ms = 1;
//	slot_boundary_timing(1, &idle_tm1_ms1, &ms);
//	printf("tm1_ms1 : %d\n",idle_tm1_ms1);
//
//	bool idle_tm1_ms0 = false;
//	ms = 0;
//	slot_boundary_timing(1, &idle_tm1_ms0, &ms);
//	printf("tm1_ms0 : %d\n",idle_tm1_ms0);
//
//	bool idle_tm2_ms1 = false;
//	ms = 1;
//	slot_boundary_timing(2, &idle_tm2_ms1, &ms);
//	printf("tm2_ms1 : %d\n",idle_tm2_ms1);
//
//	bool idle_tm2_ms0 = false;
//	ms = 0;
//	slot_boundary_timing(2, &idle_tm2_ms0, &ms);
//	printf("tm2_ms0 : %d\n",idle_tm2_ms0);
//
//	bool idle_tm3_ms1 = false;
//	ms = 1;
//	slot_boundary_timing(3, &idle_tm3_ms1, &ms);
//	printf("tm3_ms1 : %d\n",idle_tm3_ms1);
//
//	bool idle_tm3_ms0 = false;
//	ms = 0;
//	slot_boundary_timing(3, &idle_tm3_ms0, &ms);
//	printf("tm3_ms0 : %d\n",idle_tm3_ms0);
//
//	if((idle_tm0_ms0 == 0)&&(idle_tm0_ms1 == 1)&&(idle_tm1_ms0 == 0)&&(idle_tm1_ms1 == 1)&&
//			(idle_tm2_ms0 == 0)&&(idle_tm2_ms1 == 1)&&(idle_tm3_ms0 == 0)&&(idle_tm3_ms1 == 1)){
//		return 0;
//	}
//	return 1;
//
//}
