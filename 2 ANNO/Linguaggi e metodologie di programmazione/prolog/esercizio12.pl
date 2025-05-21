/*
VERIFICARE IL FUNZIONAMENTO, NON è DETTO CHE FUNZIONA 
*/

t(0,0,0,0).
t(0,1,1,0).
t(1,0,1,0).
t(1,1,1,0).
t(0,2,2,0).
t(1,2,0,1).
t(2,2,1,1).
t(2,0,2,0).
t(2,1,0,1).

/*
 * t: le prime due cifre sono le cifre da sommare, la terza cifra è il risultato e 
 * 		l'ultima cifra è il riporto
*/
somma([],[],[]).
somma([],R,R).
somma(R,[],R).
somma([A1|AR],[B1,BR],[C1,CR]):-t(A1,B1,C1,R),somma(AR,[R],AR1),somma(AR1,BR,CR).

/* 
 * AR,BR,CR: sono i resti delle liste con t(A1,B1,C1,R), R è il riporto
*/