
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

== Consider two subspaces of $RR^4$:

$
  \ U_1 = "span"(mat(1; 1; -3; 1), mat(2; -1; 0; -1), mat(-1; 1; -1; 1)), U_2 = "span"(mat(-1; -2; 2; 1), mat(2; -2; 0; 0), mat(-3; 6; -2; -1)) \
$

Determine a basis of $U_1 inter U_2$

we can use gaussian elimination and see which of these column vectors, from both subspaces, can be used as the basis

*note that both aforementioned basis must be present in their intersection, however a subset of them they might be a linear combination*

$ \ mat(1, 2, -1, -1, 2, -3; 1, -1, 1, -2, -2, 6; -3, 0, -1, 2, 0, -2; 1, -1, 1, 1, 0, -1) arrow.l -R_1 + R_3 \ $
$ \ mat(1, 2, -1, -1, 2, -3; 1, -1, 1, -2, -2, 6; -3, 0, -1, 2, 0, -2; 0, 0, 0, 3, 2, -7) arrow.l 3R_1 + R_2 \ $
$ \ mat(1, 2, -1, -1, 2, -3; 1, -1, 1, -2, -2, 6; 0, -3, 2, -4, -6, 16; 0, 0, 0, 3, 2, -7) arrow.l -R_1 + R_0 \ $
$ \ mat(0, 3, -2, 1, 4, -9; 1, -1, 1, -2, -2, 6; 0, -3, 2, -4, -6, 16; 0, 0, 0, 3, 2, -7) arrow.l R_1 "switch" R_0 \ $
$ \ mat(1, -1, 1, -2, -2, 6; 0, 3, -2, 1, 4, -9; 0, -3, 2, -4, -6, 16; 0, 0, 0, 3, 2, -7) arrow.l R_1 + R_2 \ $
$ \ mat(1, -1, 1, -2, -2, 6; 0, 3, -2, 1, 4, -9; 0, 0, 0, -3, -2, 7; 0, 0, 0, 3, 2, -7) arrow.l R_2 + R_3 \ $
$ \ mat(1, -1, 1, -2, -2, 6; 0, 3, -2, 1, 4, -9; 0, 0, 0, -3, -2, 7; 0, 0, 0, 0, 0, 0) arrow.l R_2 + R_3 \ $

note that if we consider

$
  \ lambda_4 = -1 \
  \ lambda_5 = -2 \
  \
$

we obtain the last column vector, so a linear dependency is present, we can just remove two of these column vectors and then arrive at a generating set

same can be applied to the second column vector, is a linear combination of third and first column vector.

$ \ mat(1, 1, -2; 0, -2, 1; 0, 0, -3; 0, 0, 0,) \ $

$ \ bold(x_k) = {bold(x_1),bold(x_3),bold(x_4)} \ $

that's our basis

