//Scrivere una funzione denominata swap_cases che prende in input una stringa e rende maiuscole le lettere minuscole e viceversa.
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

char* swap_cases(char* a);
void main(){
	char str[]="LuiGi";
	printf("%s",swap_cases(str));
}

char* swap_cases(char* a){
	int i=0;
	while(a[i]!='\0'){
		if(a[i]<'z' && a[i]>'a'){
			a[i]=a[i]-32;
		}else{
			a[i]=a[i]+32;
		}
		i++;
	}
	return a;
}
