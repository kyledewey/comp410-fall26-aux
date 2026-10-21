myAppend([], Lst2, Lst2).
myAppend([Head|Tail], Lst2, [Head|Temp]) :-
    myAppend(Tail, Lst2, Temp).


%% myAppend(nil, Lst2, Lst2).
%% myAppend(cons(Head, Tail), Lst2, cons(Head, Temp)) :-
%%     myAppend(Tail, Lst2, Temp).
