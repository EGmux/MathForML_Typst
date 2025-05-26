
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

== Consider two subspaces $U_1$ and $U_2$, where $U_1$ is spanned by the columns of $bold(A_1)$ and $U_2$ is spanned by the columns of $bold(A_2)$ with

$ \ bold(A_1) = mat(1, 0, 1; 1, -2, -1; 2, 1, 3; 1, 0, 1), bold(A_2) = mat(3, -3, 0; 1, 2, 3; 7, -5, 2; 3, -1, 2) \ $

=== a. Determine the dimensions of $U_1, U_2$

$ \ mat(1, 0, 1; 1, -2, -1; 2, 1, 3; 1, 0, 1) arrow.l -1 R_1 + R_3 \ $
$ \ mat(1, 0, 1; 1, -2, -1; 2, 1, 3; 0, 2, 2) arrow.l -2 R_1 + R_2 \ $
$ \ mat(1, 0, 1; 1, -2, -1; 0, 5, 5; 0, 2, 2) arrow.l -R_1 + R_0 \ $
$ \ mat(0, 2, 2; 1, -2, -1; 0, 5, 5; 0, 2, 2) arrow.l -R_0 + R_3 \ $
$ \ mat(0, 0, 0; 1, -2, -1; 0, 5, 5; 0, 2, 2) arrow.l R_0 "switch" R_3 \ $
$ \ mat(0, 2, 2; 1, -2, -1; 0, 5, 5; 0, 0, 0) arrow.l R_1 "switch" R_0 \ $
$ \ mat(1, -2, -1; 0, 2, 2; 0, 5, 5; 0, 0, 0) arrow.l alpha R_1 + R_2 \ $
$ \ mat(1, -2, -1; 0, 2, 2; 0, 0, 0; 0, 0, 0) arrow.l alpha R_1 + R_2 \ $

consider the following coefficients to generate the last column vector

$
  \ lambda_1 = 1 \
  \ lambda_2 = 1 \
  \
$

so the final matrix is

$ \ mat(1, -2; 0, 2; 0, 0; 0, 0) \ $

and the dimension is 2

now for $bold(A_2)$

$ \ mat(3, -3, 0; 1, 2, 3; 7, -5, 2; 3, -1, 2) arrow.l -R_0 + R_3 \ $
$ \ mat(3, -3, 0; 1, 2, 3; 7, -5, 2; 0, 5, 2) arrow.l -7R_1 + R_2 \ $
$ \ mat(3, -3, 0; 1, 2, 3; 0, -19, -19; 0, 5, 2) arrow.l -3R_1 + R_0 \ $
$ \ mat(0, -9, -9; 1, 2, 3; 0, -19, -19; 0, 5, 2) arrow.l -3R_1 + R_0 \ $
$ \ mat(0, -9, -9; 1, 2, 3; 0, -19, -19; 0, 5, 2) arrow.l alpha R_2 + R_0 \ $
$ \ mat(0, 0, 0; 1, 2, 3; 0, -19, -19; 0, 5, 2) arrow.l R_3 "switch" R_0 \ $
$ \ mat(0, -19, -19; 1, 2, 3; 0, 5, 2; 0, 0, 0) arrow.l R_1 "switch" R_0 \ $
$ \ mat(1, 2, 3; 0, -19, -19; 0, 5, 2; 0, 0, 0) arrow.l R_1 "switch" R_0 \ $

we can see that no set of coefficients will allow the last column vector to be a linear combination of the other two column vectors, so it must be the case this is the final matrix and so the dimension is 3

=== b. Basis vector for $U_1$ and $U_2$

check above answer

=== c. Basis vector for $U_1 inter U_2$

we again apply gaussian elimination to the union of basis vectors for $U_1$ and $U_2$

$ \ mat(1, 0, 3, -3, 0; 1, -2, 1, 2, 3; 2, 1, 7, -5, 2; 1, 0, 3, -1, 2) arrow.l -R_1 + R_3 \ $
$ \ mat(1, 0, 3, -3, 0; 1, -2, 1, 2, 3; 2, 1, 7, -5, 2; 0, 2, 2, -3, -1) arrow.l -R_1 + R_0 \ $
$ \ mat(0, 2, 2, -5, -3; 1, -2, 1, 2, 3; 2, 1, 7, -5, 2; 0, 2, 2, -3, -1) arrow.l -2 R_1 + R_2 \ $
$ \ mat(0, 2, 2, -5, -3; 1, -2, 1, 2, 3; 0, 3, 6, -7, -1; 0, 2, 2, -3, -1) arrow.l -R_0 + R_3 \ $
$ \ mat(0, 2, 2, -5, -3; 1, -2, 1, 2, 3; 0, 3, 6, -7, -1; 0, 0, 0, 2, 2) arrow.l R_0 "switch" R_1 \ $
$ \ mat(1, -2, 1, 2, 3; 0, 2, 2, -5, -3; 0, 3, 6, -7, -1; 0, 0, 0, 2, 2) \ $

note that the last column vector can be obtained by the following coefficients

$
  \ lambda_1 = 0 \
  \ lambda_2 = 0 \
  \ lambda_3 = 1 \
  \ lambda_4 = 1 \
  \
$

so the final matrix is

$ \ mat(1, -2, 1, 2; 0, 2, 2, -5; 0, 3, 6, -7; 0, 0, 0, 2) \ $

and the final dimension is 4

$ \ bold(x_k) = {bold(x_1), x_2, x_4, x_5} \ $
