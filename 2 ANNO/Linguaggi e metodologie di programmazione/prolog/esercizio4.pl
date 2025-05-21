appartiene(X,[X|_]).
appartiene(X,[_|T]):-appartiene(X,T).

/*

?-appartiene(x,L)
?-appartiene(x,[a,b,c,d])

*/