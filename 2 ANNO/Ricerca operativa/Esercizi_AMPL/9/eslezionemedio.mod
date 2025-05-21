set I1;
set I2;
set I;
set J;

param b{I};
param c{J};
param a{I,J};
param alfa;

var x{J};

minimize z: sum{j in J} c[j]*x[j];

s.t. vr1 {i in I1}: sum{j in J} a[i,j]*x[j]<=b[i];
s.t. vr2 {i in I2}: sum{j in J} a[i,j]*x[j]>=b[i];
s.t. vx {j in J}: x[j]>=0;