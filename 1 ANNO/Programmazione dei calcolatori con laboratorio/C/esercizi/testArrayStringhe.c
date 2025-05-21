#include<stdio.h>
#include<stdlib.h>
#include<string.h>

struct String{
	char *val;
	int dim;
};
typedef struct String String;

int len(char *stringa);
void printString(String stringa);
String StringInit(char* str);

void main(){	
	//FUNZIONI:
	int len(char *stringa){
		int i = 0;
		while(stringa[i]!='\0'){
			i++;
		}
		return i;
	}
	
	String StringInit(char* str){
		String stringaReturn={str,len(str)};
		return stringaReturn;
	}
	
	void printString(String stringa){
		printf("\nStringa:%s\tDimensione:%d", stringa.val,stringa.dim);
		int i=0;
	}
	//---------------------
	
	char *parola="parola"; //parola da inserire in String->val
	String stringa=StringInit(parola);
	printString(stringa);
	
	//--------------------------------------------------------
	//prove varie
	char StringadiProva[]="sono la stringa di prova";
	printf("\n\n\n%s",StringadiProva);
	
	char* puntatoreStringadiprova=StringadiProva;
	printf("\nvalore della stringa:%s",puntatoreStringadiprova);
	
	if(strcmp(StringadiProva, puntatoreStringadiprova)==0){
		printf("\nle stringhe sono uguali");
	}
	
	StringadiProva[7]='L';
	printf("\nModificata:%s",StringadiProva);
	puntatoreStringadiprova[4]='L';
	printf("\nModificata tramite puntatore:%s",puntatoreStringadiprova);
	printf("\ndopo le due modifiche:%s",StringadiProva);
	//FINE
	
	//tentativo di fare un array di stringhe
	char stringaUno[]="stringaUno";
	char stringaDue[]="stringaDue";
	char arrayDiStringhe[10][100];
	strcpy(arrayDiStringhe[0], stringaUno);
	strcpy(arrayDiStringhe[1], stringaDue);
	strcpy(arrayDiStringhe[2], "stringaTre");
	strcpy(arrayDiStringhe[3], "stringaQuattro");
	printf("\n\n\nARRAY DI STRINGHE\n");
	printf("\nEL0:%s",arrayDiStringhe[0]);
	printf("\nEL1:%s",arrayDiStringhe[1]);
	printf("\nEL2:%s",arrayDiStringhe[2]);
	printf("\nEL3:%s",arrayDiStringhe[3]);
	
}
