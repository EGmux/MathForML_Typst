
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

== Consider two subspaces $U_1$ and $U_2$, where $U_1$ is the solution space of the homogeneous equation system $bold(A_1)bold(x) = bold(0)$ and $U_2$ is the solution space of the homogeneous equation system $bold(A_2)bold(x) = 0$ with

$ \ bold(A_1) = mat(1, 0, 1; 1, -2, -1; 2, 1, 3; 1, 0, 1), bold(A_2) = mat(3, -3, 0; 1, 2, 3; 7, -5, 2; 3, -1, 2) \ $

=== a. Determine the dimension of $U_1, U_2$

by the definiton of dimension, $|bold(x_k)|$ where the $| |$ indicates cardinality of a set and $bold(x_k)$ is one of minimal generating sets

$ \ mat(1, 0, 1; 1, -2, -1; 2, 1, 3; 1, 0, 1) arrow.l -R_1 + R_3 \ $
$ \ mat(1, 0, 1; 1, -2, -1; 2, 1, 3; 0, 2, 0) arrow.l -R_1 + R_0 \ $
$ \ mat(0, 2, 0; 1, -2, -1; 2, 1, 3; 0, 2, 0) arrow.l -2R_1 + R_2 \ $
$ \ mat(0, 2, 0; 1, -2, -1; 0, 5, 5; 0, 2, 0) arrow.l R_1 "switch" R_0 \ $
$ \ mat(1, -2, -1; 0, 2, 0; 0, 5, 5; 0, 2, 0) arrow.l -R_1 + R_3 \ $
$ \ mat(1, -2, -1; 0, 2, 0; 0, 5, 5; 0, 0, 0) arrow.l R_1 "switch" R_2 \ $
$ \ mat(1, -2, -1; 0, 5, 5; 0, 2, 0; 0, 0, 0) arrow.l - alpha R_2 + R_1 \ $
$ \ mat(1, -2, -1; 0, 0, 5; 0, 2, 0; 0, 0, 0) arrow.l R_2 "switch" R_1 \ $
$ \ mat(1, -2, -1; 0, 2, 0; 0, 0, 5; 0, 0, 0) arrow.l -R_1 + R_0 \ $
$ \ mat(1, 0, -1; 0, 2, 0; 0, 0, 5; 0, 0, 0) arrow.l - beta R_2 + R_0 \ $
$ \ mat(1, 0, 0; 0, 2, 0; 0, 0, 5; 0, 0, 0) $

so the dimension is 3

for $bold(A_2)$

$ \ mat(3, -3, 0; 1, 2, 3; 7, -5, 2; 3, -1, 2) arrow.l -R_3 + R_0 \ $
$ \ mat(0, -2, -2; 1, 2, 3; 7, -5, 2; 3, -1, 2) arrow.l -3R_1 + R_3 \ $
$ \ mat(0, -2, -2; 1, 2, 3; 7, -5, 2; 0, 5, -7) arrow.l -7R_1 + R_2 \ $
$ \ mat(0, -2, -2; 1, 2, 3; 0, -19, -19; 0, 5, -7) arrow.l R_1 "switch" R_0 \ $
$ \ mat(1, 2, 3; 0, -2, -2; 0, -19, -19; 0, 5, -7) arrow.l alpha R_1 + R_2 \ $
$ \ mat(1, 2, 3; 0, -2, -2; 0, 0, 0; 0, 5, -7) arrow.l R_3 "switch" R_3 \ $
$ \ mat(1, 2, 3; 0, -2, -2; 0, 5, -7; 0, 0, 0) arrow.l 5 / 2 R_1 "switch" R_2 \ $
$ \ mat(1, 2, 3; 0, -2, -2; 0, 0, -12; 0, 0, 0) arrow.l beta R_2 + R_1 $
$ \ mat(1, 2, 3; 0, -2, 0; 0, 0, -12; 0, 0, 0) arrow.l alpha R_1 + R_0 $
$ \ mat(1, 0, 3; 0, -2, 0; 0, 0, -12; 0, 0, 0) arrow.l gamma R_2 + R_0 $
$ \ mat(1, 0, 0; 0, -2, 0; 0, 0, -12; 0, 0, 0) $


so the dimension is also 3

=== b. Determine basis of $U_1$ and $U_2$

check above answer

=== c. Determine the basis for $U_1 inter U_2$



$ \ mat(1, 0, 1, 3, -3, 0; 1, -2, -1, 1, 2, 3; 2, 1, 3, 7, -5, 2; 1, 0, 1, 3, -1, 2) arrow.l - R_1 + R_3 \ $
$ \ mat(1, 0, 1, 3, -3, 0; 1, -2, -1, 1, 2, 3; 2, 1, 3, 7, -5, 2; 0, 2, 2, 2, -3, -1) arrow.l - 2R_1 + R_2 \ $
$ \ mat(1, 0, 1, 3, -3, 0; 1, -2, -1, 1, 2, 3; 0, 5, 5, 5, -9, -4; 0, 2, 2, 2, -3, -1) arrow.l - R_1 + R_0 \ $
$ \ mat(0, 2, 2, 2, -5, -3; 1, -2, -1, 1, 2, 3; 0, 5, 5, 5, -9, -4; 0, 2, 2, 2, -3, -1) arrow.l R_1 "switch" R_0 \ $
$ \ mat(1, -2, -1, 1, 2, 3; 0, 2, 2, 2, -5, -3; 0, 5, 5, 5, -9, -4; 0, 2, 2, 2, -3, -1) arrow.l -R_1 + R_3 \ $
$ \ mat(1, -2, -1, 1, 2, 3; 0, 2, 2, 2, -5, -3; 0, 5, 5, 5, -9, -4; 0, 0, 0, 0, 2, 2) arrow.l 9 / 2 R_3 + R_2 \ $
$ \ mat(1, -2, -1, 1, 2, 3; 0, 2, 2, 2, -5, -3; 0, 5, 5, 5, 0, 5; 0, 0, 0, 0, 2, 2) $

note that second, third and fourth column vector can be achieved through linear combination, so we can remove two of these as we please


$ \ mat(1, 1, 2, 3; 0, 2, -5, -3; 0, 5, 0, 5; 0, 0, 2, 2) $

notice we can obtain the last one by linear combination with following coefficients

$
  \ lambda_1 = 0 \
  \ lambda_2 = 1 \
  \ lambda_3 = 1 \
  \
$

$ \ mat(1, 1, 2; 0, 2, -5; 0, 5, 0; 0, 0, 2) $

so our basis vectors are

$ \ bold(x_k) = { bold(x_1), bold(x_4), bold(x_5)} \ $
