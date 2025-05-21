minimize z:
	3*x['x1'] + 4*x['x2'] - 2*x['x3'];

subject to v1['r1']:
	x['x1'] + 2*x['x2'] - x['x3'] >= 5;

subject to v2['r2']:
	2*x['x1'] + 4*x['x3'] = 12;

subject to v3['r3']:
	x['x1'] + x['x2'] + x['x3'] <= 15;

subject to vx12['x1']:
	x['x1'] >= 0;

subject to vx12['x2']:
	x['x2'] >= 0;

