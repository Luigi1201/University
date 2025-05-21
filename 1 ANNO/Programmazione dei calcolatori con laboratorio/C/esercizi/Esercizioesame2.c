#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int rimuovi_stringa(char *a, char *b) ;

void main(){
	char a[]= "programmazione dei calcolatori";
	char b[]= "azione";
	
	printf("%d",rimuovi_stringa(a,b));
}

int rimuovi_stringa(char *a, char *b){
	/*
	*	Pre: funzione che rimuove b da a nel caso in cui b sia sottostringa di a. 
	*	La funzione deve restituire 0 se b non è sottostringa di a, 1 altrimenti
	*/
	int i=0;
	int j=0;
	int equal=0;
	int indice=0;
	int len_a=strlen(a);
	int len_b=strlen(b);
	for(i;i<len_a;i++){
		if(j<len_b){
			if(a[i]==b[j]){
				equal=1;
				j++;
				indice=i;	
			}else{
				equal=0;
				j=0;
			}	
		}
	}
	if(equal){
		int indicefinale=indice-(len_b-1);
		int i;
		for(i=indice;i<indicefinale;i++){
			a[i]=a[i+1];
		}
		
	}
	printf("\n\nStringa modificata: %s\n\n\n",a);
	return equal;
	
		
}
