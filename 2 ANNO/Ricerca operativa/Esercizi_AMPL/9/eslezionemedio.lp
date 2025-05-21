minimize z:
	-3*x['x1'] + 4*x['x2'];

subject to vr1['r1']:
	x['x1'] + x['x2'] <= 4;

subject to vr2['r2']:
	2*x['x1'] + 3*x['x2'] >= 18;

subject to vx['x1']:
	x['x1'] >= 0;

subject to vx['x2']:
	x['x2'] >= 0;

