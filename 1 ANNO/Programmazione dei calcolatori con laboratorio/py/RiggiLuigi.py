# -*- coding: utf-8 -*-
"""
Created on Wed Jun 22 14:52:11 2022

@author: 39334
"""

#SOLUZIONE1
stringa=")-:))-"

def sort_by_occurences(stringa):
    d={}
    for c in stringa:                           #O(len(str))
        if c not in d:
            d[c]=1
        elif c in d:
            d[c]+=1
    maggiore=0                                      #+
    lettera=""
    newStr=str();
    i=0
    while i<len(d):                             #O(len(d))^2
        for k in d:
            if maggiore>=d[k]:
                maggiore=d[k]
                lettera=k;
        newStr=newStr+lettera
        d[lettera]=len(stringa)+1
        maggiore=len(stringa)+1
        i+=1
    return newStr;

print(sort_by_occurences(stringa));

#SOLUZIONE2
"""
stringa=")-:))-"

def sort_by_occurences(stringa):
    d={}
    for c in stringa:                               #O(len(str))
        if c not in d:
            d[c]=1
        elif c in d:
            d[c]+=1
    valori=list()
    for k in d:                                     #O(len(d))
        valori.append(d.get(k))
    valori=sorted(valori)                           #O(costo sorted())
    new_str=str()
    i=0
    while i<len(valori):                            #O(len(d))^2
        for k in d:
            if d[k]==valori[i]:
                new_str+=k
        i+=1
    return new_str
    
print(sort_by_occurences(stringa))
"""