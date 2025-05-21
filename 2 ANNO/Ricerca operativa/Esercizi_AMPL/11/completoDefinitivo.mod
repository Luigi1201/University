/*
min 2x1 + x2 + 3x4 - x5 + 4x6 + x7 + x8
s.t.
 x1 - x2 – x3 + x8  <= 80
 x4 + x5 + x6 - x7 <= 60
 x1 + x4  >= 60
 x2 + x5  = 40
 x3 + x6 >= 20
x1 x2, x4, x6, x7, x8  >= 0;   x5 <= 0, x3 libero; 

*/
set J1;
set J2;
set J;
set I1;
set I2;
set I3;

param alfa;
param b1{I1};
param b2{I2};		#c'è un bn per ogni In
param b3{I3};
param c{J};
param a1{I1,J};
param a2{I2,J};		#c'è un an per ogni In
param a3{I3,J};

var x{J};

minimize z: sum{j in J} c[j]*x[j];

s.t. v1 {i in I1}: sum{j in J} a1[i,j]*x[j]<=b1[i];
s.t. v2 {i in I2}: sum{j in J} a2[i,j]*x[j]>=b2[i];		#c'è un vincolo per ogni an bn
s.t. v3 {i in I3}: sum{j in J} a3[i,j]*x[j]==b3[i];
s.t. vx {j in J1}: x[j]>=0;
s.t. vx5 {j in J2}: x[j]<=0;