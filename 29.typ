
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")
== Wich of the following sets are subspaces of $RR^3$?

=== a.

$ \ A = { (lambda, lambda + mu^3, lambda - mu^3) mid(|) lambda, mu in RR} \ $

to check such set is a subspace we need to verify if it has the properties of a vector space
==== identitiy
first we check for identity element, defined as follows

$ \ x + id(A) =x \ $

$ \ (lambda, lambda + mu^3, lambda -mu^3) + (x,y,z) = (lambda, lambda + mu^3, lambda -mu^3) \ $

$ \ (lambda +x, lambda +mu^3 +y, lambda - mu^3 +z ) = (lambda, lambda +mu^3, lambda - mu^3) \ $

by inspection we deduce this element must be $(0,0,0)$, and indeed if we set $mu = 0, lambda = 0$ we have such element,
so this structure has the identity element.
==== inverse element

now we check if each element has an inverse

$ \ x + x^(-1) = 0 \ $

$ \ (lambda, lambda + mu^3, lambda - mu^3) + (x,y,z) = (0,0,0) \ $

$ \ (lambda + x, lambda + mu^3 + y, lambda - mu^3 + z) = (0,0, 0) \ $

and we deduce that $x = -lambda, y = -(lambda +mu^3), z = -lambda + mu^3$

and indeed as both variables are elements of $RR$ and $(RR, +)$ is a group, then it must be the case that both values
are contained in $RR$.
so this structure satisfy the inverse property.


closure is guaranteed due to the fact that $(RR,+)$ is a group.
==== associativity
now we check for associativity

$
  \ v_1 + (v_2 + v_3)
  \ (lambda_1, lambda_1 + mu_1^3, lambda_1 - mu_1^3) +((lambda_2 + lambda_3), (lambda_2 + lambda_3) + (mu_2^3 + mu_3^3), (lambda_2 + lambda_3) - (mu_2^3 + mu_3^3))\
  \ (lambda_1 + lambda_2 + lambda_3, (lambda_1 + lambda_2 + lambda_3)+ (mu_1^3 + mu_2^3 + mu_3^3), (lambda_1 + lambda_2 + lambda_3) - (mu_1^3 + mu_2^3 + mu_3^3)) \
$

$
  \ (v_1 + v_2) + v_3
  \ (lambda_1 + lambda_2, (lambda_1 + lambda_2) + (mu_1^3 + mu_2^3), (lambda_1 + lambda_2) - (mu_1^3 + mu_2^3)) + (lambda_3, lambda_3 + mu_3^3, lambda_3 - mu_3^3)\
  \
  \ (lambda_1 + lambda_2 + lambda_3, (lambda_1 + lambda_2 + lambda_3) + (mu_1^3 + mu_2^3 + mu_3^3), (lambda_1 + lambda_2 + lambda_3) - (mu_1^3 + mu_2^3 + mu_3^3)) \
$

so associavity is preserved
==== group is abelian
now we need to check if the group is abelian

$ \ v_1 + v_2 = v_2 + v_1 \ $

$
  \ (lambda_1, lambda_1 + mu_1^3, lambda_1 -mu_1^3) + (lambda_2, lambda_2 + mu_2^3, lambda_2 - mu_2^3)
  \ (lambda_1 + lambda_2, lambda_1+ lambda_2 + mu_1^3 + mu_2^3, lambda_1 + lambda_2 -(mu_1^3 + mu_2^3))\
  \
$

$
  \ (lambda_2, lambda_2 + mu_2^3, lambda_2 -mu_2^3) + (lambda_1, lambda_1 + mu_1^3, lambda_1 - mu_1^3)
  \
  \ (lambda_2 + lambda_1, lambda_2+ lambda_1 + mu_2^3 + mu_1^3, lambda_2 + lambda_1 -(mu_2^3 + mu_1^3))\
  \
$

note that $(RR, +)$ is abelian, so $lambda_1 + lambda_2 = lambda_+ lambda_1, mu_1^3 + mu_2^3 = mu_2^3 + mu_1^3$
that implies the last coordinate has the form $x - y$ in both $(11)$ and $(12)$, so the group is abelian

==== distributivity of vectors
now we check for distributivity property

$ \ lambda (v_1 + v_2) = lambda v_1 + lambda v_2 \ $

$
  \ lambda ((lambda_1, lambda_1 + mu_1^3, lambda_1 - mu_1^3) + (lambda_2, lambda_2 + mu_2^3, lambda_2 - mu_2^3))
  \ lambda ((lambda_1 + lambda_2, lambda_1 + lambda_2 + mu_1^3 + mu_2^3, lambda_1 + lambda_2 - (mu_1^3 + mu_2^3)))\
  \ (lambda (lambda_1 + lambda_2), lambda(lambda_1 + lambda_2) + lambda (mu_1^3 + mu_2^3), lambda(lambda_1 + lambda_2) - lambda(mu_1^3 + mu_2^3)))\
  \
$

$
  \ (lambda lambda_1, lambda lambda_1 + lambda mu_1^3, lambda lambda_1 - lambda mu_1^3) + (lambda lambda_2, lambda lambda_2 + lambda mu_2^3, lambda lambda_2 - lambda mu_2^3) \
  \ (lambda (lambda_1 + lambda_2), lambda (lambda_1 + lambda_2) + lambda (mu_1^3 + mu_2^3), lambda (lambda_1 + lambda_2) - lambda (mu_1^3 + mu_2^3)) \
$

so distributivity property holds

==== distributivity of scalars

$ \ (eta + psi) v = eta v + psi v \ $

$
  \ (eta + psi) (lambda, lambda + mu^3, lambda - mu^3)
  \ (eta lambda + psi lambda, eta lambda + psi lambda + eta mu^3 + psi mu^3, eta lambda + psi lambda - eta mu^3 - psi mu^3)
  \
  \
$

$
  \ eta (lambda, lambda + mu^3, lambda - mu^3) + psi (lambda, lambda, + mu^3, lambda - mu^3)
  \ (eta lambda + psi lambda, eta lambda + psi lambda + eta mu^3 + psi mu^3, eta lambda + psi lambda - eta mu^3 - psi mu^3)
  \
  \
$


==== associativity of scalars
we now prove associativity

$\ eta (psi v_1) = (eta psi) v_1$

$
  \ eta (psi (lambda, lambda + mu^3, lambda - mu^3))
  \ eta (psi lambda, psi lambda + psi mu^3, psi lambda - psi mu^3))
  \ (eta psi lambda + eta psi mu^3, eta psi lambda - eta psi mu^3))
  \
$

$
  \ (eta psi) v_1
  \ (eta psi lambda, eta psi lambda + eta psi mu^3, eta psi lambda - eta psi mu^3)
  \
$

now we prove identity element of scalar multipliation
==== scalar identity
$ \ eta v = v \ $

$
  \ eta (lambda, lambda + mu^3, lambda - mu^3 )
  \ (eta lambda, eta lambda + eta mu^3, eta lambda - eta mu^3) \
  \
$

this means $eta = 1, 1 in RR$

so this set is indeed a subset of $RR^3$


=== b.

$ \ B = {(lambda^2, - lambda, 0) mid(|) lambda in RR} \ $

#let l1(x, y) = $lambda^(#y)_#x$
#let l2() = $lambda^2$

first we check if this structure is an abelian group

==== identity

$ \ x + id(x) = x \ $

$
  \ (l2(), - lambda, 0) + (x,y,z) = (l2(), -lambda, 0)
  \ (l2() + x, -lambda + y, z) = (l2(), -lambda, 0) \
  \
$

we deduce the identity element is $(0,0,0)$ and indeed because $(RR, +)$ is a group $0$ must belong to it

==== inverse

$ \ x + x^(-1) = 0 \ $

$
  \ (l2(), -lambda, 0) + (x,y,z) = (0,0,0)
  \ (l2() + x, - lambda + y, z) = (0,0, 0) \
  \
$

we deduce that $x = -l2(), y = lambda, z = 0$ and $lambda in RR$ so indeed this structure has an inverse

==== closure

$ \ x + y in RR^3 \ $

$
  \ (l1(0, 2), - l1(0, 1), 0 ) + (l1(1, 2), -l1(1, 1), 0)
  \ (l1(0, 2) + l1(1, 2), -(l1(0, 1) + l1(1, 1)), 0))\
  \
$

remembering that $lambda in RR$ and $(RR,+)$ is a group, then indeed closure is a valid property for this structure.

==== associativity

$ \ x + (y + z) = (x + y) + z \ $

$
  \ (l1(0, 2), -l1(0, 1), 0) + ((l1(1, 2), -l1(1, 1),0) + (l1(2, 2), -l1(2, 1), 0))
  \ (l1(0, 2), -l1(0, 1), 0) + ((l1(1, 2) + l1(2, 2)), -(l1(1, 1) + l1(2, 1)),0)\
  \ (l1(0, 2) + l1(1, 2) + l1(2, 2), -(l1(0, 1) + l1(1, 1) + l1(2, 1)), 0) \
  \
$

$
  \ ((l1(0, 2),-l1(0, 1),0) + (l1(1, 2), -l1(1, 1), 0)) + (l1(2, 2), -l1(2, 1),0)
  \ (l1(0, 2) + l1(1, 2),-(l1(0, 1) + l1(1, 1)),0) + (l1(2, 2), -l1(2, 1),0) \
  \ (l1(0, 2) + l1(1, 2) + l1(2, 2), -(l1(0, 1) + l1(1, 1) + l1(2, 1)),0) \
  \
$

now we check if this group is abelian, that is can commute the operands

$ \ x + y = y + x \ $

$
  \ (l1(0, 2),-l1(0, 1),0) + (l1(1, 2),-l1(1, 1),0)
  \ (l1(0, 2) + l1(1, 2),-(l1(0, 1) + l1(1, 1)),0)
  \
  \
$

$
  \ (l1(1, 2),-l1(1, 1),0) + (l1(0, 2),-l1(1, 1),0) \
  \ (l1(1, 2) + l1(0, 2),-(l1(1, 1) + l1(0, 1)),0)
  \
$

note that $(RR, +)$ is an abelian group

now we check distributivity of vectors, associativity of scalars and identy scalar

==== distributivity of vectors

$ \ mu (v_1 + v_2) = mu v_1 + mu v_2 \ $

$
  \ mu ((l1(0, 2), -l1(0, 1), 0) + (l1(1, 2),l1(1, 1),0))
  \ mu (l1(0, 2) + l1(1, 2), -(l1(0, 1) + l1(1, 1)), 0)
  \ (mu l1(0, 2) + mu l1(1, 2), -mu l1(0, 1) -mu l1(1, 1),0) \
  \
  \
$

$
  \ mu (l1(0, 2), -l1(0, 1),0) + mu(l1(1, 2), -l1(1, 1), 0)
  \ (mu l1(0, 2), - mu l1(0, 1),0) + (mu l1(1, 2), - mu l1(1, 1), 0)
  \ (mu l1(0, 2) + mu l1(1, 2), - mu l1(0, 1) - mu l1(1, 1),0)
  \
  \
  \
$
so this property holds

==== distributivity of scalars

$(mu + psi) v = mu v + psi v$

$
  \ (mu + psi) (l1(0, 2), - l1(0, 1), 0)
  \ (mu l1(0, 2) + psi l1(0, 2), - mu l1(0, 1) - psi l1(0, 1), 0)
  \
$

$
  \ mu (l1(0, 2), -l1(0, 1), 0) + psi (l1(0, 2), -l1(0, 1),0 )
  \ (mu l1(0, 2) + psi l1(0, 2), - (mu l1(0, 1) + psi l1(0, 1)), 0)
  \
  \
$
so this property holds

==== associativity of scalars

$ \ mu (psi v) = (mu psi) v \ $

$
  \ mu (psi (l1(0, 2),-l1(0, 1),0))
  \ mu (psi l1(0, 2), - psi l1(0, 1) ,0 ) \
  \ (mu psi l1(0, 2), - mu psi l1(0, 1) ,0 ) \
  \
$

$
  \ (mu psi) (l1(0, 2), -l1(0, 1), 0)
  \ (mu psi l1(0, 2), - mu psi l1(0, 1), 0)
  \
$

so this property holds

==== identity

$ \ 1 v = v \ $

$
  \ 1 (l1(0, 2), -l1(0, 1),0) = (l1(0, 2), -l1(0, 1), 0)
  \ (1 l1(0, 2), - 1 l1(0, 1), 0) = (l1(0, 2), -l1(0, 1), 0)\
  \
$

so must be one this scalar.

indeed this structure is a subspace of the vector space $RR^3$

==== c.

Let $gamma$ be in $RR$

#let ga(x, y, z) = (x - 2 * y + 3 * z)

$ \ C = {(eta_1, eta_2, eta_3) in RR^3 mid(|) eta_1 - 2 eta_2 + 3 eta_3 = gamma} \ $

again we check if this structure is a group

=== identity element

$ \ x + 1 = x \ $

#let et(x) = $eta_#x$
#let ma(x) = $mu_#x$
#let wa(x) = $omega_#x$

$
  \ (et(1), et(2), et(3)) + (x,y,z) = (et(1), et(2), et(3))
  \ (et(1) + x, et(2) +y, et(3) + z) = (et(1), et(2), et(3)) \
  \ et(1)+x - 2 (et(2) + y) + 3(et(3) + z) = gamma \
  \
$

that implies $(x,y,z) = (0,0, 0) arrow.r.double 0 - 0 + 0 =0$

so identity holds


=== inverse element

$ \ x + x^(-1) = 0 \ $

$
  \ (et(1), et(2), et(3)) + (x,y,z) = (0,0,0)
  \ (et(1) + x, et(2) + y, et(3) + z) = (0,0,0) \
  \
$

that implies $(x,y,z) = (-et(1), -et(2), -et(3)) arrow.r.double -et(1) + 2 et(2) - 3 et(3) = gamma$

so inverse holds

=== closure property

$ \ x + y in RR^3 \ $

$
  \ (et(1), et(2), et(3)) + (ma(1), ma(2), ma(3))
  \ (et(1) + ma(1), et(2) + ma(2), et(3) + ma(3)) \
  \
$

that implies $et(1) + ma(1) - 2 (et(2) + ma(2)) + 3 (et(3) + ma(3)) = gamma$

and indeed this expression is closed in $RR$

=== associativity


$ \ x + (y + z) = (x + y) + z \ $

$
  \ (et(1), et(2), et(3)) + (ma(1) + wa(1), ma(2) + wa(2), ma(3) + wa(3) )
  \ (et(1) + ma(1) + wa(1), et(2) + ma(2) + wa(2), et(3) + ma(3) + wa(3))
  \
  \
$

that implies $et(1) + ma(1) + wa(1) - 2(et(2) + ma(2) + wa(2)) + 3(et(3) + ma(3) + wa(3)) = gamma$

$
  \ (et(1) + ma(1), et(2) + ma(2), wa(3) + ma(3)) + (wa(1), wa(2), wa(3))
  \ (et(1) + ma(1) + wa(1), et(2) + ma(2) + wa(2), wa(3) + ma(3) + wa(3))
  \
  \
$

so indeed this structure is a group, now we check if it's abelian

$ \ x + y = y + x \ $

$
  \ (et(1), et(2), et(3)) + (ma(1), ma(2), ma(3))
  \ (et(1) + ma(1), et(2) + ma(2), et(3) + ma(3))
  \
  \
$
that implies $et(1) + ma(1) -2 (et(2) + ma(2)) + 3 (et(3) + ma(3)) = gamma_1$

$
  \ (ma(1), ma(2), ma(3)) + (et(1), et(2), et(3))
  \ (ma(1) + et(1), ma(2) + et(2), ma(3) + et(3))
  \
  \
$

that implies $ma(1) + et(1) - 2 (ma(2) + et(2)) + 3 (ma(3) + et(3)) = gamma_2$

note however that $(RR, +)$ is closed, so indeed this group is abelian, $arrow.r.double gamma_1 = gamma_2$

now we check for distributivity of vectors, associativity of scalars and the identity scalar

=== distributivity of vectors
$ \ psi (v_1 + v_2) = psi v_1 + psi v_2 \ $

$
  \ psi ((et(1), et(2), et(3)) + (ma(1), ma(2), ma(3)))
  \ psi ((et(1) + ma(1), et(2) + ma(2), et(3) + ma(3))
  \ (psi et(1) + psi ma(1), psi et(2) + psi ma(2), psi et(3) + psi ma(3)) \
  \
  \
$

that implies $(psi et(1) + psi ma(1)) -2 (psi et(2) + psi ma(2) + 3 (psi et(3) + psi ma(3)) = gamma_1$

$
  \ psi (et(1), et(2), et(3)) + psi (ma(1), ma(2), ma(3))
  \ (psi et(1), psi et(2), psi et(3)) + (psi ma(1), psi ma(2),psi ma(3))
  \ (psi et(1) + psi ma(1), psi et(2) + psi ma(2), psi et(3) + psi ma(3))
  \
  \
  \
$

so distributivity of vectors hold

=== distributivity of scalars

$ \ (psi + mu) v = psi v + mu v \ $


$
  \ (psi + mu) (et(1), et(2), et(3))
  \ (psi et(1) + mu et(1), psi et(2) + mu et(2), psi et(3) + mu et(3))
  \
$

$
  \ psi (et(1), et(2), et(3)) + mu (et(1), et(2), et(3))
  \ (psi et(1), psi et(2), psi et(3)) + (mu et(1), mu et(2), mu et(3))
  \ (psi et(1) + mu et(1), psi et(2) + mu et(2), psi et(3) + mu et(3))
  \
  \
$
so the property holds

==== associativity of scalars

$ \ psi (mu v) = (psi mu) v \ $

$
  \ psi (mu (et(1), et(2), et(3)))\
  \ psi ((mu et(1), mu et(2), mu et(3)))\
  \ (psi mu et(1), psi mu et(2), psi mu et(3)) \
  \
$
that implies $psi mu et(1) - 2 psi mu et(2) + 3 psi mu et(3)$

$
  \ (psi mu) (et(1), et(2), et(3)) \
  (psi mu et(1), psi mu et(2), psi mu et(3))
  \
$

so the property holds
==== identitiy of scalars

$ \ 1 v = v \ $

$ \ 1 (et(1), et(2), et(3)) \ $

so indeed this element is $1$ and $1 in RR$

so this structure is a vector subspace of $RR^3$

=== d.

$ \ D = {(et(1), et(2), et(3)) in RR^3 mid(|) et(2) in ZZ} \ $

this can be easily disproved by considering scalar associativity

$ \ psi (mu v) = (psi mu) v \ $

$
  \ psi (mu et(1), mu et(2), mu et(3))\
  (psi mu et(1), psi mu et(2), psi mu et(3))
  \
$

if we consider that $psi, mu in RR$ than any value $(psi mu eta_2) in.not ZZ$ invalidates this structure as a vector subspace of $RR^3$
