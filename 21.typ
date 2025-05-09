#let g1 = $(RR\\{-1},*)$
#let set1 = $RR\\{-1}$
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
We consider #g1 , where
$ a * b := a b + a + b, a,b in RR\{-1} \ $

a . Show that #g1 is an abelian group.
\
b . Solve
$ \ 3 * x * x = 15 \ $
\
in the abelian group #g1, where $*$ is defined in

=== To show #g1 is an abelian group we must also prove the following properties

#list(
  [ associativity ],
  [existence of an identity element],
  [existence of an inverse element],
  [closure property],
)

to prove associativity: $ a * (b * c) = (a * b) * c $

$
  \ a * (b * c) \
  \ a * (b c + b + c) \
  \ a (b c + b + c) + b c + b + c + a\
  \ a b c + a b + a c + b + c + a & #comment(", applying distributity of multiplication") \
$

now we expand the other expression

$
  \ (a * b) * c \
  \ (a b + a + b) * c \
  \ c(a b + a + b) + a b + a + b + c \
  \ c a b + c a + c b + a b + a + b + c & #comment(", applying distributity of multiplication ") \
$

note that by commutativity of multiplication and addition both results are the same, meaning $ a * (b * c) = (a * b) * c $

to prove identity element, $ a * e = a $

$
  \ a * e \
  \ a e + a + e \
  \ a & #comment(", set e = 0") \
$

thus identity element also holds if $ a = 0 $

now we prove inverse element, $ a * a^(-1) = e $

$
  \ a * a^(-1) \
  \ a a^(-1) + a + a^(-1) \
  \ 1 + a + a^(-1) & #comment(", by definiton of inverse in multiplication") \
  \ a^(-1) = -a -1 = -(a + 1) & #warning(", note that a != -1, otherwise it would be the identity element") \
$

now we prove closure property, $ a * b in #set1 $

$
  \ a * b \
  \ a b + a + b \
  \ a (b + 1) + b & #warning(", rewriting the expression") \
  \ a (b + 1) + b = - 1 = (-1 -b) / (b +1) = -(1 + b) / (b + 1) = -1 & #warning(", value of a required for -1 to be in ") RR \
$

impossible for $a = -1$ due to set restrictions, analogous logic arrive at the same conclusion for $b$, thus #g1 is closed

it must be the case that #g1 is a valid group due to the validity of previous properties

we now prove it's abelian, $a * b = b * a$

$
  \ a * b \
  \ a b + a + b \
$

$
  \ b * a \
  \ b * a + a + b \
$

they are equal iff $a b = b a$, but multiplication has the commutativity property, as such they are equal and the #g1 group is abelian $square.filled.big$

== solving b now

$
  \ 3 * x * x = 15 \
  \ (3 * x) * x = 15 \
  \ (3 x + 3 + x) * x = 15 \
  \ x(3 x + 3 + x) + 3 x + 3 + x + x = 15 \
  \ 3 x^2 + 3 x + x^2 + 3 x + 3 + 2 x = 15 \
  \ 4 x^2 + 8x - 12 = 0 \
  \ x^2 + 2x - 3 = 0 & #warning(", simplifying the equation") \
  \ x = (- 2 plus.minus sqrt(4 - 4(-3))) / 2 & #comment(", applying Bhaskara equation") \
  \ x = (-2 plus.minus 4) / 2 = -1 plus.minus 2 = {1,-3} \
$
