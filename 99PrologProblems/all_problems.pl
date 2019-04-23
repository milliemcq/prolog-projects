% 01 - Find the last element in a list
last_elem(X, [X]).

last_elem(X, [_|L]):-
  last_elem(X, L).

% 02 - Find the last but one element of a List
last_but_one(X, [X, _]).

last_but_one(X, [_|L]):-
  last_but_one(X, L).

% 03 - Find the Kth element of a List
find_k_elem(X,  [X | _], 1).

find_k_elem(X, [_|L], K):- K1 is K-1, find_k_elem(X, L, K1).

% 04 - Find the number of elements in a list
num_elems([], 0).

num_elems([_|T], N):-
  N is N1+1, num_elems(T, N1).
