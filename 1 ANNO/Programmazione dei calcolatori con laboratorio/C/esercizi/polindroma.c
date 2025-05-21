#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int polindroma(char* stringa);
void main(){
	char* stringa="anna";
	printf("\n%d",polindroma(stringa));
}

int polindroma(char* stringa){
	int size=strlen(stringa);
	char* reverse=calloc(size,sizeof(char));
	int i=size-1;
	int j=0;
	while(i>=0){
		reverse[j]=stringa[i];
		j++;
		i--;
	}
	if(strcmp(stringa,reverse)==0){
		return 1;
	}
	else{
		return 0;
	}

}

