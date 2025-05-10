
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
Compute the following matrix products, if possible:

== a.
$ \ mat(1, 2; 4, 5; 7, 8) mat(1, 1, 0; 0, 1, 1; 1, 0, 1) \ $

note that the dimensions are $3 times 2$ and $3 times 3$ so is not possible to compute


== b.

$ \ mat(1, 2, 3; 4, 5, 6; 7, 8, 9) mat(1, 1, 0; 0, 1, 1; 1, 0, 1) \ $

note that the dimensions are $3 times 3 "and" 3 times 3$ so is indeed possible to compute

$
  \ mat(1 + 3, 1 + 2, 2 + 3; 4 + 6, 4 + 5, 5 + 6; 7 + 9, 7 + 8, 8+ 9) \
  \ mat(4, 3, 5; 10, 9, 11; 16, 15, 17) \
$

== c.

$ \ mat(1, 1, 0; 0, 1, 1; 1, 0, 1) mat(1, 2, 3; 4, 5, 6; 7, 8, 9) \ $

note that the dimensions are $3 times 3 "and" 3 times 3$ so is indeed possible to compute

$
  \ mat(1 + 4, 2+ 5, 3 +6; 4 + 7, 5 + 8, 6 +9; 1 + 7, 2 + 8, 3 + 9) \
  \ mat(5, 7, 9; 11, 13, 15; 8, 10, 12) \
$

== d.

$ \ mat(1, 2, 1, 2; 4, 1, -1, -4) mat(0, 3; 1, -1; 2, 1; 5, 2) \ $

note that the dimensions are $2 times 4$ and $4 times 2$ so is indeed possible to compute

$
  \ mat(2 + 2 + 10, 3 + -2 + 1 + 4; 1 + -2 + -20, 12 + -1 + -1 -8) \
  \ mat(14, 6; -21, 2) \
$

== e.

$ \ mat(0, 3; 1, -1; 2, 1; 5, 2) mat(1, 2, 1, 2; 4, 1, -1, -4) \ $

note that the dimension are $4 times 2$ and $2 times 4$ so is indeed possible to compute

$
  \ mat(12, 3, -3, -12; 1 -4, 2 -1, 1 + 1, 2 + 4; 2 + 4, 4 + 1, 2 -1, 4 -4; 5 + 8, 10 + 2, 5-2, 10 -8) \
  \ mat(12, 3, -3, -12; -3, 1, 2, 6; 6, 5, 1, 0; 13, 12, 3, 2) \
$
