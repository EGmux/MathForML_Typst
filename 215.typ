
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

==== inverse element

$ \ x + x^(-1) = 0 \ $

- Proof for $F$

$ \ (x,y,z) + (a,b,c) = 0 \ $
$ \ (x+a, y+b, z+c) = (0,0,0) \ $

thus the inverse element

$
  \ a = -x \
  \ b = -y \
  \ c = -z \
$

$ \ -x -y +z = 0 \ $

notice this is the same as multipliation by $-1$ in the equality, so this element belongs to this subset of $RR^3$

- Proof for $G$

$ \ (a - b,a + b,a-3b) + (x,y,z) = (0,0,0) \ $

$
  \ x = b - a \
  \ y = -(a + b) \
  \ z = 3b - a \
$

notice that $(RR,-)$ is closed as well as $(RR,+)$ so the triple $(x,y,z) in RR^3$

==== associativity

$ \ x + (y + z) = (x + y) + z \ $

- proof for $F$
$ \ (x,y,z) + ((a,b,c) + (d,e,f))\ $
$ \ (x,y,z) + (a+d,b+e,c+f)\ $
$ \ (x+a+d,y+b+e,z+c+f)\ $

$ \ (x+a+d) + (y+b+e) - (z+c+f) \ $

now we prove the RHS

$ \ ((x,y,z) + (a,b,c)) + (d,e,f) \ $
$ \ (x+a,y+b,z+c) + (d,e,f) \ $
$ \ (x+a+d,y+b+e,z+c+f)\ $

$ \ (x+a+d) + (y+b+e) - (z+c+f) \ $

- proof for $G$

$ \ (a-b,a+b,a-3b) + ((c-d,c+d,c-3d) + (e-f,e+f,e-3f)) \ $
$ \ (a-b,a+b,a-3b) + (c-d + e-f,c+d + e+f,c-3d + e-3f)\ $
$ \ (a-b + c-d + e-f ,a+b + c+d + e+f,a-3b + c-3d + e-3f) \ $

$ \ ((a-b,a+b,a-3b) + (c-d,c+d,c-3d)) + (e-f,e+f,e-3f) \ $
$ \ (a-b + c-d,a+b+c+d,a-3b+c-3d) + (e-f,e+f,e-3f) \ $
$ \ (a-b + c-d + e-f,a+b+c+d+e+f,a-3b+c-3d+e-3f)\ $

so the property also hold for $G$

==== closure

- proof for $F$

$x + y in RR$

$ \ (x,y,z) + (a,b,c) \ $
$ \ (x+a,y+b,z+c)\ $

note that $x,y,z,a,b,c in RR$

and $(RR,+)$ is group, so closure is guaranteed

- proof for $G$

Analagous reasoning


==== abelian group

$x + y = y + x$

- proof for $F$

$ \ (x,y,z) + (a,b,c) \ $
$ \ (x+a,y+b,z+c)\ $

$ \ (a,b,c)+(x,y,z) \ $
$ \ (a+x,b+y,c+z)\ $

note that $(RR,+)$ is an abelian group, so because of that $a,x,b,y,c,z in RR arrow.double (a+x,b+y,c+z) in RR^3$

- proof for $G$

$ \ (a-b,a+b,a-3b) + (c-d,c+d,c-3d) \ $
$ \ (a-b + c-d,a+b+c+d,a-3b+c-3d)\ $

$ \ (c-d,c+d,c-3d) + (a-b,a+b,a-3b) \ $
$ \ (c-d+a-b,c+d+a+b,c-3d+a-3b)\ $

note that the subtractions operands always preserve their position in the operation so their value never change and because addition is commutative, as mentioned before, this property also holds.

==== distributivity of vector addition

$ \ psi (v_1 + v_2) = psi v_1 + psi v_2 \ $

- Proof for $F$

$ \ psi ((x,y,z) + (a,b,c)) \ $
$ \ psi (x+a,y+b,z+c) \ $
$ \ (psi x+ psi a,psi y+psi b,psi z+ psi c) \ $

$ \ psi (x,y,z) + psi (a,b,c) \ $
$ \ (psi x,psi y,psi z) + (psi a,psi b,psi c) \ $
$ \ (psi x + psi a,psi y + psi b,psi z + psi c)\ $

so this property holds for $F$

$ \ psi ((a-b,a+b,a-3b) + (c-d,c+d,c-3d)) \ $
$ \ psi ((a-b + c-d,a+b + c+d,a-3b + c-3d)\ $
$ \ (psi (a-b) + psi (c-d),psi(a+b) + psi(c+d),psi(a-3b) + psi(c-3d))\ $
note that this is not function application, $psi$ is a scalar

$ \ psi(a-b, a+b, a-3b) + psi(c-d, c+d, c-3d) \ $
$ \ (psi(a-b),psi(a+b),psi(a-3b)) + (psi(c-d),psi(c+d),psi(c-3d)) \ $
$ \ (psi(a-b) + psi(c-d),psi(a+b) +)psi(c+d),psi(a-3b) + psi(c-3d))\ $

so the property holds

==== distributivity of scalars

$ \ (psi + mu)v_1 = psi v_1 + mu v_1 \ $

- Proof for $F$

$ \ (psi + mu)(x,y,z) \ $
$ \ omega (x,y,z) \ $
$ \ (omega x,omega y,omega z) \ $

$ \ psi (x,y,z) + mu (x,y,z)) \ $
$ \ (psi x,psi y,psi z) + (mu x,mu y,mu z)) \ $
$ \ (x(psi + mu),y(psi + mu),z(psi + mu))\ $
$ \ (x omega,y omega,z omega)\ $

- Proof for $G$

$ \ (psi + mu)(a-b,a+b,a-3b) \ $
$ \ omega(a-b, a+b, a-3b) \ $
$ \ (omega (a-b),omega (a+b), omega (a-3b)) \ $

$ \ psi (a-b,a+b,a-3b) + mu(a-b, a+b, a-3b)\ $
$ \ (psi a-b,psi a+b,psi a-3b) + (mu a-b,mu a+b,mu a-3b)\ $
$ \ (a-b (psi + mu) , a+b(psi +mu), a-3b (psi + mu))\ $
$ \ ((a-b) omega, (a+b) omega, (a-3b) omega)\ $

note that multiplication is commutative in $RR$

==== associativity of scalars

$ \ psi (mu v_1) = (psi mu) v_1 \ $

- Proof for $F$

$ \ psi (mu (x,y,z)) \ $
$ \ psi (mu x,mu y,mu z) \ $
$ \ (psi mu x,psi mu y,psi mu z) \ $

$ \ (psi mu) (x,y,z) \ $
$ \ (psi mu x,psi mu y,psi mu z) \ $

so the property holds

- Proof for $G$

$ \ psi (mu (a-b,a+b,a-3b)) \ $
$ \ psi (mu (a-b),mu(a+b),mu(a-3b))) \ $
$ \ (psi mu (a-b),psi mu(a+b),psi mu(a-3b))) \ $

$ \ (psi mu)(a-b,a+b,a-3b) \ $
$ \ (psi mu a-b,psi mu a+b,psi mu a-3b) \ $

so the property holds

==== identity element for scalar multiplication


note that $1 in RR$ for both cases so this property also holds

so both structures are vector subspaces of $RR^3$

=== b. Calculate $F inter G$ without resorting to any basis vector

by definition the intersection is

$ \ U inter A arrow.r x in A and x in U \ $

where $U "and" A$ are sets

$ \ (x,y,z) = (a-b,a+b,a-3b) \ $
$
  \ x = a-b \
  \ y = a+b \
  \ z = a-3b \
$

and

$ \ (a-b) + (a+b) - (a-3b) \ $
$ \ a + 3 b = 0 \ $
$ \ a = -3 b \ $

thus a valid basis could be

$ \ x_k = { mat(4; 0; 0),mat(0; 2; 0),mat(0; 0; 6)} \ $

note that $-b$ now becomes a simple scaling factor

=== c. Find one basis for F and one for G, calculate $F inter G$ using the basis vectors previously found and check your results with the previous question.

a possible basis for $F$

$ \ x_k = {mat(4; 0; 0),mat(0; 2; 0),mat(0; 0; 6)} \ $

note that $x,y$ are free variables and z is the bounded one, thus we use the restriction mentioned

$ \ x + y - z = 0 equiv z = x + y \ $

and remember we want $v in RR^3$

and for $G$

$ \ x_k = {mat(a; a; 0),mat(-b; b; a),mat(0; 0; -3b)} \ $

$ \ mat(4, 0, 0, a, -b, 0; 0, 2, 0, a, b, 0; 0, 0, 6, 0, a, -3b) \ $

note we can find a linear combination for the last three column vectors

- for the fourth one
$
  \ lambda_0 = a / 4 \
  \ lambda_1 = a / 2 \
  \ lambda_2 = 0 \
$

- for the fifth one

$
  \ lambda_0 = -b / 4 \
  \ lambda_1 = b / 2 \
  \ lambda_2 = a / 6 \
$

- for the last one

$
  \ lambda_0 = 0 \
  \ lambda_1 = 0 \
  \ lambda_2 = -3 / 6b \
$

thus our basis can be expressed as

$ \ mat(4, 0, 0; 0, 2, 0; 0, 0, 6) \ $

notice is the same as in the b case, so both methods are equivalent
