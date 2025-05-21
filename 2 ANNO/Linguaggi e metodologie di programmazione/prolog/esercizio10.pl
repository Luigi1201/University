num_elem([],0).
num_elem([H|T],N):-num_elem(T,N1) , N is N1+1.

sommatoria([],0).
sommatoria([H|T],N):-sommatoria(T,N1), N is H+N1.

media([],0).
media(L,N):-sommatoria(L,M), num_elem(L,K), N is M/K.

/*
 * media(L,N) è vero se L è una lista di numeri e N è la media dei numeri nella lista
 * 
 * ?-media([2,6],4)  ---> TRUE
 * 
*/