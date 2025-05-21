word(a,c,a,s).
word(i,n,e,r).
word(r,m,o,r).
word(s,r,r).
word(a,i,r).
word(c,n,m).
word(a,e,o).

schema(A1,A3,A4,C1,C3,C4,D1,D3,D4,E1,E3,E4):-
	word(A1,A3,A4),
	word(C1,C3,C4),
	word(D1,D3,D4),
	word(E1,E3,E4),
	word(A1,C1,D1,E1),
	word(A3,C3,D3,E3),
	word(A4,C4,D4,E4).

/*

?- schema(A1,A3,A4,C1,C3,C4,D1,D3,D4,E1,E3,E4)

*/