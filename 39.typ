






#let set1 = $NN\\{0}$
#let set2 = $ZZ_5\\{overline(0)}$
#let g1 = $(ZZ_n,plus.circle)$
#let g2 = $(ZZ_5\\{overline(0)}, times.circle)$
#let g3 = $(ZZ_8\\{overline(0)}, times.circle)$
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#set math.mat(delim: "[")
#let bb(body) = math.bold(body)
#let dp(body) = $<body,body>$
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])

== Let $n in NN$ and let $x_1,...,x_n > 0$ be $n$ positive real numbers so that $x_1 + ... + x_n = 1$. Use the Cauchy-Schawrz inequality and show that

=== a. $Sigma_i^n x_i^2 >= 1 / n$

Remember the inquality states $|<x ,y>| <= ||x|| ||y||$

remember that $||bb(x)|| ||bb(x)|| > 1$ and $|Sigma_i^n x_i^2| > 1$

$
  \ |Sigma_i^n x_i^2| <= ||bb(x)|| ||bb(x)||\
  \ |Sigma_i^n x_i^2| <= |Sigma_i^n x_i^2| ||bb(x)|| ||bb(x)||\
  \ (|Sigma_i^n x_i^2|) / ( ||bb(x)|| ||bb(x)||) <= |Sigma_i^n x_i^2| \
  \ 1 / ( ||bb(x)|| ||bb(x)||) <= |Sigma_i^n x_i^2| \
  \ 1 / n <= Sigma_i^n x_i^2 \
$

and

$
  \ |Sigma_i^n x_i| <= ||bb(x)|| arrow.double n <= ||bb(x)||^2 \
  \ 1 / n > ||bb(x)||^2 \
  \ 1 / n <= 1 / (||bb(x)||^2) \
$

== b. $Sigma_i^n 1 / x_i >= n^2$

note that $1 + ...+ x_j / x_i = 1 / x_i$

and $1 + ... + x_j / x_k = 1 / x_k$

$
  \ n + Sigma_i^n x_i (Sigma_(j!=i)^(n-1) (1 / x_j)) = Sigma_i^n (1 / x_i) \
  \ n + Sigma_i^n x_i - 1 / x_i + (1 / x_i + (Sigma_(j!=i)^(n-1) (1 / x_j))) = Sigma_i^n (1 / x_i) \
  \ n + Sigma_i^n x_i - Sigma_i^n 1 / x_i + Sigma_i^n 1 / x_i = Sigma_i^n (1 / x_i) \
  \ 2n = Sigma_i^n (1 / x_i) \
  \ n < Sigma_i^n (1 / x_i) \
  \ Sigma_i^n x_i^2 n >= 1 \
  \ Sigma_i^n x_i n >= n \
  \ Sigma_i^n 1 >= n \
  \ Sigma_i^n 1 n >= n^2 \
  \ Sigma_i^n 1 / x_i >= n^2 \
$

