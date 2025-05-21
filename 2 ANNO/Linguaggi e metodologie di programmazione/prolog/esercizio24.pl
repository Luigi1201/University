/*
3/05/2023 - NON FUNZIONA

L è una lista di 7 frutti collocati in sequenza, prima i gialli poi i verdi poi i rossi, presi da 
un cestino di 5 frutti 
*/

frutto(melaSmith, 1 , verde).
frutto(melaSmith, 2 ,verde).
frutto(melaFuji, 2 , rosso).
frutto(banana, 2 , giallo).
frutto(melone, 2 , giallo).

memberOur(A,[A|L],L).
memberOur(A,[B|L],[B,L1]):-
	memberOur(A,L,L1).


collocati(L):-
	length(L,7),
	bagof((F,C),B^frutto(F,B,C),LFP),
	collocatiWorker(L,LFP).
	
collocatiWorker([]).
collocatiWorker([(E,COLORE)|L],LFP):-
	memberOur((E,COLORE),LFP,LFPmenoFruttoAttuale),
	collocatiWorker(L,LFPmenoFruttoAttuale),
	listaColori(L,LC),
	vincoliRispettati([COLORE|LC]).
	
collocatiWorker([(empty,no)|L],LFP):-
	collocatiWorker(L,LFP),
	listaColori(L,LC),
	vincoliRispettati(LC).	
	
	
listaColori([],[]).
listaColori([(_,nc)|RL],RC):-
	!,
	listaColori(RL,RC).
listaColori([(_,C)|RL],[C|RC]):-
	listaColori(RL,RC).
	
	
precede(verde,rosso).
precede(giallo,rosso).
precede(giallo,verde).
precede(A,A).

vincoliRispettati([]).
vincoliRispettati([_]).
vincoliRispettati([A,B|L]):-
	precede(A,B),
	vincoliRispettati([B|L]).
	