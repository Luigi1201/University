# -*- coding: utf-8 -*-
"""
Created on Sun Dec  5 13:56:40 2021

@author: 39334
"""
#BUBBLE SORT BASE
def bubble_sort( a ):
    '''
    pre: a è una lista di numeri
    ordina la lista dall'elemento più piccolo a quello più grande
    '''
    n = len(a)
    ordinata = False
    num_scansioni = 0 # numero di scansioni (esecuzioni for) già eseguite
    while not ordinata:
        ordinata = True
        for i in range(n-1-num_scansioni): # ad ogni iterazione il numero di coppie da
                                            # analizzare diminuisce di 1
            # confrontiamo l'elemento in posizione i e i+1
            if a[i] > a[i+1]:
                # scambio gli elementi, non posso dire che la lista è ordinata
                a[i], a[i+1] = a[i+1], a[i]
                ordinata = False
        num_scansioni += 1
        
b = [1,3,1,8,1,2,3]
bubble_sort(b)
print(b)

#BUBBLE SORT COMPLETO
def bubble_sort( a, k = lambda x: x, reverse = False):
    '''
    pre: a è una lista
    ordina gli elementi della lista in modo crescente rispetto ai valodi restituiti 
        dalla funzione k. Ovvero dopo l'esecuzione della funzine se
        a = [a_0, a_1,... a_n] allora k(a_i) <= k(a_i+1) per tutti gli i.
        Di default k è la funzione identità 
        Se reverse è True l'ordinemanto è invertito, di default vale False
    '''
    
    n = len(a)
    ordinata = False
    num_scansioni = 0 # numero di scansioni (esecuzioni for) già eseguite
    while not ordinata:
        ordinata = True
        for i in range(n-1-num_scansioni): # ad ogni iterazione il numero di coppie da
                                            # analizzare diminuisce di 1
            # confrontiamo l'elemento in posizione i e i+1
            if (reverse == False and k(a[i]) > k(a[i+1]) ) \
                or ( reverse == True and k(a[i]) < k(a[i+1]) ):
                # scambio gli elementi, non posso dire che la lista è ordinata
                a[i], a[i+1] = a[i+1], a[i]
                ordinata = False
        num_scansioni += 1
        
a = ['zero', 'uno', 'due', 'tre', 'quattro']
bubble_sort(a, k = len, reverse = True) # ordinamento per lunghezze crescenti
print(a)
['quattro', 'zero', 'uno', 'due', 'tre']
a = ['zero', 'uno', 'due', 'tre', 'quattro']
bubble_sort(a, k = len) # ordinamento per lunghezze crescenti
print(a)
['uno', 'due', 'tre', 'zero', 'quattro']
a = ['zero', (1,), 'due', 'tre', [0,0,0,0,0,0,0,0,0], 'quattro']
bubble_sort(a, k = len) # ordinamento per lunghezze crescenti
print(a)