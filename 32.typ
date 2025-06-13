


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

== Consider $RR^2$ with $<dot, dot>$ defined for all $bb(x)$ and $bb(y)$ in $RR^2$ as

$ \ <bb(x),bb(y)> := bb(x)^T mat(2, 0; 1, 2)bb(y) \ $

Is $<dot, dot>$ an inner product?

Again we check for the properties: bilinearity, positive definiteness and symmetry.

$ \ [x_1,x_2] mat(2, 0; 1, 2) bb(y) = mat(2x_1 + x_2, 2x_2) mat(y_1; y_2) = 2x_1 y_1 + x_2 y_1 + 2x_2 y_2 \ $

verifying the positive definiteness, we have

$
  \ <bb(x),bb(x)> = 2x_1^2 + x_2x_1 + 2x_2^2 = 0 \
  \ x_1^2 + (x_2x_1) / 2 + x_2^2 = 0 \
  \ (x_1 + x_2)^2 + (x_2x_1) / 2 = 0 \
  \ |x_1 + x_2| = |(x_2x_1) / 2| \
  \ |1 + x_2 / x_1| = |x_2 / 2| \
  \ |1 / x_2 + 1 / x_1| = |1 / 2| \
$

and we can see that $x_2 = 4, x_1 = -2$ satisfy the requirement, thus it must be the case that is not positive definite and as such not a valid inner product.

