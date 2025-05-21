# -*- coding: utf-8 -*-
"""
COSTI COMPUTAZIONALI
"""

#Costo computazionale di alcune operazioni su lista
Sia n un intero e sia a una lista di grandezza O(n) allora valgono i seguenti costi:

x in a ha costo O(n) nel caso peggiore
a.append(x) ha costo O(1) (costante) nel caso medio.
lo slicing costa O(m) dove m è la dimensione della sottolista
min(a) e max(a) ha costo O(n)
len(a) ha costo O(1)
l'indexing ha costo O(1)
la cancellazione di un elemento, del a[i] ha costo O(n) nel caso peggiore


#Costo computazionale di alcune operazioni su set
Sia n un intero e siano a e b siano due set di grandezza O(n) allora valgono i seguenti costi nel caso medio:

x in a ha costo O(1), ovvero costante
a | b costa O(n)
a & b costa O(n)
a - b costa O(n)
a.add(x) costa O(1)
a.remove(x) costa O(1)


#Costo computazionale di alcune operazioni su dict
Se d ha n elementi, le operazioni di creazione del dizionari vuoto, inserimento, aggiornamento, lettura, 
appartenenza e cancellazione richiedono un costo O(1) in media.
L'iterazione ed i metodi che restituiscono la sequenza di chiave, valori o elementi hanno costo O(n)