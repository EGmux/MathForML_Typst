

#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

Using Gaussian elimination, find the set $cal(S)$ of all solutions of the following inhomogeneous linear systems *$A x = b$*, where *A* and *b* are defined as follows:

=== a $ \ bold(A) = mat(1, 1, -1, -1; 2, 5, -7, -5; 2, -1, 1, 3; 5, 2, -4, 2), bold(b) = mat(1; -2; 4; 6) \ $

first we provide the augmented matrix

$ \ mat(1, 1, -1, -1, 1; 2, 5, -7, -5, -2; 2, -1, 1, 3, 4; 5, 2, -4, 2, 6; augment: #4) \ $

$ \ mat(1, 1, -1, -1, 1; 2, 5, -7, -5, -2; 2, -1, 1, 3, 4; 5, 2, -4, 2, 6; augment: #4) arrow.l -5R_0 + R_3 \ $
$ \ mat(1, 1, -1, -1, 1; 2, 5, -7, -5, -2; 2, -1, 1, 3, 4; 0, -3, 1, 7, 1; augment: #4) arrow.l -R_1 + R_2 \ $
$ \ mat(1, 1, -1, -1, 1; 2, 5, -7, -5, -2; 0, -6, 8, 8, 7; 0, -3, 1, 7, 1; augment: #4) arrow.l -R_1 + R_2 \ $
$ \ mat(1, 1, -1, -1, 1; 0, 3, -5, -3, -4; 0, -6, 8, 8, 7; 0, -3, 1, 7, 1; augment: #4) arrow.l -2R_0 + R_1 \ $
$ \ mat(1, 1, -1, -1, 1; 0, -6, 8, 8, 7; 0, 3, -5, -3, -4; 0, -3, 1, 7, 1; augment: #4) arrow.l R_2 "switch" R_1 \ $
$ \ mat(1, 1, -1, -1, 1; 0, -6, 8, 8, 7; 0, 3, -5, -3, -4; 0, 0, -4, 4, -3; augment: #4) arrow.l R_2 + R_3\ $
$ \ mat(1, 1, -1, -1, 1; 0, 3, -5, -3, -4; 0, -6, 8, 8, 7; 0, 0, -4, 4, -3; augment: #4) arrow.l R_2 "switch" R_1\ $
$ \ mat(1, 1, -1, -1, 1; 0, 3, -5, -3, -4; 0, 0, -2, 2, 1; 0, 0, -4, 4, -3; augment: #4) arrow.l 2R_1 + R_2\ $
$ \ mat(1, 1, -1, -1, 1; 0, 3, -5, -3, -4; 0, 0, -2, 2, 1; 0, 0, 0, 0, -5; augment: #4) arrow.l -2R_1 + R_3\ $

note we can't solve this system of equations because is inconsistent, last row is impossible


=== b $ \ bold(A) = mat(1, -1, 0, 0, 1; 1, 1, 0, -3, 0; 2, -1, 0, 1, -1; -1, 2, 0, -2, -1), bold(b) = mat(3; 6; 5; -1) \ $

again we provide the augmented matrix

$ \ mat(1, -1, 0, 0, 1, 3; 1, 1, 0, -3, 0, 6; 2, -1, 0, 1, -1, 5; -1, 2, 0, -2, -1, -1; augment: #5) \ $
$
  \ mat(1, -1, 0, 0, 1, 3; 1, 1, 0, -3, 0, 6; 2, -1, 0, 1, -1, 5; -1, 2, 0, -2, -1, -1; augment: #5) arrow.l R_2 + R_3 \
$
$
  \ mat(1, -1, 0, 0, 1, 3; 1, 1, 0, -3, 0, 6; 2, -1, 0, 1, -1, 5; 0, 3, 0, -5, -1, 5; augment: #5) arrow.l -2R_1 + R_2 \
$
$
  \ mat(1, -1, 0, 0, 1, 3; 1, 1, 0, -3, 0, 6; 0, -3, 0, 7, -1, -7; 0, 3, 0, -5, -1, 5; augment: #5) arrow.l R_2 + R_3 \
$
$
  \ mat(1, -1, 0, 0, 1, 3; 1, 1, 0, -3, 0, 6; 0, -3, 0, 7, -1, -7; 0, 0, 0, 2, -2, -2; augment: #5) arrow.l -R_0 + R_1 \
$

$
  \ mat(1, -1, 0, 0, 1, 3; 0, 0, 0, -3, 0, 3; 0, -3, 0, 7, -1, -7; 0, 0, 0, 2, -2, -2; augment: #5) arrow.l R_1 "switch" R_2 \
$

$
  \ mat(1, -1, 0, 0, 1, 3; 0, -3, 0, 7, -1, -7; 0, 0, 0, -3, 0, 3; 0, 0, 0, 2, -2, -2; augment: #5) arrow.l 2 / 3R_2 + R_3 \
$

$
  \ mat(1, -1, 0, 0, 1, 3; 0, -3, 0, 7, -1, -7; 0, 0, 0, -3, 0, 3; 0, 0, 0, 0, -2, 0; augment: #5) arrow.l R_1 "switch" R_2 \
$

from this we can find the following relationships

$ \ x_4 in RR, x_3 = -1, x_1 = -x_4 / 3, x_2 in RR, x_0 = 3 - (4x_4) / 3 \ $

note that a particular solution is non-existent due to the dependency on $x_4 "and" x_2$ thus, the system has multiple solutions,
we can express that in the following set

$
  \ { bold(x) in RR^4, lambda_1, lambda_2 in R mid(| bold(x) := lambda_1 mat(3 / lambda_1 - 4 / 3; -1 / 3; 0; -1 / lambda_1; 1)) + lambda_2mat(0; 0; 1; 0; 0)} \
$
