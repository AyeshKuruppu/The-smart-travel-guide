:- module(graph, [
    connected/3,
    available/3,
    travel_cost/2,
    path_cost/2,
    heuristic/3
]).

:- use_module('../knowledge_base/roads').
:- use_module('../knowledge_base/blocked').

connected(X, Y, D) :- road(X, Y, D) ; road(Y, X, D).

available(X, Y, D) :- 
    connected(X, Y, D), 
    \+ is_blocked(X, Y).

travel_cost(Distance, Cost) :- Cost is Distance * 100.

path_cost([_], 0).
path_cost([A, B|Rest], Total) :-
    available(A, B, D),
    path_cost([B|Rest], Rem),
    Total is D + Rem.

heuristic(Loc, Goal, H) :- estimate(Loc, Goal, H), !.
heuristic(_, _, 0).