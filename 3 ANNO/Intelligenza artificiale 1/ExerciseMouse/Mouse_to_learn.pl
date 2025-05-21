
/* Cheese Problem IN Prolog */

/* Map 3x3, coordinates X (row) and Y (column)
   Chese Position: predicate 
     cheese(X,Y)
	 
   Mouse Position: predicate
     mouse(X,Y)
	 

   State Declaration is a list
   [cheese(XC,YC), mouse(XM, YM)]
   and at every time stamp is the current state of the environment
   
   There is only one cheese is implied by the fact that there is only ONE cheese(X,Y) predicate in the state delaration.
   
   Goal:
   The mouse can stop when there is no further cheese that is falling down
   
   General Cyle */
:-dynamic example/4.

run_problem_instance :-
		random_pos_the_cheese(YC),   /* if YC==0 then there is no further cheese and the run stop 
		                               At every first move the chese start at XC=3, i.e. the roof */
		random_pose_the_mouse(YM), /* At every first move YM<>0 (i.e. there is always a mouse)
		                              and XM = 1 */
		start_msg([cheese(3,YC), mouse(1,YM)]),
		solve([cheese(3,YC), mouse(1,YM)], 0, Feed),
		write("\n Task carried out: !!"),nl,
		write("The mouse has eaten "), write(Feed), write(" cheese bits!!\n"),nl.
		
solve([cheese(XC,YC), mouse(_,_)], CurrFeed, CurrFeed) :-
        check_goal_satisfaction(cheese(XC,YC)),
		!.
solve([cheese(XC,YC), mouse(XM, YM)], CurrFeed, AllFeeds) :-
		upd_message( [cheese(XC,YC), mouse(XM, YM)] ),
		decide_rule( [cheese(XC,YC), mouse(XM, YM)], CurrFeed, Rule),
		storerules([cheese(XC,YC), mouse(XM, YM)], CurrFeed, Rule),
		apply_action(Rule, [cheese(XC,YC), mouse(XM, YM)], CurrFeed, NewState, NewFeed),
		write(' ====== > Action:  |'), write(Rule),write('|'), nl,nl,
        env_step(NewState, NextState),
		!,
		solve( NextState, NewFeed, AllFeeds).

start_msg([cheese(3,YC), mouse(1,YM)]) :-
		write("--------------------------- Start from -------------------------------"),nl,
		write("State: "), write(cheese(3, YC)), write(" and "), write(mouse(1,YM) ),
		nl.

upd_message( [cheese(XC,YC), mouse(XM, YM)] ) :-
		nl, write('Acting on a state such that:'),nl,
		write('The mouse is in '), write(mouse(XM,YM)), write(' and the cheese in '), write(cheese(XC, YC)),nl.
        

random_pos_the_cheese(YC) :-  /* if YC==0 then there is no further cheese and the run stop 
		                               At every first move the chese start at XC=3, i.e. the roof */
							YC is random(4).
        

random_pose_the_mouse(YM) :- /* At every first move YM<>0 (i.e. there is always a mouse)
		                              and XM = 1 */	
							YM is random(2)+1.
check_goal_satisfaction(cheese(_,0)) :- !. /* No cheese left to eat */


env_step([cheese(1, _), mouse(XM, YM)], [cheese(3, NewYC), mouse(XM, YM)]) :- /* generate a new starting position at column NewYC */
	random_pos_the_cheese(NewYC),
	nl,
	write('New cheese bit falling from position: '), print((3, NewYC)), write(' >>> ') /*, 
	readln(_) */.

env_step([cheese(XC, YC), mouse(XM, YM)], [cheese(NewXC, YC), mouse(XM, YM)]) :- /* falling down ...*/
	XC > 1,
	NewXC is XC-1 .

/* RANDOM, i.e. Non intelligent CHOICE 
decide_rule( _, _, Action) :-
	N is random(4)+1,
	select_ith(N, [eat,left,moveleft,moveright], Action).
******************************************* */
decide_rule( [cheese(1, Y), mouse(1,Y)], _, eat) :-
	!.
decide_rule( [cheese(_anyXC, Y), mouse(_anyXM, Y)], _, stand) :-
	\+(_anyXC == _anyXM),
	!.
decide_rule( [cheese(_, NewYC), mouse(_, YM)], _, moveright) :-
    NewYC > YM,
	!.
decide_rule( [cheese(_, NewYC), mouse(_, YM)], _, moveleft) :-
    NewYC < YM,
	!.
decide_rule( _anyState, _anyFeed, _, stand) :-
	!.

/* Weka version 
   Root */
weka_decide_rule([cheese(CheesePosX, _), mouse(_, _)], _, eat) :-
	CheesePosX =< 1,
	!.
weka_decide_rule([cheese(CheesePosX, CheesePosY), mouse(_, MousePosY)], _, stand) :-
	CheesePosX > 1,
	CheesePosY =< 1,
	MousePosY =< 1,	
	!.
weka_decide_rule([cheese(CheesePosX, CheesePosY), mouse(_, MousePosY)], _, moveleft) :-
	CheesePosX > 1,
	CheesePosY =< 1,
	MousePosY == 2,	
	!.
weka_decide_rule([cheese(CheesePosX, CheesePosY), mouse(_, MousePosY)], _, moveright) :-
	CheesePosX > 1,
	CheesePosY == 2,
	MousePosY =< 1,	
	!.
weka_decide_rule([cheese(CheesePosX, CheesePosY), mouse(_, MousePosY)], _, stand) :-
	CheesePosX > 1,
	CheesePosY == 2,
	MousePosY == 2,	
	!.
weka_decide_rule([cheese(CheesePosX, CheesePosY), mouse(_, MousePosY)], _, moveleft) :-
	CheesePosX > 1,
	CheesePosY =< 2,
	MousePosY > 2,	
	!.
weka_decide_rule([cheese(CheesePosX, CheesePosY), mouse(_, MousePosY)], _, moveright) :-
	CheesePosX > 1,
	CheesePosY > 2, /* == 3 */
	MousePosY =< 2,	
	!.
weka_decide_rule([cheese(CheesePosX, CheesePosY), mouse(_, MousePosY)], _, stand) :-
	CheesePosX > 1,
	CheesePosY > 2, /* == 3 */
	MousePosY > 2,	/* == 3 */
	!.


apply_action(eat, [cheese(1, YC), mouse(1, YC)], CurrFeed, 
   [cheese(1, YC), mouse(1, YC)], NewFeed) :- 
     NewFeed is CurrFeed+1.
apply_action(stand, [cheese(NewXC, NewYC), mouse(XM, YM)], CurrFeed, 
   [cheese(NewXC, NewYC), mouse(XM, YM)], CurrFeed) :- 
     !.
apply_action(moveright, [cheese(NewXC, NewYC), mouse(XM, YM)], CurrFeed, 
	[cheese(NewXC, NewYC), mouse(XM, NewYM)], CurrFeed) :- 
	  NewYM is YM+1,!.
apply_action(moveleft, [cheese(NewXC, NewYC), mouse(XM, YM)], CurrFeed, 
	[cheese(NewXC, NewYC), mouse(XM, NewYM)], CurrFeed) :- 
	  NewYM is YM-1,!.

storerules([cheese(XC,YC), mouse(XM, YM)], CurrFeed, Rule) :-
	example(N, _, _, _),
	NewN is N+1,
	asserta(example(NewN, [cheese(XC,YC), mouse(XM, YM)], CurrFeed, Rule)),
	!.
storerules([cheese(XC,YC), mouse(XM, YM)], CurrFeed, Rule) :-
    asserta(example(1, [cheese(XC,YC), mouse(XM, YM)], CurrFeed, Rule)),
	!.

select_ith(1,[Action|_], Action) :- 
        !.
select_ith(N,[_|Rest], Action) :-
		M is N-1,
		select_ith(M,Rest,Action).
