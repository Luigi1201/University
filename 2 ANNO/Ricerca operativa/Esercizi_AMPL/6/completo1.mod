/*
min 3x1 + 4x2 -2x3

soggetto a
x1 + 2x2 -x3 >= 5
2x1 + 4x3 = 12
x1 + x2 + x3 <= 15

x1, x2 >= 0, x3 libera

SOLUZIONE 1:
set I;
set I1;
set I2;
set I3;

set J;
set J12;

param b{I};
param c{J};
param a{I,J};

var x{J};

minimize z: sum{j in J} c[j]*x[j];

s.t. v1 {i in I1} : sum {j in J} a[i,j]*x[j]>=b[i];
s.t. v2 {i in I2} : sum {j in J} a[i,j]*x[j]=b[i];
s.t. v3 {i in I3} : sum {j in J} a[i,j]*x[j]<=b[i];

s.t. vx12 {j in J12}: x[j]>=0;

SOLUZIONE2:
*/
set I;
set I1;
set I2;
set I3;

set J;
set J12;

param b1{I1};
param b2{I2};
param b3{I3};

param c{J};

param a1{I1,J};
param a2{I2,J};
param a3{I3,J};

var x{J};

minimize z: sum{j in J} c[j]*x[j];

s.t. v1 {i in I1} : sum {j in J} a1[i,j]*x[j]>=b1[i];
s.t. v2 {i in I2} : sum {j in J} a2[i,j]*x[j]=b2[i];
s.t. v3 {i in I3} : sum {j in J} a3[i,j]*x[j]<=b3[i];

s.t. vx12 {j in J12}: x[j]>=0;
