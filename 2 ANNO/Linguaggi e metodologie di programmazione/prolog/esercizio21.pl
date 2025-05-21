/*
19/04/2023
SPIEGAZIONE CREAZIONE/MODIFICA OPERATORI
*/

/*
?- 3+4 = +(A,B).
A = 3,
B = 4.

?- 3 + 4 + 5 = +(A,B).
A = 3+4,
B = 5.

?- 3 + (4 + 5) = +(A,B).
A = 3,
B = 4+5.

?- 3+4*5 = +(A,*(B,C)).
A = 3,
B = 4,
C = 5.

?- 3+4*5 = +(*(B,C),A).
false.

C is +(4,5).
C = 9.

FAI ?-help(op) PER CAPIRE COME DEFINIRE UN OPERATORE op(+Precedence, +Type, :Name) 
*/


/*MODIFICA OPERATORE:*/
:-op(500,xfy,+).
/*
scambiato yfx con xfy, quindi se prima avevamo A = 3+4, B = 5 ora abbiamo A = 3, B = 4+5
*/

/*CREAZIONE OPERATORE*/
:-op(200,xfx,[loves,hates]).
mario loves maria.
mario hates what.
/*
?- mario hates what.
true.

?- mario hates maria.
false.

?- mario loves  maria.
true.
*/