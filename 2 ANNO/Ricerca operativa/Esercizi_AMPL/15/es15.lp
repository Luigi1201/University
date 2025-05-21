minimize z:
	2*x['x1'] + 4*x['x2'] + 2*x['x3'] - x['x4'];

subject to v1['r1']:
	3*x['x1'] + x['x2'] >= 2;

subject to v2['r2']:
	x['x2'] + 2*x['x3'] = 4;

subject to v3['r3']:
	x['x3'] + 4*x['x4'] <= 5;

subject to vx['x1']:
	x['x1'] >= 0;

subject to vx['x2']:
	x['x2'] >= 0;

subject to vx['x3']:
	x['x3'] >= 0;

subject to vx['x4']:
	x['x4'] >= 0;

