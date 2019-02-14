% write a prolog program that flattens a nested list, i.e [a, b, [c, d], e] = [a, b, c, d, e]

my_flatten(ListOut, ListIn) :- my_flatten(ListOut, ListIn, []).
my_flatten([], Res, Res) :- !.
my_flatten([Head|Tail], Res, Cont) :-   !,
                                        my_flatten(Head, Res, Cont1),
                                        my_flatten(Tail, Cont1, Cont).
my_flatten(Term, [Term|Cont], Cont).
