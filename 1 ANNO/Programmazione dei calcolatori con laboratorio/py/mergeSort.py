# -*- coding: utf-8 -*-
"""
MERGE SORT
"""
def merge( a, lx, cx, rx ):
    '''
    Precondizione: a lista e a[lx:cx] e a[cx:rx] ordinate in modo non decrescente
    Modifica a fondendo le due sottoliste in modo che a[lx:rx] risulti ordinata
    
    Sia n = len(a), e k = rx-lx
    
    Costo: lineare in k
    '''
    i, j = lx, cx # indice in a[lx:cx] ed in a[cx:rx] rispettivamente
    c = [] # lista di output
    
    # Costo O(k) 
    while i < cx and j < rx:
        if a[i] < a[j]:
            c.append(a[i])
            i += 1
        else:
            c.append(a[j])
            j += 1
    
    # Costo O(k)
    c += a[i:cx] + a[j:rx]
    
    #a = a[:lx] + c + a[rx:] Costo lx + (rx-lx) + (n-rx) = O(n)

    # Costo O(k)
    for i in range(len(c)):
        a[lx+i] = c[i]
        
a = [10, 10, 10, 2, 4, 6, 0, 1, 5, 0, 0 ,0]
merge(a, 3, 6, 9)

def merge_sort(a, lx, rx):
    '''
    Precondizione: a una lista numerica
    Ordina a[lx:rx]
    '''
    
    if lx <= rx-2: # almeno due elementi in a[lx:rx]
        cx = (rx+lx)//2
        merge_sort(a, lx, cx)
        merge_sort(a, cx, rx)
        a = merge(a, lx, cx, rx)
        
a = [4,2,3,7,4,3,4,5,2,3,0,9,5,4,8]
n = len(a)
merge_sort(a, 0, n)
print(a)