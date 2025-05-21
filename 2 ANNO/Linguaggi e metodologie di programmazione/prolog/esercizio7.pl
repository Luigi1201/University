/* ESERCIZIO NON SVOLTO */

append([],L,L).
append([HX|TX],L,[HX|TZ]):-append(TX,L,TZ).
/*
 * perm(X,Y)
 * 
 * rivoltata([HX|TX],R):- append(TR,[HX], R),rivoltata(TX,TR).
*/

perm([],[]):
perm([H,T],