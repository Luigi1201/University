minimize z:
	3*x['x1'] - 2*x['x2'];

subject to v['r1']:
	x['x1'] + x['x2'] <= 8;

subject to v['r2']:
	2*x['x1'] - x['x2'] <= 4;

subject to vx['x1']:
	x['x1'] >= 0;

subject to vx['x2']:
	x['x2'] >= 0;

