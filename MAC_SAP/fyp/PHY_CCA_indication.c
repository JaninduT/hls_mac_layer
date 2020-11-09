#include "PHY_CCA_indication.h"


void phy_cca_indication(enum physical_medium_state m_state, uint1 *medium_state){
	if(m_state == BUSY){
		*medium_state = 0;
	}else{
		*medium_state = 1;
	}
}
