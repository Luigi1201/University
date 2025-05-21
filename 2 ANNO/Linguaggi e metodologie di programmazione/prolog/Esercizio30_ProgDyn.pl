/*
22/05/2023 - ASSENTE
*/

/*Programmazione dinamica*/

/*Fibonacci f(n)=f(n-1)+f(n-2)
 * 
 * f(0) = 1
 * f(1) = 1
 * */

:- dynamic f/3.
f(0,1,0):- !.
f(1,1,0):- !.

f(N,R,K):- % N numero in input, R numero di fib. corrisp., K num. di computazioni
    N>1,
    Nmeno1 is N-1,
    Nmeno2 is N-2,
    f(Nmeno1,Rmeno1,K1),
    f(Nmeno2,Rmeno2,K2),
    R is Rmeno1+Rmeno2,
    K is K1+K2+1,
    asserta(f(N,R,0):-!),!. /*asserisce in testa*/
    

/*Se vai male ti fa queste domande e potresti salvarti*/

/*Domande salva esame: 
 * faccia una reverse
 * faccia una permutazione
 * domande del genere
 * faccia una member	*/

/*Esercizi d'esame: 
 * Problema con grafi
 * Unifcazione
 * Grammatiche*/


/*
Ha fatto un esempio di programmazione dinamica usando prolog e l algoritmo di Fibonacci come esercizio di prova. In sostanza ha usano la parola chiave dynamic che aveva usato 
anche con l esercizio sul fail (se mi ricordo bene, in caso qualcuno mi corregga). Ovviamente l' ha fatto di nuovo in classe sul momento quindi ci ha perso un 30 minuti su quello.
Cmq poi ha concluso la lezione rispiegandoci l algoritmo permutation e rispondendo a qualche altra domanda
*/