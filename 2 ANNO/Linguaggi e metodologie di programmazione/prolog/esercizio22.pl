/*
ESERCIZIO:DEFINIRE INSIEME OPERATORI CHE CI PERMETTONO DI INTERPRETARE LE FRASI.
*/

:-op(200,xfx,[mangia,porta]).
:-op(100,xfx,con).
:-op(150,xfx,di).

mario mangia mela di gianni con coltello.
mario mangia pera di michele.
mario mangia zucchina.
mario mangia panino con mortadella.

mario porta borsa di pelle di leopardo.

/*
ESEMPIO QUERY

?- mario mangia mela di Chi con Cosa.
Chi = gianni,
Cosa = coltello.

?- mario mangia mela di gianni con coltello.
true.
*/