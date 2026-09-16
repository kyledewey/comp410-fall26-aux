% Prolog - Programming in Logic
%

% Contents of a file: database

% procedure - foo/2
%  name: foo
%  arity: 2
foo(1, 2).
foo(1, 3).
foo(2, 4).

% procedure - bar/4
bar(a, b, 3, 8). % fact

% procedure - isInteger/1
%  name: isInteger
%  arity: 1
isInteger(1). % fact
isInteger(2). % fact
isInteger(3). % fact

% alice is an atom (basically a string)
isName(alice).
