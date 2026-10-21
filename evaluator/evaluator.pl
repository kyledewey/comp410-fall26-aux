% exp ::= integer(INT) |
%         plus(exp, exp) |
%         minus(exp, exp) |
%         mult(exp, exp)

% evaluate(exp, INT)
evaluate(integer(X), X).
evaluate(plus(Left, Right), Result) :-
    evaluate(Left, LeftValue),
    evaluate(Right, RightValue),
    Result is LeftValue + RightValue.
evaluate(minus(Left, Right), Result) :-
    evaluate(Left, LeftValue),
    evaluate(Right, RightValue),
    Result is LeftValue - RightValue.
evaluate(mult(Left, Right), Result) :-
    evaluate(Left, LeftValue),
    evaluate(Right, RightValue),
    Result is LeftValue * RightValue.
