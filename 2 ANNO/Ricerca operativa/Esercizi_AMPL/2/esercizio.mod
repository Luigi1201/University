set J1;
set J2;
set J;
set I;

param alfa;
param c{J};
param b{I};
param a{I,J};

var x{J};

minimize z: sum{j in J} c[j]*x[j];

s.t. v1 {i in I}:sum{j in J} a[i,j]*x[j]<=b[i]+alfa;
s.t. vx1 {j in J1}:x[j]<=0;
s.t. vx2 {j in J2}: x[j]>=0;