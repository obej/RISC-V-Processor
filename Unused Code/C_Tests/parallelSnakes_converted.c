#include "terminal_hardware.h"

int main(){
	int offset = 0;
	int printPosition = 0;
	int unitChange = 1;
	int a, y , x;

	for(a = 0; a < 10; a++){
		for(y=0; y<30; y++){
			for(x=0; x<80; x++){
				printPosition = x + offset;
				if(printPosition%5 == 0){
					writeChar(y, x, '0');
				}
			}
			if(offset>=5){
				unitChange = -1;
			}
			if(offset<=0){
				unitChange = 1;
			}
			offset = offset + unitChange;
		}

		for(y=0; y<30; y++){
			for(x=0; x<80; x++){
				printPosition = x + offset;
				if(printPosition%5 == 0){
					writeChar(y, x, '1');
				}
			}
			if(offset>=5){
				unitChange = -1;
			}
			if(offset<=0){
				unitChange = 1;
			}
			offset = offset + unitChange;
		}
	}
	return 0;
}
