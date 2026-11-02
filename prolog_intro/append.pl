myAppend([], Lst2, Lst2).
myAppend([Head|Tail], Lst2, [Head|Temp]) :-
    myAppend(Tail, Lst2, Temp).


%% myAppend(nil, Lst2, Lst2).
%% myAppend(cons(Head, Tail), Lst2, cons(Head, Temp)) :-
%%     myAppend(Tail, Lst2, Temp).

% def sum_all(lst):
%   if isinstance(lst, Nil):
%     return 0
%   elif isinstance(lst, Cons):
%     return lst.head + sum_all(lst.tail)


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
