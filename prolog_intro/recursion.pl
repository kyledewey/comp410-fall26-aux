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

% MONDAY - do fib
