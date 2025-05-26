
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

== Write

$ \ bold(y) = mat(1; -2; 5) \ $

as linear combination of

$ \ bold(x_1) = mat(1; 1; 1), bold(x_2) = mat(1; 2; 3), bold(x_3) = mat(2; -1; 1) \ $

$ \ Sigma_i^3 lambda_i bold(x_i) = bold(y) \ $

again we adopt the usual gaussian elimination method so we "simplify" the matrix

$ \ mat(1, 1, 2; 1, 2, -1; 1, 3, 1) arrow.l -R_1 + R_2 \ $
$ \ mat(1, 1, 2; 1, 2, -1; 0, 1, 2) arrow.l -R_1 + R_0 \ $
$ \ mat(0, -1, 3; 1, 2, -1; 0, 1, 2) arrow.l -R_1 "switch" R_0 \ $
$ \ mat(1, 2, -1; 0, -1, 3; 0, 1, 2) arrow.l -R_1 + R_2 \ $
$ \ mat(1, 2, -1; 0, -1, 4; 0, 0, 5) arrow.l R_1 + R_2 \ $

the coefficients are

$
  \ lambda_1 = -10 \
  \ lambda_2 = 6 \
  \ lambda_3 = 1 \
  \
$
