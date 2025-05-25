#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

== Find all solutions in $x = mat(x_1; x_2; x_3) in RR^3$ of the equation system $bold(A)x = 12x$, where

$ \ bold(A) =mat(6, 4, 3; 6, 0, 9; 0, 8, 0) \ $

and $Sigma^3_(i=1) x_i = 1$

considering the augmented matrix

$ \ mat(6, 4, 3, 12x_1; 6, 0, 9, 12x_2; 0, 8, 0, 12x_3; augment: #3) arrow.l -R_0 + R_1 \ $
$ \ mat(6, 4, 3, 12x_1; 0, -4, 6, 12(x_2-x_1); 0, 8, 0, 12x_3; augment: #3) arrow.l -2R_1 + R_2 \ $
$ \ mat(6, 4, 3, 12x_1; 0, -4, 6, 12(x_2-x_1); 0, 0, 12, 12(x_3 + 2x_2 -2x_1); augment: #3) arrow.l 2R_1 + R_2 \ $

note if we try to solve this system of equations we arrive at the following constraints

$ \ x_1 = x_2, x_3 = (2x_2) / 3 \ $

$ \ { bold(x) in RR^3, lambda_1 in R mid(|) bold(x) := lambda_1 mat(1; 1; 2 / 3) } \ $



