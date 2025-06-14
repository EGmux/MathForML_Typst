




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

== Let $V$ be a vector space and $pi$ an endomorphism of $V$.

=== a. Prove that $pi$ is a projection if and only if $id_V - pi$ is a projection, where $id_V$ is the identity endomorphism of $V$.

a endomorphism is a function that has domain equal to the co-domain, meaning that $pi$ maps elements of $V$ into elements of $V$.

suppose $pi$ is a projection, then by definition of projection applying $pi$ twice is the same as $pi$

$
  \ id_V (bb(x)) = bb(x) \
  \ pi (bb(x)) = pi_U (bb(x)) \
  \ id_V (bb(x)) - pi(x) = bb(x) - pi_U (x) \
  \ (id_V (bb(x)) - pi(x)) compose (id_V (bb(x)) - pi(bb(x))) \
  \ id_V (bb(x) - pi_U (bb(x))) = bb(x) - pi_U (bb(x)) \
  pi(bb(x) - pi_U (bb(x))) = 0
  \ (id(bb(x)) - pi_U (bb(x))) (pi(bb(x)) - pi_U (bb(x))) \
  \ bb(x) - pi_U (bb(x)) \
$

as the projection of $bb(y) = bb(x) - pi_U (bb(x))$ is orthogonal to each basis vector of $U$, so $<bb(e_i),bb(y)> =0, forall e_i in U$
so indeed if we assume $pi$ as projection $id_V - pi$ is also a projection.

first half is done.

$ \ (id_V (bb(x)) - pi((bb(x)))) compose (id_V (bb(x)) - pi(bb(x))) = id(bb(x)) - pi(bb(x)) \ $

is our premise

now consider $bb(x) = 2 pi(bb(x))$

$ \ pi (bb(x)) compose pi (bb(x)) = pi(bb(x)) \ $

so $pi(bb(x))$ is indeed a projection

so as both halves have been proven we arrive at the desired conclusion

=== b. Assume now that $pi$ is a projection. Calculate $im(id_V - pi)$ and $ker(id_V - pi)$ as function of $im(pi)$ and $ker(pi)$

remember that image is defined as

$ \ {w in V| exists v in V: f(v) = w} \ $

and kernel

$ \ {v in V| f(v) = bold(0)} \ $

#figure(
  image("37.png", width: 80%),
  caption: [diagram of the problem],
)

note that $<id_V - pi, pi> = 0$, as such $id_V - pi$ is the orthogonal complement of $pi$, but $pi(id_V - pi) = bb(0)$, so $im(id_V - pi) union {bb(0)} = ker(pi) arrow.double im(id_V - pi) = ker(pi) \\ {bb(0)}$

and $(id_V - pi)(pi) = bb(0) arrow.double ker(id_V - pi) = im(pi) union {bb(0)}$



