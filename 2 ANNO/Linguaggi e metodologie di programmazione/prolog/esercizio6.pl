
append([],L,L).
append([HX|TX],L,[HX|TZ]):-append(TX,L,TZ).

rivoltata([],[]).
rivoltata([HX|TX],R):- append(TR,[HX], R),rivoltata(TX,TR).

/*
	predicato rivoltata vero se L è la lista rivoltata di RL
	rivoltata(L,RL) 
	rivoltata è una proprietà
	rivoltata è vera se il primo elemento di L e l'ultimo elemento di RL coincidono e se RLR corrisponde con L

	?-rivoltata([1,2],[2,1]) true
*/