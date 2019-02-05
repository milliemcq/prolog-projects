% Code to discover if a given list is a palindrome
% this works by returning true if a string is empty or contains only one character
% 


is_palindrome([]).
is_palindrome([_]).
is_palindrome(X):- append([H|T], [H], X), is_palindrome(T).
