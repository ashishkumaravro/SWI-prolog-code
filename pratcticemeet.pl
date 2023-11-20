female(pam).
female(liz).
female(pat).
female(ann).

male(jim).
male(bob).
male(tom).
female(peter).

parent(pam,bob).
parent(tom,bob).
parent(pat,jim).
parent(bob,peter).
parent(pater,jim).

sister(X,Y):- parent(Z,Y),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,Y),parent(Z,Y),male(X),X\==Y.
grand_Parent(X,Y):-parent(X,Z),parent(Z,Y).
aunt(X,Y):-parent(Z,Y), sister(X,Z), female(X).



