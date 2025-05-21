minimize investimento_con_rischio_minore:
	0.3*x['x1'] + 0.2*x['x2'];

subject to vmax['r1']:
	x['x1'] + x['x2'] <= 3;

subject to vmax['r5']:
	x['x1'] <= 1.5;

subject to vmax['r6']:
	x['x2'] <= 1.5;

subject to vmin['r3']:
	x['x1'] >= 0.5;

subject to vmin['r4']:
	x['x2'] >= 0.5;

subject to v_eq['r2']:
	x['x1'] + x['x2'] = 1.8;

