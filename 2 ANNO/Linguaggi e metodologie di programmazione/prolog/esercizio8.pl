num_elem([],0).
num_elem([H|T],N):-num_elem(T,N1) , N is N1+1.

/*
 * 
 *num_elem(L,N) vero se L è una LISTA e N rappresenta il NUMERO di elementi 
 *che ci sono nella lista 
 * 
 * ?-num_elem([],0)          -----> TRUE 
 * ?-num_elem([a,b,c],3)     -----> TRUE 
 * ?-num_elem([a,b,c],4)     -----> FALSE
 * 
*/