% Find the last element in a list

last_elem(X,[X]).
last_elem(X,[_|L]) :- last_elem(X,L).
