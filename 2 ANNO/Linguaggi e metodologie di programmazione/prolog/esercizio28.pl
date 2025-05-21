/*
15/05/2023
collegato a esercizio27.pl
*/

mossa(-1) --> [down].
mossa(+1) --> [up].

seq(V) --> mossa(V).
seq(V) --> mossa(VM), seq(VS),{V is VM+VS}.



/*
 * dovrebbe riconoscere
 * (down|up)+  (down o app più volte sequenza infinita)
 *
 */