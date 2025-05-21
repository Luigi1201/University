minimize z:
	-3*x['x1'] + 4*x['x2'];

subject to v1['r1']:
	x['x1'] + x['x2'] <= 4;

subject to v2['r2']:
	2*x['x1'] + 3*x['x2'] >= 18;

subject to vj1['x1']:
	x['x1'] >= 0;

subject to vj2['x2']:
	x['x2'] >= 0;

