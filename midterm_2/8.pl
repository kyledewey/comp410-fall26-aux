myBetween(Min, Max, Result) :-
    Min =< Max,
    Result = Min.
myBetween(Min, Max, Result) :-
    Min < Max,
    NewMin is Min + 1,
    myBetween(NewMin, Max, Result).


evensBetween(Min, Max, Result) :-
    Min =< Max,
    0 is mod(Min, 2),
    Result = Min.
evensBetween(Min, Max, Result) :-
    Min < Max,
    NewMin is Min + 1,
    evensBetween(NewMin, Max, Result).
