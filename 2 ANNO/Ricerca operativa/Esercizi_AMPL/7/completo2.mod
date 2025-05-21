/*
max 4x1 + 3x2 - x3 + 2x4 

soggetto a
- x1 + 2x2 + x3 - x4 >= 2 
2x1 - x2 + x3 - 5x4 <= -3 

x1, . . . , x4 >= 0.
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

maximize z: sum{j in J} c[j]*x[j];

s.t. v1 {i in I1}: sum{j in J} a1[i,j]*x[j]>=2;
s.t. v2 {i in I2}: sum{j in J} a2[i,j]*x[j]<=-3;
s.t. vx {j in J}: x[j]>=0;