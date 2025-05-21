aula(n1, 220).
aula(n2, 180).
docente(rossi, 5467).
docente(bianchi, 5687).
corso(geometria, rossi).
corso(algebra, bianchi).
orario(geometria, lun, 1, n8).
orario(geometria, mer, 4, n2).
orario(algebra, ven, 7, v1).
prerequisito('analisi 1', 'analisi 2').
prerequisito('calcolatori A', 'calcolatori B').
prerequisito('analisi 2', 'analisi 3').

docenteOccupato(D, G):-
    corso(C,D),
    orario(C,G,_,_).
%docente D occupato se ha almeno un’ora di lezione il giorno G;

docenteLibero(D, G):-
    not(docenteOccupato(D, G)).
%in cui il docente D non ha lezione il giorno G;

precedente(P,C):-
    prerequisito(P,C).
precedente(P, C):- 
    prerequisito(P,Z),
    precedente(Z,C).
%in cui P è un corso (direttamente o indirettamente) precedente al corso C.