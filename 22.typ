#let set1 = $NN\\{0}$
#let set2 = $ZZ_5\\{overline(0)}$
#let g1 = $(ZZ_n,plus.circle)$
#let g2 = $(ZZ_5\\{overline(0)}, times.circle)$
#let g3 = $(ZZ_8\\{overline(0)}, times.circle)$
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
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

*c* . Show that #g2 is not a group.

*d*. We recall that the 'Bézout theorem states that two integer $a$ and $b$ are relatively prime (i.e $gcd(a, b) = 1$)if and only if there exist two integers $u$ and $v$ such that $a u + b v = 1$. Show that #g1 is a group if and only if $n in #set1$ is prime.
