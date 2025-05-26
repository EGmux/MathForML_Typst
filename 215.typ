
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

== Let $F = {(x,y,z) in RR^3 mid(|) x + y - z = 0}$ and $G = {(a-b,a+b,a-3b) mid(|) a,b in RR}$

=== a . Show that $F$ and $G$ are subspaces of $RR^3$

Again to show a structure is a subspace we need to show the following

- show that is an abelian group
- show associativity of scalar operations for multipliation
- show distributivity of scalar operations for addition
- show distributivity of vector sum operation
- show identity scalar exists in the set

Let's start by showing $F$ and $G$ are groups

- show that an identity element exist for addition
- show that an inverse element exist for addition
- show that associativity is a valid property
- show that any operation between two elements is contained in $RR^3$

==== identity element

$ \ x + id = x \ $

- proof for $F$
$ \ (x,y,z) + (a,b,c) = (x,y,z) \ $
$ \ (x+a,y+b,z+c) = (x,y,z) \ $

thus it must be the case

$ \ (0,0,0) \ $

and indeed $0 + 0 - 0 = 0$

- proof for $G$

$ \ (a-b,a+b,a-3b) + (x,y,z) = (a-b,a+b,a-3b) \ $

thus $(0,0,0)$ is the identity element and indeed, $0 in RR$
