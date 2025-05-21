/*
minimize 0.3x1 + 0.2x2
		x1+x2 <= 3
		x1+x2 = 1.8;
		x1 >= 0.5;
		x2 >= 0.5;
		x1 <= 1.5;
		x2 <= 1.5;
*/

set BUDGET_MAX; 	#I1 <=
set BUDGET_MIN;		#I2 >=
set BUDGET_EQ;		#I3 =
set INVESTIMENTO; 	#J

param b1{BUDGET_MAX};
param b2{BUDGET_MIN};
param b3{BUDGET_EQ};

param c{INVESTIMENTO};

param a1{BUDGET_MAX,INVESTIMENTO};
param a2{BUDGET_MIN,INVESTIMENTO};
param a3{BUDGET_EQ,INVESTIMENTO};

var x{INVESTIMENTO};

minimize investimento_con_rischio_minore : sum{j in INVESTIMENTO} c[j]*x[j];

s.t. vmax {i in BUDGET_MAX}: sum{j in INVESTIMENTO} a1[i,j]*x[j]<=b1[i];
s.t. vmin {i in BUDGET_MIN}: sum{j in INVESTIMENTO} a2[i,j]*x[j]>=b2[i];
s.t. v_eq {i in BUDGET_EQ}: sum{j in INVESTIMENTO} a3[i,j]*x[j]==b3[i];