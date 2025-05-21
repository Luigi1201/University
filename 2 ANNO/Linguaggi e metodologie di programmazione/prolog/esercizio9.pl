sommatoria([],0).
sommatoria([H|T],N):-sommatoria(T,N1), N is H+N1.

/*
 * sommatoria(L,N) vero se L è una lista di numeri e N è la somma di tutti 
 * i numeri presenti nella lista
 * 
 * ?-sommatoria([2,2,1],5) ----> TRUE
 * ?-sommatoria([2,2,1],1) ----> FALSE
 * ?-sommatoria([],0)      ----> TRUE
*/