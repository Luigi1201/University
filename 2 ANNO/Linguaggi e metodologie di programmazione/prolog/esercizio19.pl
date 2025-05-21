/*
17/04/2023

*/

:-dynamic appoggio/1.
appoggio([]).
tuttelesoluzioni(_):-
						p(A),
						appoggio(L),
						assert(appoggio([A|L])),
						retract(appoggio(L)),
						fail.
tuttelesoluzioni(L):-	appoggio(L1), 
						reverse(L1,L),
						retract(appoggio(L1)),
						assert(appoggio([])).
p(a).
p(b).
p(c).
p(c).
p(d).
						
/*
con p(a)
	p(b)
	p(c)
	p(c)
	p(d)
tuttelesoluzioni() è TRUE se L=[a,b,c,c,d]

?-tuttelesoluzioni(X).
prova ?-setof(k(A),p(A),L). per vedere funzionamento di setof
prova ?-bagof(k(A),p(A),L). per vedere funzionamento di bagof
*/
