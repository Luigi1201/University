/*
15/05/2023

OB: parser top down in prolog

A --> BC
C --> DE
B --> a
C --> d
E --> e
*/

%A --> BC
'A'(SDR,RSDR):-
    'B'(SDR,RSDRB),
    'C'(RSDRB,RSDR).
'A' --> 'B','C','D'.





%C --> DE
'C'(SDR,RSDR):-
    'D'(SDR,RSDRB),
    'E'(RSDRB,RSDR).


%B --> a
'B'([a|R],R).

%C --> d
'C'([d|R],R).

%E --> e
'E'([e|R],R).

'E' --> [j].


/*
?- 'D'([d]),[]).	true 
?- 'A'([a,d],[]).	true
?- listing('A').
?- seq([down,up],[]).
?- listing(mossa).
?- seq([down,up,down],[]).
*/