genitore(mario,giovanni).
genitore(mario,luca).
fratello(X,Y):-genitore(Z,Y),genitore(Z,X). 	
