

#let set1 = $NN\\{0}$
#let set2 = $ZZ_5\\{overline(0)}$
#let g1 = $(ZZ_n,plus.circle)$
#let g2 = $(ZZ_5\\{overline(0)}, times.circle)$
#let g3 = $(ZZ_8\\{overline(0)}, times.circle)$
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#set math.mat(delim: "[")
#let bb(body) = math.bold(body)

== Show that $<dot, dot>$ defined for all $bold(x) = [x_1,x_2]^T in RR^2$ and $bold(y) = [y 1,y_2]^T in RR^2$ by

$ \ <bold(x),bold(y)> := x_1 y_1 - (x_1 y_2 + x_2 y_1) + 2 (x_2 y_2) \ $

is an inner product

Remember that an inner product is a symmetric bilinear mapping from one vector space to to the reals that has the positive definite property, such property implies only the vector $bold(x) = 0$ has the inner product with itself equal to 0.

we start by proving the bilinearity

$
  \ <lambda bb(x) + phi bb(y), bb(z)> = lambda <bb(x), bb(z)> + phi <bb(y),bb(z)> \
  \ <bb(x) , lambda bb(y) + phi bb(z)> = lambda <bb(x), bb(y)> + phi <bb(x),bb(z)> \
  \
  \ (lambda x_1 + phi y_1)z_1 - ((lambda x_1 + phi y_1)z_2 + (lambda x_2 + phi y_2) z_1) + 2 (lambda x_2 phi y_2) z_2 \
  \ (lambda x_1 - lambda x_1 z_2 - lambda x_2 z_1 + 2 lambda x_2 z_2) + (phi y_1 z_1 - phi y_1 z_2 - phi y_2 z_1 + 2 phi y_2 z_2) \
  \ lambda (x_1 - x_1 z_2 - x_2 z_1 + 2 x_2 z_2) + phi (y_1 z_1 - y_1 z_2 - y_2 z_1 + y_2 z_2) \
  \ lambda <bold(x),bb(z)> + phi <bold(y),bold(z)> \
  \
  \ x_1 (lambda y_1 + phi z_1) - (x_1 (lambda y_2 + phi z_2) + x_2(lambda y_2 + phi z_1)) + 2 x_2(lambda y_2 + phi z_2) \
  \ lambda (x_1 y_1 - x_1 y_2 - x_2 y_2 + 2 x_2 y_2) + phi (x_1 z_1 - x_1 z_2 - x_2 z_1 + 2 x_2 z_2) \
  \ lambda <bold(x),bold(y)> + phi <bold(x),bold(z)> \
$

so indeed the function is a bilinear mapping.

Now we check for positive definiteness

$
  \ <bold(x),bold(x)> = x_1^2 - (x_1x_2 + x_2x_1) + 2(x_2^2) = x_1^2 - 2x_1x_2 + 2x_2^2 arrow.double.r -x_2^2 = (x_1+x_2)^2 \
$

the only solution for the above equation is $(0,0)$ thus is indeed positive definite

and now we check for the symmetric property

$ \ <bb(x),bb(y)> - <bb(y),bb(x)> = bb(0) \ $

$
  \ x_1y_1 - (x_1 y_2 + x_2 y_1) + 2(x_2 y_2) - y_1x_1 + (y_1x_2 + y_2 x_1) - 2(y_2 x_2) \
  \ -(x_1 y_2 + x_2 y_1) + (y_1 x_2 + y_2 x_1) \
  \ bold(0) \
$

so indeed is symmetric, as the mapping is bilinear, positive definite and symmetric is an inner product for the vector space $V=RR^2$ assuming the field $FF = RR$.



