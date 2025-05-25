#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

== Determine the inverse of the following matrices if possible:

=== a.

$ \ bold(A) = mat(2, 3, 4; 3, 4, 5; 4, 5, 6) \ $

considering that the inverse is defined as $bold(A)bold(A)^(-1) = bold(I)$ thus consider the following augmented matrix

$ \ mat(2, 3, 4, 1, 0, 0; 3, 4, 5, 0, 1, 0; 4, 5, 6, 0, 0, 1; augment: #3) \ $
$ \ mat(2, 3, 4, 1, 0, 0; 3, 4, 5, 0, 1, 0; 4, 5, 6, 0, 0, 1; augment: #3) arrow.l -R_1 + R_2 \ $
$ \ mat(2, 3, 4, 1, 0, 0; 3, 4, 5, 0, 1, 0; 1, 1, 1, 0, -1, 1; augment: #3) arrow.l -R_1 + R_2 \ $
$ \ mat(2, 3, 4, 1, 0, 0; 1, 1, 1, -1, 1, 0; 1, 1, 1, 0, -1, 1; augment: #3) arrow.l -R_0 + R_1 \ $
$ \ mat(2, 3, 4, 1, 0, 0; 1, 1, 1, -1, 1, 0; 0, 0, 0, 1, 2, 1; augment: #3) arrow.l -R_1 + R_2 \ $

note that we just proved this matrix is not invertible, last row gives no information or another way of saying it is we have 3 variables, but only two equations, a case of linear dependency so is a singular matrix meaning is non invertible.

=== b.

$ \ bold(A) = mat(1, 0, 1, 0; 0, 1, 1, 0; 1, 1, 0, 1; 1, 1, 1, 0) \ $

repeating the augmented matrix

$ \ mat(1, 0, 1, 0, 1, 0, 0, 0; 0, 1, 1, 0, 0, 1, 0, 0; 1, 1, 0, 1, 0, 0, 1, 0; 1, 1, 1, 0, 0, 0, 0, 1; augment: #4) \ $

$
  \ mat(1, 0, 1, 0, 1, 0, 0, 0; 0, 1, 1, 0, 0, 1, 0, 0; 1, 1, 0, 1, 0, 0, 1, 0; 1, 1, 1, 0, 0, 0, 0, 1; augment: #4) arrow.l -R_1 + R_3 \
$
$
  \ mat(1, 0, 1, 0, 1, 0, 0, 0; 1, 0, 0, 0, 0, 1, 0, 1; 1, 1, 0, 1, 0, 0, 1, 0; 1, 1, 1, 0, 0, 0, 0, 1; augment: #4) arrow.l -R_0 + R_3 \
$
$
  \ mat(0, 1, 0, 0, 1, 0, 0, 1; 1, 0, 0, 0, 0, 1, 0, 1; 1, 1, 0, 1, 0, 0, 1, 0; 1, 1, 1, 0, 0, 0, 0, 1; augment: #4) arrow.l -R_0 -R_1 + R_3 \
$
$
  \ mat(0, 1, 0, 0, 1, 0, 0, 1; 1, 0, 0, 0, 0, 1, 0, 1; 1, 1, 0, 1, 0, 0, 1, 0; 0, 0, 1, 0, -1, -1, 0, -1; augment: #4) arrow.l -R_0 -R_1 + R_2 \
$
$
  \ mat(0, 1, 0, 0, 1, 0, 0, 1; 1, 0, 0, 0, 0, 1, 0, 1; 0, 0, 0, 1, -1, -1, 1, -2; 0, 0, 1, 0, -1, -1, 0, -1; augment: #4) arrow.l R_0 "switch" R_1 \
$
$
  \ mat(1, 0, 0, 0, 0, 1, 0, 1; 0, 1, 0, 0, 1, 0, 0, 1; 0, 0, 0, 1, -1, -1, 1, -2; 0, 0, 1, 0, -1, -1, 0, -1; augment: #4) arrow.l R_2 "switch" R_3 \
$
$
  \ mat(1, 0, 0, 0, 0, 1, 0, 1; 0, 1, 0, 0, 1, 0, 0, 1; 0, 0, 1, 0, -1, -1, 0, -1; 0, 0, 0, 1, -1, -1, 1, -2; augment: #4) arrow.l R_3 "switch" R_4 \
$

and the matrix $mat(0, 1, 0, 1; 1, 0, 0, 1; -1, -1, 0, -1; -1, -1, 1, -2)$ is the inverse of $bold(A)$
