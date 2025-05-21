# -*- coding: utf-8 -*-
"""
La struttura dati SET
"""
#Creazione
a = { 2,3,1,5 }
b = { 0, 6, 3, 1}
c = set()   # insieme vuoto
"""Un set può contenere solo elementi di tipo non mutabile, quindi sono escluse le tuple e i set."""

#Inserimento
a.add(4)
b.add('python')

#Cancellazione
a.remove(3)

#Appartenenza
print(0 in a)
print(6 in b)

#Unione
u0 = a | b
u1 = a.union(b)

#Intersezione
i0 = a & b
i1 = a.intersection(b)

#Differenza
d0 = a-b
d1 = a.difference(b)

""" unione, intersezione e differenza restituiscono un nuovo insieme senza modificare quelli di partenza """

#Costo computazionale di alcune operazioni su set
"""
Sia n un intero e siano a e b siano due set di grandezza O(n) allora valgono i seguenti costi nel caso medio:

x in a ha costo O(1), ovvero costante
a | b costa O(n)
a & b costa O(n)
a - b costa O(n)
a.add(x) costa O(1)
a.remove(x) costa O(1)
"""