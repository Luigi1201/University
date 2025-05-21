maximize z:
	4*x['x1'] + 3*x['x2'] - x['x3'] + 2*x['x4'];

subject to v1['r1']:
	-x['x1'] + 2*x['x2'] + x['x3'] - x['x4'] >= 2;

subject to v2['r2']:
	2*x['x1'] - x['x2'] + x['x3'] - 5*x['x4'] <= -3;

subject to vx['x1']:
	x['x1'] >= 0;

subject to vx['x2']:
	x['x2'] >= 0;

subject to vx['x3']:
	x['x3'] >= 0;

subject to vx['x4']:
	x['x4'] >= 0;

