/*
22/05/2023 - ASSENTE
*/


% permutation(L1, L2): true if L1 and L2 have the same elements
permutation([], []).
permutation([X|T], LP):-
    permutation(T, LPwithoutX),
    without(X, LP, LPwithoutX).
    
            
without(X, [X|T], T).
without(X, [Y|TY], [Y|T]):-
    without(X, TY, T).
    
/*Permutazione Prof*/

perm([],[]).

perm(L,[X|LPX]):-
    appartiene(X,L,LX),
    perm(LX,LPX).

appartiene(X,[X|L],L).
appartiene(X,[Y|L],[Y|L1]):-
    appartiene(X,L,L1).
	
	
/*
Ha fatto un esempio di programmazione dinamica usando prolog e l algoritmo di Fibonacci come esercizio di prova. In sostanza ha usano la parola chiave dynamic che aveva usato 
anche con l esercizio sul fail (se mi ricordo bene, in caso qualcuno mi corregga). Ovviamente l' ha fatto di nuovo in classe sul momento quindi ci ha perso un 30 minuti su quello.
Cmq poi ha concluso la lezione rispiegandoci l algoritmo permutation e rispondendo a qualche altra domanda
*/