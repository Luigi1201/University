set I;
set J;

param b{I};
param c{J};
param a{I,J};

var x{J};

minimize z: sum{j in J} c[j]*x[j];

s.t. v {i in I}: sum{j in J} a[i,j]*x[j]<=b[i];
s.t. vx {j in J}: x[j]>=0;