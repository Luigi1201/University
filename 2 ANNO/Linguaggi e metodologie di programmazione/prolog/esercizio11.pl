/*
 * NON COMPLETATO - DA SVOLGERE
 * max_elem(L,MAX) vero se L lista di numeri e MAX è il numero più grande di L
 * 
*/

max_elem([],0).
max_elem([H,T],MAX):-max_elem(T,MAX1),MAX is H>MAX1.