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

find_k_elem(X, [_|L], K):-
  K1 is K-1,
  find_k_elem(X, L, K1).

% 04 - Find the number of elements in a list
num_elems([], 0).

num_elems([_|T], N):-
  num_elems(T, N1), N is 1 + N1.

% Append Clause - For use in other definitions
append([], L, L).

append([X|L1], L2, [X|L3]):-
  append(L1, L2, L3).

% 05 - Reverse a list
reverse_list([], []).

reverse_list([H|L1], L3):-
    reverse_list(L1, Rest), append(Rest, [H], L3).

% 06 - Find out if a list is a palindrome
palindrome(List):- reverse_list(List, List).

% 07 - Flatten a nestest list structure
my_flatten(X,[X]) :- \+ is_list(X).
my_flatten([],[]).
my_flatten([X|Xs],Zs) :-
  my_flatten(X,Y),
  my_flatten(Xs,Ys),
  append(Y,Ys,Zs).

% 08 - Eliminate consequtive duplicate list elements
compress([],[]).
compress([X],[X]).
compress([X,X|Xs],Zs) :- compress([X|Xs],Zs).
compress([X,Y|Ys],[X|Zs]) :- X \= Y, compress([Y|Ys],Zs).

% 09 - Pack Duplicate Elements into sublists
pack([],[]).
pack([X|Xs],[Z|Zs]) :- transfer(X,Xs,Ys,Z), pack(Ys,Zs).

transfer(X,[],[],[X]).
transfer(X,[Y|Ys],[Y|Ys],[X]) :- X \= Y.
transfer(X,[X|Xs],Ys,[X|Zs]) :- transfer(X,Xs,Ys,Zs).

% 10 - Run-length encoding of a List (Uses pack function)
encode(L1,L2) :- pack(L1,L), transform(L,L2).

transform([],[]).
transform([[X|Xs]|Ys],[[N,X]|Zs]) :- length([X|Xs],N), transform(Ys,Zs).

% Taking a slice of a List
slice([X|_],1,1,[X]).

slice([X|Xs],1,K,[X|Ys]):-
    K > 1,
    K1 is K - 1,
    slice(Xs,1,K1,Ys).

slice([_|Xs],I,K,Ys):-
    I > 1, I1
    is I - 1,
    K1 is K - 1,
    slice(Xs,I1,K1,Ys).


% Run length encoding own
pack([],[]).
pack([X|L1],[Y|L2]):-
    transfer(X, L1, L3, Y),
    pack(L2, L3).

transfer(X, [], [], [X]).
transfer(X, [H|L3], [H|L3], [X]) :- x \= y.
transfer(X, [X|L1], L2, [X|L3]):-
    transfer()

%split a list
msplit([], _, [], []).
msplit(Xs, 0, [], Xs).
msplit([X|Xs], N, [X|L1], L2):-
    N > 0,
    N1 is N-1,
    msplit(Xs, N1, L1, L2).

% P13 - Direct Run Length Encoding
encode_direct([],[]).
encode_direct([X|Xs],[Z|Zs]) :- count(X,Xs,Ys,1,Z), encode_direct(Ys,Zs).

count(X,[],[],1,X).
count(X,[],[],N,[N,X]) :- N > 1.
count(X,[Y|Ys],[Y|Ys],1,X) :- X \= Y.
count(X,[Y|Ys],[Y|Ys],N,[N,X]) :- N > 1, X \= Y.
count(X,[X|Xs],Ys,K,T) :- K1 is K + 1, count(X,Xs,Ys,K1,T).
