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
%bar(A, B, 3, 8).

% procedure - isInteger/1
%  name: isInteger
%  arity: 1
isInteger(1). % fact
isInteger(2). % fact
isInteger(3). % fact

% alice is an atom (basically a string)
isName(alice).

% areEqual/2 procedure
areEqual(SomeVariable, SomeVariable).
%areEqual(_, 1).

%% areEqual(0, 0).
%% areEqual(1, 1).
%% areEqual(2, 2).

isWarm(pizza).
isWarm(burger).
isWarm(burrito).

isCold(salad).

isHot(coffee).

foodTemp(coffee, hot).
foodTemp(pizza, warm).
foodTemp(burger, warm).
foodTemp(burrito, warm).
foodTemp(salad, cold).

aliceLikes(pizza).
aliceLikes(burger).
aliceLikes(burrito).
aliceLikes(yogurt).

bobLikes(pizza).
bobLikes(burger).
bobLikes(salad).
bobLikes(milk).

isGood(alice, pizza).
isGood(alice, burger).
isGood(alice, burrito).
isGood(alice, yogurt).
isGood(bob, pizza).
isGood(bob, burger).
isGood(bob, salad).
isGood(bob, milk).

relation(alice, likes, burger).
relation(alice, likes, burrito).
relation(alice, hates, milk).

likesPizzaAndBurger(Person) :-
    isGood(Person, pizza),
    isGood(Person, burger).
