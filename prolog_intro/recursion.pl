% def factorial(input):
%   if input == 0:
%     return 1
%   else:
%     assert(input > 0)
%     factorial_result = factorial(input - 1)
%     return input * factorial_result
%
%
% factorial(Input, Output)
factorial(0, 1).
factorial(Input, Output) :-
    Input > 0,
    InputMinusOne is Input - 1,
    factorial(InputMinusOne, FactorialResult),
    Output is Input * FactorialResult.

% def fib(n):
%   if n == 0:
%     return 1
%   elif n == 1:
%     return 1
%   else:
%     minus_one = n - 1
%     minus_two = n - 2
%     fib_n_minus_one = fib(minus_one)
%     fib_n_minus_two = fib(minus_two)
%     return fib_n_minus_one + fib_n_minus_two

% fib(Input, Output)
fib(0, 1).
fib(1, 1).
fib(N, Output) :-
    N > 1,
    MinusOne is N - 1,
    MinusTwo is N - 2,
    fib(MinusOne, FibNMinusOne),
    fib(MinusTwo, FibNMinusTwo),
    Output is FibNMinusOne + FibNMinusTwo.

% myBetween(Min, Max, Value)
myBetween(Min, Max, Min) :-
    Min =< Max.
myBetween(Min, Max, Value) :-
    Min < Max,
    MinPlusOne is Min + 1,
    myBetween(MinPlusOne, Max, Value).

