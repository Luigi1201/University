/*
8/05/2023
ALGORITMO PER GRAFO (USATO CONCETTO DI FRONTIERA)
*/

edge(a,b).
edge(a,c).
edge(c,d).
edge(c,k).
edge(b,k).
edge(k,n).

prossimaFrontieraDaNodo(N, NF):-
	edge(N,_),!,
	setof(NN,edge(N,NN),NF).
	
prossimaFrontieraDaNodo(N, []).

prossimaFrontiera([],[]).
prossimaFrontiera([Node|RestoFrontiera],NuovaFrontiera):-
	prossimaFrontieraDaNodo(Node,Node_NF),
	prossimaFrontiera(RestoFrontiera,NF_RestoFrontiera),
	union(Node_NF,NF_RestoFrontiera,NuovaFrontiera).

path(A,B):-
	futuraFrontiera([A],_,B).

futuraFrontiera(F,FF,G):-
	prossimaFrontiera(F,FF),
	member(G,FF).
futuraFrontiera(F,FF,G):-
	prossimaFrontiera(F,FFi),
	\+FFi=[],
	futuraFrontiera(FFi,FF,G).
	
	
	
/*
QUERY
?- listing(edge).
?- prossimaFrontieraDaNodo(c,L).
?- prossimaFrontiera((C),L).
?- path(a,k).
*/