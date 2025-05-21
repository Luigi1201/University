minimize z:
	13*x['x1'] + 9*x['x2'] + 16*x['x3'];

subject to v['r1']:
	3*x['x1'] + 2*x['x2'] + 2*x['x3'] >= 60;

subject to v['r2']:
	x['x1'] + 2*x['x2'] + x['x3'] >= 40;

subject to vx['x1']:
	x['x1'] >= 0;

subject to vx['x2']:
	x['x2'] >= 0;

subject to vx['x3']:
	x['x3'] >= 0;

