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
