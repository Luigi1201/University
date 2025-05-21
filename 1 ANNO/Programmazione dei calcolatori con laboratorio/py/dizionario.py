# -*- coding: utf-8 -*-
"""
DIZIONARI
"""

#Creazione di un dizionario vuoto
d = {}

#Inserimento
d['k0'] = 3.14
d[1000] = [2, 1]
d[(1,2)] = 'ciao'
d['sette'] = 7

#Aggiornamento
d['k0'] = 'un nuovo valore'

#Lettura
print(d['sette'])

#Appartenenza
print('k0' in d)
print(3 in d)

#Cancellazione
del d['k0']

#Iterazione
for x in d:
    print(x, '--->' ,d[x])
    
#Alcuni metodi
print('Chiavi: ', d.keys())
print('Valori: ', d.values())
print('Coppie: ', d.items())

#Costi
"""
Se d ha n elementi, le operazioni di creazione del dizionari vuoto, inserimento, aggiornamento, lettura, 
appartenenza e cancellazione richiedono un costo O(1) in media.
L'iterazione ed i metodi che restituiscono la sequenza di chiave, valori o elementi hanno costo O(n)
"""