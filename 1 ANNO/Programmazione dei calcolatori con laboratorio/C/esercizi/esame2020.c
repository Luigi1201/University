/*
Progettare una funzione che rimuove da una stringa a in input tutti i caratteri che non 
sono in ordine
lessicografico con i precedenti a partire dal primo simbolo. Dopo l'operazione a risulterà 
ordinata
lessicograficamente.
*/

#include<stdlib.h>
#include<stdio.h>
#include<string.h>

void rimuovi_non_ordinati(char *a);

void main(){
	char a[] = "ddabeceffgfh";
	rimuovi_non_ordinati(a);
	printf("%s",a);
}

void rimuovi_non_ordinati(char *a){
	int i;								//c ,c inteso come costante
	while(i<strlen(a)){					//O(n) con n lunghezza della stringa a
		if(a[i]<a[i-1]){				//c
			int j=i;					//c
			while(j<strlen(a)){			//O(n-i)
				a[j]=a[j+1];			//c
				j++;					//c
			}
		}else{
			i++;						//c
		}	
	}
	
}
//Costo computazionale nel caso peggiore: O(n*n)
//ERRORE NEL METTERE strlen() NEL CONTROLLO DEL WHILE, PER QUESTO ANCHE I COSTI COMPUTAZIONALI SONO SBAGLIATI
