edge(a,b).
edge(b,c).
edge(c,d).
edge(a,k).
edge(k,e).
edge(k,c).

path(X,Y):-edge(X,Y).
path(X,Y):- path(X,Z),edge(Z,Y).

