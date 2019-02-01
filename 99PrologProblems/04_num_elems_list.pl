%Find the number of elements in a list

length_calc(1, [_]).
length_calc(X, [_|T]) :- length_calc(Temp, T), X is Temp+1
