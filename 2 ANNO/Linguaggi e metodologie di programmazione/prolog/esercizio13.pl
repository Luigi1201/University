
/*
ES1 TUTORATO 27032023

CONSEGNA: 	List -> set
			Vogliamo eliminare i duplicati da una lista. Prendiamo ad esempio la seguente lista:

			[3,6,2,3,5,1,2,3,6]

			La lista risultante dovrebbe essere la seguente:

			[1,2,3,5,6]


			?-list2set([3,6,2,3,5,1,2,3,6], S).  
			?-list2set([3,6,2,3,5,1,2,3,6], [1,2,3,5,6]).    TRUE
*/


list2set([],[]).
/*
caso in cui H è gia presente nel set
*/
list2set([H|T],SortedSet):-
	list2set(T,S),
	member(H,S),
	sort(S,SortedSet), !.
/*
caso in cui H non è presente nel set 
*/
list2set([H|T],SortedSet):-
	list2set(T,T_S),
	sort([H|T_S], SortedSet).
	
