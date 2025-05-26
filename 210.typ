#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

== Are the following sets of vectors lineary independent ?

=== a.

$ \ x_1 = mat(2; -1; 3), x_2 = mat(1; 1; -2), x_3 = mat(3; -3; 8) \ $

we'll follow a systematic procedure and use gaussian elimination

$ \ mat(2, 1, 3; -1, 1, -3; 3, -2, 8) arrow.l -3 R_1 + R_2 \ $
$ \ mat(2, 1, 3; -1, 1, -3; 0, -5, 17) arrow.l -2 R_1 + R_0 \ $
$ \ mat(0, -1, 9; -1, 1, -3; 0, -5, 17) arrow.l R_1 "switch" R_0 \ $
$ \ mat(-1, 1, -3; 0, -1, 9; 0, -5, 17) arrow.l -5R_1 + R_2 \ $
$ \ mat(-1, 1, -3; 0, -1, 9; 0, 0, -28) arrow.l -5R_1 + R_2 \ $

the following set of vectors is *linear independent*, notice that we can't obtain $mat(-3; 9; -28)$ from the linear combination of the other 2 vectors. Analagous reasoning arrives at the same conclusion for the other two column vectors.

=== b.

$ \ x_1 = mat(1; 2; 1; 0; 0), x_2 = mat(1; 1; 0; 1; 1), x_3 = mat(1; 0; 0; 1; 1) \ $

$ \ mat(1, 2, 1, 0, 0; 1, 1, 0, 1, 1; 1, 0, 0, 1, 1) arrow.l -R_1 + R_2 \ $
$ \ mat(1, 2, 1, 0, 0; 1, 1, 0, 1, 1; 0, -1, 0, 0, 0) arrow.l -R_1 + R_0 \ $
$ \ mat(0, 1, 1, -1, -1; 1, 1, 0, 1, 1; 0, -1, 0, 0, 0) arrow.l R_1 "switch" R_0 \ $
$ \ mat(1, 1, 0, 1, 1; 0, 1, 1, -1, -1; 0, -1, 0, 0, 0) arrow.l R_1 "switch" R_2 \ $
$ \ mat(1, 1, 0, 1, 1; 0, -1, 0, 0, 0; 0, 1, 1, -1, -1) arrow.l R_1 "switch" R_2 \ $

notice that one of the column vectors is duplicated, that already implies linear dependency, so the set of vectors is *linear dependent*.
