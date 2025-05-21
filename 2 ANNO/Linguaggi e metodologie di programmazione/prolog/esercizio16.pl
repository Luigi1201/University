/*
5/04/2023
*/

/*
FAIL INTRODUZIONE

CON IL FAIL ESPLORA TUTTO, SE TOGLIAMO A QUESTO CODICE IL FAIL DICE SOLO IL PRIMO RISULTATO
CON FAIL OBBLIGHIAMO A ESPLORARE TUTTO LO SPAZIO
*/

prova(a):-riprova(X),write(X),nl,fail.

riprova(c).
riprova(d).
riprova(e).
riprova(f).
riprova(g).


----------------------------------------------------------------------------------


/*
COME SI FA LA NEGAZIONE?
*/
prova(X):-riprova(X),!,write(X),nl,fail.
prova(_).

riprova(c).
riprova(d).
riprova(e).
riprova(f).
riprova(g).

/*
?-prova(c).   FALSE
?-prova(k).	  TRUE
*/


/*
LA NEGAZIONE IN GENERALE SI FA COSI
*/

not_member(X,[X|_]):-!,fail.
not_member(X,[_|M]):- !,not_member(X,M).
not_member(_,_).

non_vero(P):-P,!,fail.
non_vero(_).

/*
?-non_vero(member(b,[a,b,c]))
*/
-----------------------------------------------------------------------------------

/*
USANDO IL CUT CHE SI INDICA CON ! (CUT SEMPRE VERO)
*/

prova(X):-riprova(X),write(X),nl,fail.

prova1(X):- riprova(X),write(X),nl,false.

prova2(X,B,C):-riprova(X,B),!,riprova2(X,C).

riprova(d,1).
riprova(d,2).
riprova(e,3).
riprova(c,4).
riprova(f,5).
riprova(g,6).
riprova2(d,2).
riprova2(e,2).