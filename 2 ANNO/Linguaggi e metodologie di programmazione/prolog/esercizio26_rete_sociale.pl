/*

ESERCITAZIONE 10/05/2023 

Parte dichiarativa
Sia data una rete sociale che descrive le relazioni di conoscenza tra le persone. Le relazioni di conoscenza sono 
classificate su tre gradi di importanza della relazione che rappresentano “Essere Parente di Primo Grado”, 
“Essere Amico”, “Essere/Essere Stato Collega”. 

Prima quesito
Date due persone in questa rete, si vuole capire se esiste una catena di conoscenti che le possa connettere. 
Realizzare dunque un predicato:
catena_conoscenza(P1,P2,Catena)
che sia vero se vi è una Catena è la serie di conoscenze che lega le persone P1 e P2

Secondo Quesito
Date due persone in questa rete, quale sia la migliore catena di conoscenze per far in modo che una persona 
riesca a contattare un’altra persona di suo interesse. Realizzare dunque un predicato:
catena_conoscenza_da_percorrere(P1,P2,CatenaMigliore)
che sia vero se vi è una CatenaMigliore è la serie migliore di conoscenze da percorrere se P1 vuole entrare in 
contatto con P2

*/

peso(primo,1).
peso(amico,2).
peso(collega,3).

conoscenza(p1,p2,primo).
conoscenza(p1,p3,amico).
conoscenza(p1,p5,collega).
conoscenza(p2,p3,primo).
conoscenza(p2,p5,primo).
conoscenza(p3,p4,collega).
conoscenza(p4,p5,amico).

catena_conoscenza(P1,P2,[Catena]):-
    conoscenza(P1,P2,Catena).
catena_conoscenza(P1,P2,[E|R]):-
    conoscenza(P1,P3,E),
    catena_conoscenza(P3,P2,R).
peso_catena([],0).
peso_catena([A|R],N):-
    peso(A,N1),
    peso_catena(R,N2),
    N is N1 + N2.
listaPesiCatene([],[]).
listaPesiCatene([A|R1],[(A,B)|R2]):-
    peso_catena(A,B),
    listaPesiCatene(R1,R2).

min_catena([(L,P)],L,P).
min_catena([(L,P)|R],L,P):-
    min_catena(R,_,P1),
    P=<P1,!.
min_catena([_|R],L1,P1):-
    min_catena(R,L1,P1),!.

catena_conoscenza_da_percorrere(P1,P2,Catena):-
    setof(C,catena_conoscenza(P1,P2,C),ListaTutteCatene),
    listaPesiCatene(ListaTutteCatene,ListaPesi),
    min_catena(ListaPesi,Catena,_).
	

/*
INIZIO RISOLUZIONE PRIMO QUESITO
conoscenza(p1,p2,primo).
conoscenza(p1,p3,amico).
conoscenza(p1,p5,collega).
conoscenza(p2,p3,primo).
conoscenza(p2,p5,primo).
conoscenza(p3,p4,collega).
conoscenza(p4,p5,amico).

catena_conoscenza(P1,P2,[Catena]):-
    conoscenza(P1,P2,Catena).
catena_conoscenza(P1,P2,[E|R]):-
    conoscenza(P1,P3,E),
    catena_conoscenza(P3,P2,R).
FINE RISOLUZIONE PRIMO QUESITO

INIZIO RISOLUZIONE SECONDO QUESITO
peso_catena([],0).
peso_catena([A|R],N):-
    peso(A,N1),
    peso_catena(R,N2),
    N is N1 + N2.
listaPesiCatene([],[]).
listaPesiCatene([A|R1],[(A,B)|R2]):-
    peso_catena(A,B),
    listaPesiCatene(R1,R2).
min_catena([(L,P)],L,P).
min_catena([(L,P)|R],L,P):-
    min_catena(R,_,P1),
    P=<P1,!.
min_catena([_|R],L1,P1):-
    min_catena(R,L1,P1),!.
catena_conoscenza_da_percorrere(P1,P2,Catena):-
    setof(C,catena_conoscenza(P1,P2,C),ListaTutteCatene),
    listaPesiCatene(ListaTutteCatene,ListaPesi),
    min_catena(ListaPesi,Catena,_).
FINE RISOLUZIONE SECONDO QUESITO
*/