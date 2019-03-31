del(X,[X|Tail],Tail).

del(X,[Y|Tail],[Y|Tail1]):-
    del(X,Tail,Tail1).

% You can use delete to insert into a list like so
% del(a, L, [1, 2, 3]).

evenlength([]).

evenlength([First|Rest]):-
  oddlength(Rest)

oddlength([First|Rest]):-
  evenlength(Rest)
