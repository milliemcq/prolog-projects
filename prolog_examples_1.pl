man(adam).
man(peter).
man(paul).

woman(marry).
woman(eve).

parent(adam,peter). % means adam is parent of peter
parent(eve,peter).
parent(adam,paul).
parent(marry,paul).

father(F,C):-man(F),parent(F,C).
mother(M,C):-woman(M),parent(M,C).

is_father(F):-father(F,_).
is_mother(M):-mother(M,_).


son(S,P):-man(S),parent(P,S).
daughter(D,P):-woman(D),parent(P,D).

siblings(A,B):-parent(P,A),parent(P,B),A\=B.

full_siblings(A,B):-
  parent(A,F),parent(B,F),
  parent(A,M),parent(B,M),
  A\=B, F\=M.


full_siblings2(A,B):-
  father(A,F),father(B,F),
  mother(A,M),mother(B,M),
  A\=B.


uncle(U,N):-man(U),siblings(U,P),parent(P,N).
aunt(A,N):-woman(A),siblings(A,P),parentP,N).

grand_parent(G,N):-parent(G,X),parent(X,N).

human(H):- man(H);woman(H).

descendant(D,A):-
  parent(A,D).

descendant(D, A):-
  parent(P,D), descendant(P,A).
