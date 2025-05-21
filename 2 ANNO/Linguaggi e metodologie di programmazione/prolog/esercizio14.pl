/*
ES2 TUTORATO 27032023

CONSEGNA: 	Intersect
			Date due liste:

			[1,2,3,5,6]
			[2,5,7]
			Vorremmo avere una lista che è l'intersezione delle due, in questo caso: [2,5]
			?-intersect([1,2,3,5,6,2,3], [2,5,7], IntersectedList).
*/

/*
DA ESERCIZIO 13 PRENDO list2set
*/
list2set([],[]).
list2set([H|T],SortedSet):-
	list2set(T,S),
	member(H,S),
	sort(S,SortedSet), !.

list2set([H|T],SortedSet):-
	list2set(T,T_S),
	sort([H|T_S], SortedSet).


/* Define set_intersect(S1, S2, IntersectedSet). predicate here */
/* Casi base, l'intersezione con l'insieme vuoto, è l'insieme vuoto */
set_intersect(_,[],[]).
set_intersect([],_,[]).
/* Caso in cui entrambi i set condividono H */
set_intersect([H|T1], [H|T2], [H|T]):-
    set_intersect(T1,T2,T).
/* Caso in cui H del primo set è minore di H del secondo set, scorri il primo */
set_intersect([H1|T1], [H2|T2], IntersectedSet):-
    H1 < H2,
    set_intersect(T1, [H2|T2], IntersectedSet).
/* Caso in cui H del secondo set è minore di H del primo set, scorri il secondo */
set_intersect([H1|T1], [H2|T2], IntersectedSet):-
    H2 < H1,
    intersect([H1|T1], T2, IntersectedSet).
/* Define intersect(L1, L2, IntersectedList) predicate here.
  Definisci due set dalle liste di partenza e fai l'intersect insiemistico*/
intersect(L1, L2, ListIntersected):-
    list2set(L1,S1),
    list2set(L2,S2),
    set_intersect(S1,S2, ListIntersected),!.

