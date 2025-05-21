minimize z:
	7*x['x1'] + 10*x['x2'];

subject to v1['r1']:
	2*x['x1'] - 4*x['x2'] + x['x3'] <= 10;

subject to v2['r2']:
	x['x1'] + 2*x['x2'] - x['x3'] >= 5;

subject to v2['r3']:
	x['x1'] - 3*x['x2'] + 3*x['x3'] >= 4;

subject to vx['x1']:
	x['x1'] >= 0;

subject to vx['x2']:
	x['x2'] >= 0;

subject to vx['x3']:
	x['x3'] >= 0;

