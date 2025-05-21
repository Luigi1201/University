append([],L,L).
append([Hx|Tx],L,[Hx|Tz]):-append(Tx,L,Tz).

/*
	z è composta dalla concatenazione delle liste X,L 
	
	?- append([1,2,3],[4,5,6],[1,2,3,4,5,6]) deve restituire true
	?- append([1,3],[4,5],[1,2,3,4,5,6]) deve restituire false
	
	append([],L,L). è il caso base
	append([Hx|Tx],L,[Hx|Tz]):-append(Tx,L,Tz). con il caso base si parla di induzione strutturale
	

*/