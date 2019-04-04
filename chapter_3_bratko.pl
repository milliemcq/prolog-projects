conc([], L, L).

conc([X|L1], L2, [X|L3]):-
  conc(L1, L2, L3).

  % 3.1 - Delete the last 3 elements from a list
  delete_last_three(L, L1):-
      conc(L1, [_, _, _], [1, 2, 3, 4]).
