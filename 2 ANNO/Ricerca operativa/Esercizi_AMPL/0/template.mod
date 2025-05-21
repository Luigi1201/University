set I;
set J;

param b{I};		#b1..bn con n=nr di righe
param c{J};	
param a{I,J}; 	#a1..an con n=nr di righe 
param alfa;

var x{J}; 		#var x{j in J}>=0;

minimize z: sum{j in J} c[j]*x[j]; 				# maximize z: sum{j in J} c[j]*x[j]; 

s.t. v {i in I}: sum{j in J} a[i,j]*x[j]<=b[i]; #v1..vn con n=nr di righe (a1..an & b1..bn)
s.t. vx {j in J}: x[j]>=0;						#vx1..vxn con n tipi di vincolo