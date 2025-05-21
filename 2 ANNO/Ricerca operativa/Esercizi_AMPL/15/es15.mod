/*
Si consideri il seguente problema di programmazione lineare
min z = 2x1 + 4x2 + 2x3 - x4
3x1 + x2 >= 2
x2 + 2x3 = 4
x3 + 4x4 <= 5
xi >= 0
Dimostrare che la soluzione ottima del problema `e (2/3,0,2,3/4). OK GIUSTO :)
*/

set I1;
set I2;
set I3;
set J;

param b1{I1};
param b2{I2};
param b3{I3};
param c{J};
param a1{I1,J};
param a2{I2,J};
param a3{I3,J};

var x{j in J}>=0;

minimize z: sum{j in J} c[j]*x[j];

s.t. v1 {i in I1}: sum{j in J} a1[i,j]*x[j]>=b1[i];
s.t. v2 {i in I2}: sum{j in J} a2[i,j]*x[j]==b2[i];
s.t. v3 {i in I3}: sum{j in J} a3[i,j]*x[j]<=b3[i];
s.t. vx {j in J}: x[j]>=0;