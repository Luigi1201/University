maximize z:
	250*x['x1'] + 230*x['x2'] + 110*x['x3'] + 350*x['x4'];

subject to v['r1']:
	2*x['x1'] + 1.5*x['x2'] + 0.5*x['x3'] + 2.5*x['x4'] <= 100;

subject to v['r2']:
	0.5*x['x1'] + 0.25*x['x2'] + 0.25*x['x3'] + x['x4'] <= 50;

subject to noNeg['x1']:
	x['x1'] >= 0;

subject to noNeg['x2']:
	x['x2'] >= 0;

subject to noNeg['x3']:
	x['x3'] >= 0;

subject to noNeg['x4']:
	x['x4'] >= 0;

