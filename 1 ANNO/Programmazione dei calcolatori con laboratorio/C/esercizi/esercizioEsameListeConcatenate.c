#include <stdio.h>
#include <stdlib.h>

struct nodo {
	int valore;
	struct nodo *succ;
	struct nodo *prec;
};
typedef struct nodo nodo;

nodo *input_list();

void main(){
	int a[]={0,1,2,3,4,5,6,7,8,9};
	int i;
	nodo nodo0;
	nodo* listaNodi=&nodo0;
	for(i=0;i<10;i++){
		if(i==0){
			nodo0.valore=a[i];
			nodo0.succ=NULL;
			nodo0.prec=NULL;
		}else{
			nodo nuovoNodo;
			nuovoNodo.valore=a[i];
			nuovoNodo.prec=(listaNodi-i);
			nuovoNodo.succ=NULL;
			(listaNodi-i)->succ=&nuovoNodo;
		}
	}
	printf("\n\t NODO 0 : valore=%d , prec=%ld, succ=%ld\n", listaNodi->valore, listaNodi->prec, listaNodi->succ);
	printf("\n\t NODO 1 : valore=%d , prec=%ld, succ=%ld\n", (listaNodi->succ)->valore, (listaNodi->succ)->prec, (listaNodi->succ)->succ);
    printf("===============\n");
    for( listaNodi = &nodo0; listaNodi !=NULL; listaNodi = listaNodi->succ){
        printf("\tNODO: %d\n", listaNodi->valore);
    }
	
}

nodo *input_list(){
	
	
}
