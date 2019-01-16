%
% Find the last element in a list
% This works by repeatedly calling on the tail of the list
% until there is only one element left, this element then becomes X
%

last_elem(X,[X]).
last_elem(X,[_|L]) :- last_elem(X,L).
