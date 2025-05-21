set I; #prodotti
set J; #risorse

param c{J};
param a{I,J};
param b{I};
param alfa;

var x{J}>=0;

maximize z: sum{j in J} c[j]*x[j];

s.t. v {i in I} : sum{j in J} a[i,j]*x[j]<=b[i]; 
s.t. noNeg {j in J}: x[j]>=0;