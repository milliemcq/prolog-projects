%eliminate consecutive duplicates from a list

compress([], []).
compress([X], [X]).
compress([X,X| Xs], Zs) :- compress([X|Xs], Zs).
compress([X,Y| Ys], [X|Zs]) :- X \= Y, compress([Y|Ys], Zs).

% But how does this work?
% Line 3: Ensures that if an empty list is given, an empy list is returned
% Line 4: Ensures that if the list contains only one element, the same list is returned
% Line 5: Takes the first two values from the list, if they are the same, compresses again moving forward
% Line 6: Takes the first two values from the list, if they are different and compresses from the second onwards
