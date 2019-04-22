% 01 - Find the last element in a list
last_elem(X, [X]).

last_elem(X, [_|L]):-
  last_elem(X, L).

% 02 - Find the last but one element of a List
last_but_one(X, [X, _]).

last_but_one(X, [_|L]):-
  last_but_one(X, L).

% 03 - 
