/*
esercizio ritrattaTutto
*/
p(a,b)=L.
L=[p,a,b].

ritrattaTutto(P):-retract(P),fail.
ritrattaTutto(_).

/*
?-listing(ritrattaTutto(p(A,B))).
?-listing(p).
*/