% ?- sumAll([3, 2, 7], X).
% X = 12.
%
% ?- sumAll([2, 3], X).
% X = 5.
%
% ?- sumAll([], X).
% X = 0.
sumAll([], 0).
sumAll([Head|Tail], X) :-
    sumAll(Tail, Temp),
    X is Head + Temp.

% sumAllAccum/2
% sumAllAccum(List, Result)
sumAllAccum(List, Result) :-
    sumAllAccum(List, 0, Result).
    
% sumAllAccum/3
% sumAllAccum(List, Accum, Result)
sumAllAccum([], Accum, Accum).
sumAllAccum([Head|Tail], Accum, Result) :-
    Temp is Head + Accum,
    sumAllAccum(Tail, Temp, Result).

% myReverse/2
% myReverse(InputList, OutputList)
myReverse(InputList, OutputList) :-
    myReverse(InputList, [], OutputList).

% myReverse/3
% myReverse(InputList, Accum, OutputList)
myReverse([], A, A).
myReverse([Head|Tail], Accum, OutputList) :-
    myReverse(Tail, [Head|Accum], OutputList).

