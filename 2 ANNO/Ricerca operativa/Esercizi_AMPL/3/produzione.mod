set PROD;
set RES;

param b{RES};
param p{PROD};
param a{RES,PROD};

var x{j in PROD}>=0;

maximize profit: sum{j in PROD} p[j]*x[j];

s.t. c_res{i in RES}: sum{j in PROD} a[i,j]*x[j] <= b[i];