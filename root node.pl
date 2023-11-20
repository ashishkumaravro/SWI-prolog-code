node(a).
node(b).
node(c).
node(d).
node(e).
node(f).
parent_node(a,b).
parent_node(a,c).

parent_node(b,d).
parent_node(b,e).

parent_node(c,f).

root_node(X,Y):- parent_node(X,Z),parent_node(Z,Y).
sibling_node(X,Y):- parent_node(Z,X),parent_node(Z,Y).
