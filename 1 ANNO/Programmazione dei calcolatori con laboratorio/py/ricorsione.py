# -*- coding: utf-8 -*-
"""
RICORSIONE
"""
#Esempio di ricorsione
def f(n):

    if n == 1:
        r = 1
    else:
        r = n + f(n-1)
        
    return r
 
c = f(3)
print(c)


#Funzione che restituisce True se e solo se la stringa in input è palindroma.
def pal_ric( a ):
    if len(a) in (0, 1):
        return True
    # len(a) >= 2
    return  (a[0] == a[-1]) and pal_ric(a[1:-1])
print(pal_ric('abcdcba'))


#Scrivere una funzione, chiamata conta_elem_tna(), che prende in input una tna e restituisce il numero totale di float ed int dentro la tna.
def conta_elem_tna( t ):
    '''
        Precondizione: t è una tna
        Restituisce il numero di elementi numerici di t
    '''
    if type(t) in (float, int): # t è un numero
        return 1
    else:
        c = 0
        for x in t:
            c += conta_elem_tna( x )
        return c
t = ( 3.14, (2,3), (2.71, (7, 5)), 9, (12, ( 4, )) )
print(conta_elem_tna(t))