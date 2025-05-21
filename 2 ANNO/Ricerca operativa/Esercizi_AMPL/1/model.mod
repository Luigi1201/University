set I1;
set I2;
set I;
set J;

param c{J};
param b{I};
param a{I,J};

var x{J}>=0;

minimize z:sum{j in J} c[j]*x[j];

s.t. v{i in I1}:sum{j in J} a[i,j]*x[i]=b[i];
s.t. v{i in I2]:sum{j in J} a[i,j]*x[j]<=b[i];
