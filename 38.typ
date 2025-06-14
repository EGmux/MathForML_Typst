





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

== Using the Gram-Schimdit method, turn the basis $B = (bb(b_1),bb(b_2))$ of a two-dimensional subspace $U subset RR^3$ into an ONB $C = (bb(c_1),bb(c_2))$ of $U$, where

$ \ bb(b_1) := mat(1; 1; 1), bb(b_2) := mat(-1; 2; 0) \ $

Remember that this method essentialy works as follows

- 1 choose a basis vector and normalize it

- 2 choose a second basis vector and project it in the span of the first, take the vector that has equal magnitude and diopposite direction to the projected vector and add to the second basis vector, this creates an orthogonal vector to the span of the first basis vector, normalize such vector

- 3 repeat 2 for a new basis vector, make sure the projected vector happens in the span of previous orthornomal basis vector, do this until every basis vector is orthornomal.

we choose $bb(b_1)$ as the basis for the first span.

$ \ pi_"span"[bb(b_1)] (bb(b_2)) \ $

to find the span remember that we want the following to be true

$
  \ pi_"span"[bb(b_1)] (bb(b_2)) = Sigma_i bb(b) bb(lambda)^T \
  \ <bb(x) - pi_"span"[bb(b_1)] (bb(x)),bb(b_1)> = 0 \
  \ bb(b_1)^T (bb(x) - bb(b) bb(lambda)^T) = 0 \
  \ bb(b_1)^T bb(x) = bb(b_1)^T bb(b) bb(lambda)^T
  \ bb(lambda)^T = (bb(b_1)^T bb(b))^(-1) bb(b_1)^T bb(x) \
  \ bb(P)_pi = bb(b_1) (bb(b_1)^T bb(b_1))^(-1) bb(b_1)^T \
  \ bb(P)_pi = (bb(b_1) bb(b_1)^T) / (bb(b_1)^T bb(b_1)) \
$

note that the term in parenthesis is a scalar when the span is a line.

we also need to normalize $bb(c_1) = (bb(b_1)) / (||bb(b_1)||) = bb(b_1) / sqrt(3)$


$ \ bb(v_1)bb(v_1)^T = 1 / 3 (mat(1; 1; 1)mat(1, 1, 1)) = 1 / 3 mat(1, 1, 1; 1, 1, 1; 1, 1, 1) \ $

now the factor

$ \ bb(v_1)^T bb(v_1) = 1 / 3 mat(1, 1, 1) mat(1; 1; 1) = 1 \ $

so the projection is $bb(P)_pi bb(b_2) = mat(1, 1, 1; 1, 1, 1; 1, 1, 1) mat(-1; 2; 0) = mat(1; 1; 1)$

and the orthogonal vector $bb(y_2) = bb(b_2) - pi_"span"[bb(b_1)] (bb(b_2)) = mat(-1; 2; 0) - mat(1 / 3; 1 / 3; 1 / 3) = mat(-4 / 3; 5 / 3; -1 / 3)$

now we normalize $bb(c_2) = bb(y_2) / (||bb(y_2)||) = (3bb(y_2)) / sqrt(42)$

$ \ <mat(1; 1; 1) mat(-4 / 3; 5 / 3; -1 / 3)> = -4 / 3 + 5 / 3 -1 / 3 =0 \ $

so indeed the vectors are orthogonal, the basis:
$
  \ bb(c_1) = 1 / sqrt(3) mat(1; 1; 1) \
  \ bb(c_2) = 1 / sqrt(42) mat(-4; 5; -1) \
$
