minimize z:
	x['x1'] + 2*x['x2'] + 3*x['x3'] + 4*x['x4'] + 5*x['x5'];

subject to v1['r1']:
	x['x1'] + x['x2'] + x['x3'] + 3*x['x5'] <= 20;

subject to v1['r2']:
	3*x['x3'] + x['x5'] <= 26;

subject to v2['r3']:
	12*x['x1'] + x['x2'] + 5*x['x3'] + 4*x['x5'] >= 12;

subject to v_x['x1']:
	x['x1'] >= 0;

subject to v_x['x2']:
	x['x2'] >= 0;

subject to v_x['x3']:
	x['x3'] >= 0;

subject to v_x['x5']:
	x['x5'] >= 0;

subject to v_x4['x4']:
	x['x4'] = 0;

