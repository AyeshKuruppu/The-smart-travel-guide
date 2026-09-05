:- module(search, [
    bfs/3,
    dfs/3,
    astar/4
]).

:- use_module(library(pairs)).
:- use_module('graph').

/* BFS Search */
bfs(Start, Goal, Path) :-
    bfs_search([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

bfs_search([[Goal|Rest]|_], Goal, [Goal|Rest]) :- !.
bfs_search([[Current|Rest]|Paths], Goal, Path) :-
    findall(
        [Next, Current|Rest],
        (available(Current, Next, _), \+ member(Next, [Current|Rest])),
        NewPaths
    ),
    append(Paths, NewPaths, Updated),
    bfs_search(Updated, Goal, Path).

/* DFS Search */
dfs(Start, Goal, Path) :-
    dfs_search(Start, Goal, [Start], RevPath),
    reverse(RevPath, Path).

dfs_search(Goal, Goal, Path, Path) :- !.
dfs_search(Curr, Goal, Visited, Path) :-
    available(Curr, Next, _),
    \+ member(Next, Visited),
    dfs_search(Next, Goal, [Next|Visited], Path).

/* A* Search */
astar(Start, Goal, Path, Cost) :-
    heuristic(Start, Goal, H),
    astar_search([[Start, 0, H, [Start]]], Goal, RevPath, Cost),
    reverse(RevPath, Path).

astar_search([[Goal, G, _, Path]|_], Goal, Path, G) :- !.
astar_search([[Curr, G, _, Visited]|Open], Goal, Path, Cost) :-
    findall(
        [Next, NewG, F, [Next|Visited]],
        (
            available(Curr, Next, Dist),
            \+ member(Next, Visited),
            NewG is G + Dist,
            heuristic(Next, Goal, H),
            F is NewG + H
        ),
        NewNodes
    ),
    append(Open, NewNodes, Combined),
    keysort_open(Combined, Sorted),
    astar_search(Sorted, Goal, Path, Cost).

keysort_open(List, Sorted) :-
    map_list_to_pairs(get_f, List, Pairs),
    keysort(Pairs, SortedPairs),
    pairs_values(SortedPairs, Sorted).

get_f([_, _, F, _], F).