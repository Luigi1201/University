minimize z:
	0.5*x['x1'] + 0.4*x['x2'] + 0.7*x['x3'];

subject to v['r1']:
	452*x['x1'] + 64*x['x2'] + 365*x['x3'] + x['x4'] = 600;

subject to v['r2']:
	452*x['x1'] + 64*x['x2'] + 365*x['x3'] + x['x5'] = 400;

subject to v['r3']:
	8*x['x1'] + 23*x['x3'] - x['x6'] = 10;

subject to v['r4']:
	47*x['x2'] + 18*x['x3'] - x['x7'] = 10;

subject to vx['x1']:
	x['x1'] >= 0;

subject to vx['x2']:
	x['x2'] >= 0;

subject to vx['x3']:
	x['x3'] >= 0;

subject to vx['x4']:
	x['x4'] >= 0;

subject to vx['x5']:
	x['x5'] >= 0;

subject to vx['x6']:
	x['x6'] >= 0;

subject to vx['x7']:
	x['x7'] >= 0;

