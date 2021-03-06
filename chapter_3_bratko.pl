conc([], L, L).

conc([X|L1], L2, [X|L3]):-
  conc(L1, L2, L3).

% 3.1 - Delete the last 3 elements from a list
delete_last_three(L, L1):-
    conc(L1, [_, _, _], [1, 2, 3, 4]).

% 3.2 - Get last element from list
last(Item, List):-
    conc(_, [Item], List).

% 3.3 - Find whether odd or even length List
evenlength([]).

evenlength([_|Rest]):-
    oddlength(Rest).

oddlength([_|Rest]):-
  evenlength(Rest).

% 3.4 Define a relation that reverses a list
reverse([], []).

reverse([First|Rest], Reversed):-
  reverse(Rest, ReversedRest),
  conc(ReversedRest, [First], Reversed).

% 3.5 Define the predicate Palindrome, a list is palindromic if it reads forwards and backwards the same
palindrome([], []).

palindrome([First|Rest]):-
  reverse(Rest, [End| ReversedRest]]),
  End = First.
