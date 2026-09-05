:- module(display, [
    format_path/1,
    display_route_info/3,
    show_optimal_path/2,
    show_blocked_roads/0,
    show_attractions/1,
    show_best_hotel/1,
    show_nearest_hospital/1
]).

:- use_module('../dynamic/blocked').
:- use_module('../knowledge_base/attractions').
:- use_module('../knowledge_base/hotels').
:- use_module('../knowledge_base/hospitals').
:- use_module('graph').

format_path([]).
format_path([H]) :- format('~w', [H]).
format_path([H1, H2|T]) :- format('~w -> ', [H1]), format_path([H2|T]).

display_route_info(Label, Path, Dist) :-
    travel_cost(Dist, Cost),
    format('  [ ~w ] : ', [Label]),
    nl, write('   *- ROUTE : '),
    write('  '),
    format_path(Path), nl,
    format('   *- Distance : ~w km | Travel Cost : Rs. ~w~n~n', [Dist, Cost]).

show_optimal_path(Path, Dist) :-
    travel_cost(Dist, Cost),
    writeln('#-- FINAL MOST COST-OPTIMAL PATH ----------------------#'),
    nl,
    write('  ROUTE  : '), format_path(Path), nl,
    format('  STATS  : ~w km Total Distance | Estimated Cost: Rs. ~w~n', [Dist, Cost]),
    writeln('').

show_blocked_roads :-
    nl, writeln('#-- CURRENTLY BLOCKED ROADS'),nl,
    (   blocked_road(_, _)
    ->  forall(blocked_road(X, Y), format('  [!] BLOCKED: ~w <-> ~w~n', [X, Y]))
    ;   writeln('  [*] No roads currently blocked. Network is fully open.')
    ),
    writeln('').

show_attractions(Loc) :-
    attraction(Loc, _, _, _, _, _),
    nl, format('#-- TOURIST ATTRACTIONS IN ~w~n~n', [Loc]),
    forall(
        attraction(Loc, Name, Cat, Dist, Cost, Desc),
        format('  * ~w (~w)~n    Dist: ~wkm | Fee: Rs.~w | ~w~n', [Name, Cat, Dist, Cost, Desc])
    ).

show_best_hotel(Loc) :-
    findall(
        Total-[Name, D, P, F],
        (hotel(Loc, Name, D, P, F), TCost is D * 100, Total is P + TCost),
        List
    ),
    List \= [],
    sort(List, [Tot-[Hotel, Dist, Price, Facs]|_]),
    TCost is Dist * 100,
    nl, format('#-- NEAREST HOTEL (~w) ~n~n', [Loc]),
    format('  Hotel    : ~w~n', [Hotel]),
    format('  Nightly  : Rs. ~w | Travel: Rs. ~w | Est. Total: Rs. ~w~n', [Price, TCost, Tot]),
    format('  Features : ~w~n', [Facs]).

show_nearest_hospital(Loc) :-
    findall(D-[Name, F], hospital(Loc, Name, D, F), List),
    List \= [],
    sort(List, [Dist-[Hosp, Facs]|_]),
    nl, format('#-- NEAREST HOSPITAL (EMERGENCY) (~w) ~n~n', [Loc]),
    format('  Hospital : ~w (~w km)~n', [Hosp, Dist]),
    format('  Features : ~w~n', [Facs]).