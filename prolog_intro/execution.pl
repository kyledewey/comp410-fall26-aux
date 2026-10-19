% - lst1 is the input on the left
% - lst2 is the input on the right
% - returns the two lists appended together
%
% def myAppend(lst1, lst2):
%   if isinstance(lst1, Nil):
%     return lst2
%   elif isinstance(lst1, Cons):
%     # must be a recursive case - Cons is recursively defined
%     temp = myAppend(lst1.tail, lst2)
%     return Cons(lst1.head, temp)

%                            [1, 2]                 [3, 4]
% ?- myAppend(cons(1, cons(2, nil)), cons(3, cons(4, nil)), X).
% X = cons(1, cons(2, cons(3, cons(4, nil)))).
%     [1, 2, 3, 4]
myAppend(nil, Lst2, Lst2).
myAppend(cons(Head, Tail), Lst2, cons(Head, Temp)) :-
    % Result = cons(Head, Temp),
    myAppend(Tail, Lst2, Temp).

%    myAppend([1],                   [2], Res)
%    Res = [1, 2]
%
% ?- myAppend(cons(1, nil), cons(2, nil), Res).
% Res = cons(1, cons(2, nil)).
%                   |
%                  / \
%                  |  |
%                  X /\
%                    | |
%                    O X
%
%
% 1.) [myAppend(cons(1, nil), cons(2, nil), Res)]
%     {}
% 2.) [myAppend(cons(1, nil), cons(2, nil), Res) = myAppend(nil, Lst2, Lst2)]
%     {}
%
%     [myAppend(cons(1, nil), cons(2, nil), Res) = myAppend(cons(Head, Tail), Lst2, cons(Head, Temp)),
%      myAppend(Tail, Lst2, Temp)]
%     {}
%
% 3.) [myAppend(Tail, Lst2, Temp)]
%     {Head -> 1, Tail -> nil, Lst2 -> cons(2, nil), Res -> cons(Head, Temp)}
%
% 4.) [myAppend(Tail, Lst2, Temp) = myAppend(nil, Lst2', Lst2')]
%     {Head -> 1, Tail -> nil, Lst2 -> cons(2, nil), Res -> cons(Head, Temp)}
%
%     [myAppend(Tail, Lst2, Temp) = myAppend(cons(Head', Tail'), Lst2', cons(Head', Temp'))]
%     {Head -> 1, Tail -> nil, Lst2 -> cons(2, nil), Res -> cons(Head, Temp)}
%
% 5.) []
%     {Head -> 1, Tail -> nil, Lst2 -> cons(2, nil), Res -> cons(Head, Temp),
%      Lst2' -> Lst2, Temp -> Lst2'}
%     Res = cons(1, cons(2, nil))
%
%
% ?- myAppend(L1, L2, cons(1, cons(2, nil))).
%
% 1.) [myAppend(L1, L2, cons(1, cons(2, nil)))]
%     {}
%
% 2.) [myAppend(L1, L2, cons(1, cons(2, nil))) = myAppend(nil, Lst2, Lst2)]
%     {}
%
%     [myAppend(L1, L2, cons(1, cons(2, nil))) = myAppend(cons(Head, Tail), Lst2, cons(Head, Temp)),
%      myAppend(Tail, Lst2, Temp)]
%     {}
%
% 3.) []
%     {L1 -> nil, L2 -> Lst2, Lst2 -> cons(1, cons(2, nil))}
%
% 4.) [myAppend(Tail, Lst2, Temp)]
%     {L1 -> cons(Head, Tail), L2 -> Lst2, Head -> 1, Temp -> cons(2, nil)}
%
% 5.) [myAppend(Tail, Lst2, Temp) = myAppend(nil, Lst2', Lst2')]
%     {L1 -> cons(Head, Tail), L2 -> Lst2, Head -> 1, Temp -> cons(2, nil)}
%
%     [myAppend(Tail, Lst2, Temp) = myAppend(cons(Head', Tail'), Lst2', cons(Head', Temp'))]
%     {L1 -> cons(Head, Tail), L2 -> Lst2, Head -> 1, Temp -> cons(2, nil)}
%
% 6.) []
%     {L1 -> cons(Head, Tail), L2 -> Lst2, Head -> 1, Temp -> cons(2, nil),
%      Tail -> nil, Lst2 -> Lst2', Lst2' -> Temp}
%     L1 = cons(1, nil), L2 = cons(2, nil)
