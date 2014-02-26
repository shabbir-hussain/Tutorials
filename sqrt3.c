#include <stdio.h>
#include <math.h>

void ratio (float a, float b, int iterations){
	if(iterations == 0){
		return;
	}else{
		float error = a/b - sqrt(3);
		printf("%d\t %d\t %f\t %f\n",(int)a,(int)b,a/b, error);
		ratio(a+3*b,a+b,iterations-1);
	}
	
}

void main(){
	ratio(1,1,100);
}
