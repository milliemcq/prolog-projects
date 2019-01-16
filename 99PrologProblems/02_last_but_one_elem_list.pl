%
% find the last but one element of a list
% Solution similar to first, but instead you wait till
% only two elements remain in the list
% and then assign X to the second of these two elements.
%

last_but_one(X,[X,_]).
last_but_one(X,[_,Y|Ys]) :- last_but_one(X,[Y|Ys]).
