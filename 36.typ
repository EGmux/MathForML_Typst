



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

== Consider $RR^3$ with the inner product

$ \ <bb(x),bb(y)> := bb(x)^T mat(2, 1, 0; 1, 2, -1; 0, -1, 2)bb(y) \ $

Furthemore, we define $bb(e_1), bb(e_2), bb(e_3)$ as the standard/canonical basis in $RR^3$.

=== a. Determine the orthogonal projection $pi_U (bb(e_2))$ of $bb(e_2)$ onto

$ \ U = "span"[bb(e_1),bb(e_3)] \ $

the span is a plane, we note that we're not dealing with an orthogonal basis for $RR^3$ as a quick inspection in $bb(A)$ show us that not all $<bb(e_i),bb(e_2)> = 0$

remember that we want:
$ \ pi_U (bb(x)) = Sigma_i b_i lambda_i = bb(B) bb(lambda)^T \ $

and

$ \ <bb(x) - pi_U (bb(x)), b_i> = b_i^T (bb(x) - pi_U (bb(x))) = 0 \ $

$
  \ bb(B)^T (bb(x) - bb(B) bb(lambda)^T) = 0 \
  \ bb(B)^T bb(x) = bb(B)^T bb(B) bb(lambda)^T \
  \ (bb(B)^T bb(B))^(-1) bb(B)^T bb(x) = bb(lambda)^T \
$

so the desired projection matrix is $bb(P_pi) = bb(B) (bb(B)^T bb(B))^(-1) bb(B)^T$

note that $<bb(e_1),bb(e_3)> = 0$ as per inspection, meaning both vectors are orthogonal to each other.

we can apply bilinearity as we have an inner product

$ \ <bb(x),bb(e_1)> - <bb(pi_U (bb(x))), bb(e_1)> = 0 \ $
$ \ <bb(x),bb(e_3)> - <bb(pi_U (bb(x))), bb(e_3)> = 0 \ $

through inspection

$
  \ 1 = <pi_U (bb(x)), bb(e_1))> \
  \ -1 = <pi_U (bb(x)), bb(e_3)> \
$

and we can apply the defined inner product and find a system of equations

$
  \ mat(1, 0, 0) mat(2, 1, 0; 1, 2, -1; 0, -1, 2) mat(pi_x; pi_y; pi_z) = mat(2, 1, 0) mat(pi_x; pi_y; pi_z) = 2pi_x + pi_y \
  \ 2 pi_x + pi_y + 0 pi_z = 1 \
$

$
  \ mat(0, 0, 1) mat(2, 1, 0; 1, 2, -1; 0, -1, 2) mat(pi_x; pi_y; pi_z) = mat(0, -1, 2)mat(pi_x; pi_y; pi_z) = -pi_y + 2 pi_z \
  \ 0 pi_x - pi_y + 2 pi_z = -1 \
$

we are stuck, however we can find an orthogonal complement to $pi_U (x)$ if we rotate $bb(e_2)$.

to do so we find the angle between $bb(e_2)$ and $bb(e_1) + bb(e_3)$

$ \ mat(1, 0, 1) mat(2, 1, 0; 1, 2, -1; 0, -1, 2) mat(1; 0; 1) = mat(2, 0, 2) mat(1; 0; 1) = 4 \ $

$
  \ theta = "acos"((<bb(e_2),bb(e_1 + e_3)>) = pi / 2 \
$

so we don't even need to rotate


$
  \ mat(0, 1, 0)mat(2, 1, 0; 1, 2, -1; 0, -1, 2)mat(pi_x; pi_y; pi_z) = mat(1, 2, -1)mat(pi_x; pi_y; pi_z) = pi_x + 2pi_y -pi_z \
  \ pi_x + 2pi_y -pi_z = 0 \
$

$
  \ mat(2, 1, 0, 1; 0, -1, 2, -1; 1, 2, -1, 0; augment: #3) -2l_2 + l_0 -> l_0 \
  \ mat(0, -3, 2, 1; 0, -1, 2, -1; 1, 2, -1, 0; augment: #3) 2l_1 + l_2 -> l_2 \
  \ mat(0, -3, 2, 1; 0, -1, 2, -1; 1, 0, -3, 2; augment: #3) -3l_1 + l_0 -> l_0 \
  \ mat(0, 0, -4, 4; 0, -1, 2, -1; 1, 0, -3, 2; augment: #3) -3l_1 + l_0 -> l_0 \
$

so $pi_x = -1, pi_y = 1, pi_z = -1$

== Compute the distance $d(bb(e_2), U)$

$ \ ||bb(x) - pi_U (bb(x))|| = ||mat(0, 1, 0) - mat(-1, 1, -1)|| = ||mat(1, 0, 1)|| = sqrt(2) \ $

$ \ mat(1, 0, 1) mat(2, 1, 0; 0, -1, 2; 1, 2, -1) mat(1; 0; 1) = mat(3, 3, -1) mat(1; 0; 1) = 3 -1 = 2 \ $

=== Draw the scenario: standard basis vectors and $pi_U (bb(e_2))$

#figure(image("36.png", width: 80%))
