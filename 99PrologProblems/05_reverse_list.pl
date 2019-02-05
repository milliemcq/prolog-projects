% How to reverse a list in prolog
% Involves using accumulators, an accumulator is a list, and at the start it will be empty
% so we take the head of the list we are typing to reverse and add it to our
% accumulator. Then we take the head of the tail of the original list and add it
% to the head of our accumulator. Then you repeat this for the remainder of the list
% you have.

reverse_list(L,L1):-reverse_list(L,[],L1).
reverse_list([],ACC,ACC).
reverse_list([X|L], ACC,L1):- reverse_list(L,[X|ACC],L1).
