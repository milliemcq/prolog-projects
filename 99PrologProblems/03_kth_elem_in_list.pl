%
% Find the kth element in a list
% Solution:
% If K=1 the kth element is the head of the list
%
%

% here if k is one we simply return X as the list head
kth_element(X, [Y|_], 1) :- X = Y.

% As k is not one, we remove the head, decrement K, and iterate on
% K-1 with the remaining tail of the list
kth_element(X, [_|T], K) :- K1 is K-1, kth_element(X, T, K1).
