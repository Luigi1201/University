see(a,2,5).
see(d,5,5).
see(e,5,2).

on(a,b).
on(b,c).
on(c,table).
on(d,table).
on(e,table).

z(Blocco,0):-
	on(Blocco,table).
z(Blocco,Z):-
	on(Blocco,AltroBlocco),
	z(AltroBlocco,Zaltro),
	Z is Zaltro+1.

xy(B,X,Y):-
	see(B,X,Y).
xy(B,X,Y):-
	on(B0,B),
	xy(B0,X,Y).
	
sopra(B1,B2):-
	on(B1,B2).
sopra(B1,B2):-
	on(B1,B),
	sopra(B,B2).