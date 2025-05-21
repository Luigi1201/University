/*
min x1 + 2x2 + 3x3 +4x4 +5x5
	x1+x2+x3+3x5<=15
	3x3+x5<=21
	12x1+x2+5x3+4x5>=7
	x1,x2,x3,x5>=0
	x4=0
*/

set I1;
set I2;
set J1;
set J2;
set J;

param c{J};
param b1{I1};
param b2{I2};
param a1{I1,J};
param a2{I2,J};
param alfa;

var x{J}; #var J {j in J}>=0;

minimize z: sum{j in J} c[j]*x[j];

s.t. v1 {i in I1}: sum{j in J} a1[i,j]*x[j]<=b1[i]+alfa;
s.t. v2 {i in I2}: sum{j in J} a2[i,j]*x[j]>=b2[i]+alfa;
s.t. v_x {j in J1}: x[j]>=0;
s.t. v_x4 {j in J2}: x[j]==0;
