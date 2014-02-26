#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int perfect(int n){
	int sum =0;
	int perfectNumber =n;
	n =n-1;
	
	while(n>0){
		if(perfectNumber% n ==0)
			sum += n;
			
		n--;
	}	
	
	if(perfectNumber == sum)
		return 1;
	return 0;

}
int main(){
	
	printf("%d",perfect(28));
}
