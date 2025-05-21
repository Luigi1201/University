/*
min z = 7x1 + 10x2
2x1 - 4x2 + x3 <= 10
x1 + 2x2 - x3 >= 5
x1 - 3x2 + 3x3 >= 4
xj >= 0
*/

set I1;
set I2;
set J;

param b1{I1};
param b2{I2};
param c{J};
param a1{I1,J};
param a2{I2,J};  

var x{J};

minimize z: sum{j in J} c[j]*x[j];

s.t. v1 {i in I1}: sum{j in J} a1[i,j]*x[j]<=b1[i];
s.t. v2 {i in I2}: sum{j in J} a2[i,j]*x[j]>=b2[i];
s.t. vx {j in J}: x[j]>=0;