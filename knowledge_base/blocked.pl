:- module(blocked, [
    blocked_road/2,
    is_blocked/2,
    block_road/2,
    unblock_road/2,
    unblock_all_roads/0
]).

:- dynamic blocked_road/2.


/* Blocked paths*/
blocked_road(colombo, kegalle).
blocked_road(kandy, badulla).



is_blocked(X, Y) :- blocked_road(X, Y) ; blocked_road(Y, X).

block_road(X, Y) :-
    is_blocked(X, Y),
    format('~n[!] ALREADY BLOCKED: ~w <-> ~w~n', [X, Y]), !.
block_road(X, Y) :-
    assertz(blocked_road(X, Y)),
    format('~n[#] ROAD BLOCKED: ~w <-> ~w~n', [X, Y]).

unblock_road(X, Y) :-
    (retract(blocked_road(X, Y)) ; retract(blocked_road(Y, X))),
    format('~n[#] ROAD UNBLOCKED: ~w <-> ~w~n', [X, Y]), !.
unblock_road(X, Y) :-
    format('~n[!] ROAD WAS NOT BLOCKED: ~w <-> ~w~n', [X, Y]).

unblock_all_roads :-
    retractall(blocked_road(_, _)),
    writeln('\n[#] All road blockages cleared.').