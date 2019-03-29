% Pack consecutive duplicates of list elements into sublists.
% If a list contains repeated elements they should be placed in separate sublists.

pack([], []).
pack([X], [X]).
pack()



% Line 4: takes care of the base case of an empty list
% Line 5: takes case of list with only one element
