/*
12/04/2023

PROLOG MODIFICARE PROGRAMMA DURANTE L'ESECUZIONE
-PREDICATI ASSERT E RETRACT
OPERATORE UNIV 
*/

p(a,b)=L.
L=[p,a,b].

/*
?-	assert(p(a,b)). TRUE
?-	listing(p).
?-	retract(p(a,b)).
?- listing(p).
*/

