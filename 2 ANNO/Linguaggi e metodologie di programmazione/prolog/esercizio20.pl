/*
17/04/2023

CON setof() VOGLIAMO AVERE LA LISTA [1,2,3,4,5] con p(a,1)ecc...
*/

p(a,1).
p(b,2).
p(c,3).
p(c,4).
p(d,5).

p(X):-p(_,X).

/*
?- setof(k(B),A^p(A,B),L).
*/