#let set1 = $NN\\{0}$
#let set2 = $ZZ_5\\{overline(0)}$
#let set3 = $ZZ_8\\{overline(0)}$
#let set4 = $ZZ_n\\{overline(0)}$
#let g1 = $(ZZ_n,plus.circle)$
#let g2 = $(ZZ_5\\{overline(0)}, times.circle)$
#let g3 = $(ZZ_8\\{overline(0)}, times.circle)$
#let g4 = $(ZZ_n\\{overline(0)}, times.circle)$
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])

Let $n$ be in #set1. Let $k,x$ be in $ZZ$. We define the congruence class $#overline("k")$ of the integer $k$ as the set
$
  \ #overline("k") = {x in ZZ | x - k = 0 (mod n)} \
  \ x in ZZ | exists a in ZZ: (x - k = n dot a)} \
$

We now define $ZZ "/" n ZZ$(sometimes written $ZZ_n$) as the set of all congruence classes modulo $n$. Euclidean divison implies that this set is a finte set containing $n$ elements:

$ \ ZZ_n = {overline(0), overline(1), ..., overline("n - 1")} \ $

For all $overline("a"), overline("b") in ZZ_n$, we define

$ \ over(a) plus.circle over(b) := over("a+b")\ $

*a* . Show that #g1 is a group. Is it abelian?

*b* . We now define another operation $times.circle$ for all $over(a)$ and $over(b)$ in $ZZ_n$ as

$ \ over(a) times.circle over(b) = overline(a times b) \ $

where $a times b$ represents the usual multiplication in $ZZ$.

Let $n = 5$. Draw the times table of the elements of #set2 under $times.circle$.

Conclude that is an Abelian group.

*c* . Show that #g3 is not a group.

*d*. We recall that the 'Bézout theorem states that two integer $a$ and $b$ are relatively prime (i.e $(gcd(a, b) = 1$)if and only if there exist two integers $u$ and $v$ such that $a u + b v = 1$. Show that #g1 is a group if and only if $n in #set1$ is prime.

== We now show that #g1 is a group

to be a group the mathematical structure must hold the following properties

#list(
  [identity element],
  [closure for the provided operator],
  [each element in the set has an inverse],
  [associativity property],
)

We start by proving the associativity property, $a * (b * c) = (a * b) * c$

$
  \ a * (b * c) \
  \ x - a plus.circle (x - b plus.circle x - c) \
  \ x - a plus.circle overline(x - b plus x - c) \
  \ overline(x - a plus (overline(x - b plus x - c))) \
  \ overline(x - a plus overline((2 x - b - c))) \
  \ overline(x - a plus (0 - b mod n - c mod n)) & #comment(", apply mod n operation") \
  \ overline(x - a - overline(b) - overline(c)) \
  \ overline(x - (a + overline(b) + overline(c))) \
  \ overline(x - overline(d)) \
  \ 0 - overline(d) \
  overline(d)
$

$
  \ (a * b) * c \
  \ (x - a plus.circle x - b) plus.circle x - c \
  \ overline(x - a + x - b) plus.circle x - c \
  \ overline(overline(x - a + x - b) plus x - c) \
  \ overline((2 x - a - b) plus x - c) \
  \ overline((0 - a mod n - b mod n) + x - c) \
  \ overline(-(overline(a) + overline(b) + c) + x)) \
  \ overline(overline(d) + x) \
  \ overline(d) \
$

we know that $overline(d)$ must each belong to a congruence class, thus must be a number in $ZZ_n$
so associativity holds.

now we prove identity element, $a * e = a$

$
  \ a * e \
  \ a plus.circle e \
  \ overline(a + e) \
  \ overline(a + 0) & #comment(", set e to 0") \
  \ overline(a) \
$

note that $a in ZZ_n$ thus $a < n$ it must be the case that $a = overline(a)$, thus identitiy property also holds.

now we prove the inverse property, $a * a^(-1) = e$

$
  \ a * a^(-1) \
  \ a plus.circle a^(-1) \
  \ overline(a + a^(-1)) \
  \ overline(a) + overline(a^(-1)) & #comment(", set the second term to be n - a") \
  \ overline(b) = 0 = overline(0) \
$

thus note that $0< (n - a) < n$ , thus it must be the case that $forall (n -a) in ZZ_n$, so inverse property holds.

now we prove closure property, $a * b in ZZ_n$

$
  \ a * b \
  \ a plus.circle b \
  \ overline(a + b) \
  \ overline(c) \
$

note that $overline(c) in ZZ_n$ it must be one of the congruent classes by definition of congruent class, thus closure property holds.

all previous mentioned property holds, thus this structure must be a group, now we check if such group is abelian.

to prove is abelian, is enough to $a * b = b * a$, that is check for commutativity.

$
  \ a * b \
  \ a plus.circle b\
  \ overline(a + b) \
  \ overline(c) \
$

$
  \ b * a \
  \ b plus.circle a \
  \ overline(b + a) \
  \ overline(c) & #comment(", due to commutativity of addition") \
$

note that both expressions result in the same value and such value belongs to $ZZ_n$ thus the group is indeed abelian.

== now we check the second group, #g2

first we "draw" the table for $n = 5$


#table(
  columns: (2.5em, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [],
    [*1*],
    [*2*],
    [*3*],
    [*4*],
  ),

  [*1*], $1$, $2$, $3$, $4$,
  [*2*], $2$, $4$, $1$, $3$,
  [*3*], $3$, $1$, $4$, $2$,
  [*4*], $4$, $3$, $2$, $1$,
)

note that is closed, by inspection, note also that identity element is preset $overline(1)$ which is $1$. each element has indeed an inverse, defined as the following pairs $(1,4), (2,3)$, now we prove associativity

$
  \ a * (b * c) \
  \ a times.circle(b times.circle c) \
  \ a times.circle(overline(b times c)) \
  \ a times.circle (overline(b) times overline(c)) \
  \ overline(a times (overline(b) times overline(c))) \
  \ overline(a) times overline(b) times overline(c) \
$

$
  \ (a * b) * c \
  \ (a times.circle b) times.circle c \
  \ overline(a times b) times.circle c \
  \ (overline(a) times overline(b)) times.circle c \
  \ overline((overline(a) times overline(b) times c)) \
  \ overline(a) times overline(b) times overline(c) \
$

we also know that the matrix is closed, so this multipliation must be one of the congruence classes.

thus the mathematical structure is a group, now we prove is abelian, $a * b = b * a$

$
  \ a * b \
  \ a times.circle b \
  \ overline(a times b) \
  \ overline(c) \
$

$
  \ b * a \
  \ b times.circle a \
  \ overline(b times a) \
  \ overline(c) & #comment(", note that multiplation is commutative") \
$

thus this group is indeed abelian, so #g2 is an abelian group.

== now we prove #g3 is not a group

we prove by counterexample


#table(
  columns: (2.5em, auto, auto, auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [],
    [*1*],
    [*2*],
    [*3*],
    [*4*],
    [*5*],
    [*6*],
    [*7*],
  ),

  [*1*], $1$, $2$, $3$, $4$, $5$, $6$, $7$,
  [*2*], $2$, $4$, $6$, $0$, $2$, $4$, $6$,
  [*3*], $3$, $6$, $1$, $4$, $7$, $2$, $5$,
  [*4*], $4$, $0$, $4$, $0$, $4$, $0$, $4$,
  [*5*], $5$, $2$, $7$, $4$, $1$, $6$, $3$,
  [*6*], $6$, $4$, $2$, $0$, $6$, $4$, $6$,
  [*7*], $7$, $6$, $5$, $4$, $3$, $6$, $1$,
)

note that multiple times $a * b eq.triple 0$ thus belongs to $overline(0)$ and such congruence class is restricted in the set #set3, so is not a group, lacks closure.

== now we prove d)

we need to prove that $#set4 "is a group" arrow.r.double n "is prime"$ and $"if" n "is prime" arrow.r.double #set4 "is a group"$

let's do a contrapositive proof

suppose $n "is not prime"$, then it must be the case that

$ \ x eq.triple 0 mod n \ $

that is one of the numbers must be a divisor of n, by definition of being composite

but note that would invalidate $x in #set4$, that would put $x in overline(0)$, but the set restricts this congruence class, thus it must be the case that n is prime, otherwise a contradiction happens.

now we prove the other proposition

recalling Bézout's identity

$gcd(a, b) = 1 arrow.r.l.double a u + b v = 1$

thus

$x u + b n = 1$

meaning that
$x u - 1 = b n arrow.r.double x eq.triple 1 mod n$

note that $x, x+1, ... x + (n - 2)$ must be present in this set

meaning every number in the congruence class $overline(1) "to" overline(n-1)$ is present
thus #g4 is a group, note that is closed, has identity, has inverse and also is associative. $qed$
