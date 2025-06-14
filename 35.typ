


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


== Consider the Euclidean vector space $RR^5$ with the dot product. A subspace $U subset RR^5$ and $bb(x) in RR^5$ are given by

$
  \ U = "span"[mat(0; -1; 2; 0; 2),mat(1; -3; 1; -1; 2),mat(-3; 4; 1; 2; 1),mat(-1; -3; 5; 0; 7)], bb(x) = mat(-1; -9; -1; 4; 1) \
$

=== a. Determine the orthogonal projection $pi_U(bb(x))$ onto $U$

To find the projection we need to find the basis vectors that span$(U)$, so guassian elimination is needed

$
  \ mat(0, 1, -3, -1; -1, -3, 4, -3; 2, 1, 1, 5; 0, -1, 2, 0; 2, 2, 1, 7)| 2l_1 + l_4 -> l_4 \
  \ mat(0, 1, -3, -1; -1, -3, 4, -3; 2, 1, 1, 5; 0, -1, 2, 0; 0, -4, 9, 1)| 2l_1 + l_2 -> l_2 \
  \ mat(0, 1, -3, -1; -1, -3, 4, -3; 0, -5, 9, -1; 0, -1, 2, 0; 0, -4, 9, 1)| l_1 "switch" l_0 \
  \ mat(-1, -3, 4, -3; 0, 1, -3, -1; 0, -5, 9, -1; 0, -1, 2, 0; 0, -4, 9, 1)| l_1 + l_3 -> l_3 \
  \ mat(-1, -3, 4, -3; 0, 1, -3, -1; 0, -5, 9, -1; 0, 0, -1, -1; 0, -4, 9, 1)| 4l_1 + l_4 -> l_4 \
  \ mat(-1, -3, 4, -3; 0, 1, -3, -1; 0, -5, 9, -1; 0, 0, -1, -1; 0, 0, -3, -3)| 4l_1 + l_4 -> l_4 \
  \ mat(-1, -3, 4, -3; 0, 1, -3, -1; 0, -5, 9, -1; 0, 0, -1, -1; 0, 0, -3, -3)| 5l_1 + l_2 -> l_2 \
  \ mat(-1, -3, 4, -3; 0, 1, -3, -1; 0, 0, -6, -6; 0, 0, -1, -1; 0, 0, -3, -3)| -3l_3 + l_4 -> l_4 \
  \ mat(-1, -3, 4, -3; 0, 1, -3, -1; 0, 0, -6, -6; 0, 0, -1, -1; 0, 0, 0, 0)| -6l_3 + l_2 -> l_2 \
$

$
  \ mat(-1, -3, 4, -3; 0, 1, -3, -1; 0, 0, 0, 0; 0, 0, -1, -1; 0, 0, 0, 0)| -6l_3 + l_2 -> l_2 \
  \ mat(-1, -3, 4, -3; 0, 1, -3, -1; 0, 0, -1, -1; 0, 0, 0, 0; 0, 0, 0, 0)| l_3 "switch" l_2 \ \
  \ mat(-1, -3, 4, -3; 0, 1, 0, 2; 0, 0, -1, -1; 0, 0, 0, 0; 0, 0, 0, 0)| 3l_1 + l_0 -> l_0 \ \
  \ mat(-1, 0, 4, 3; 0, 1, 0, 2; 0, 0, -1, -1; 0, 0, 0, 0; 0, 0, 0, 0)| 4l_2 + l_0 -> l_0 \ \
  \ mat(-1, 0, 0, -1; 0, 1, 0, 2; 0, 0, -1, -1; 0, 0, 0, 0; 0, 0, 0, 0)| 4l_2 + l_0 -> l_0 \ \
  \ mat(1, 0, 0, 1; 0, 1, 0, 2; 0, 0, 1, 1; 0, 0, 0, 0; 0, 0, 0, 0) \
$

so $dim("span"(U))=3$

now to find the orthogonal projection, remember that we want

#figure(
  image("projection.png", width: 80%),
  caption: [projection in distinct subspaces],
)
$
  \ pi_U(x) = Sigma_i lambda_i bb(b_i) = bb(lambda)^T bb(B) = bb(B)^T bb(lambda) = bb(B) bb(lambda)^T \
$

note that we have the following constraint

$
  \ <(bb(x) - pi_U(bb(x))),bb(b_1)> = 0 \
  \ <(bb(x) - pi_U(bb(x))),bb(b_2)> = 0 \
  \ <(bb(x) - pi_U(bb(x))),bb(b_3)> = 0 \
$

due to being an inner product we can apply the symmetry property

$
  \ bb(b_1)^T (bb(x) - pi_U(bb(x))) = 0 \
  \ bb(b_2)^T (bb(x) - pi_U(bb(x))) = 0 \
  \ bb(b_3)^T (bb(x) - pi_U(bb(x))) = 0 \
$

and the following homogeneous equation system, is homogeneous due to the fact that each $bb(b_i)$ is a basis vector and a set of basis vector is linear independent and as such the matrix has an inverse.

from that we deduce

$
  \ bb(B)^T (bb(x) - bb(B) bb(lambda)^T) = 0 \
  \ bb(B)^T bb(x) = bb(B)^T bb(B) bb(lambda)^T \
  \ (bb(B)^T bb(B))^(-1)bb(B)^T bb(x) = bb(lambda)^T \
  \ bb(pi_U (x)) = bb(B) (bb(B)^T bb(B))^(-1)bb(B)^T bb(x) = \
$

the transpose of $bb(B)$ is

$ \ mat(1, 0, 0, 0, 0; 0, 1, 0, 0, 0; 0, 0, 1, 0, 0) \ $

so $bb(B)^T bb(B) = bb(I)$

and $bb(B) bb(B)^T = mat(1, 0, 0, 0, 0; 0, 1, 0, 0, 0; 0, 0, 1, 0, 0; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0)$


the resulting multplication is the identity, so $bb(x_pi_U) = mat(-1; -9; -1; 0; 0)$

== d. Determine the distance $d(bb(x), U)$

as illustrated in the diagram all we have to do is find the norm of the difference between

$ \ ||bb(x) - pi_U (x)|| = ||mat(-1; -9; -1; 4; 1) - mat(-1; -9; -1; 0; 0)|| = ||mat(0; 0; 0; 4; 1)|| \ $

now we take the square root of the inner product of the resulting vector

$ \ ||bb(x) - pi_U (x)|| = sqrt(dp(bb(x_"dist"))) = sqrt(4^2 + 1^2) = sqrt(bb(x)^T bb(x)) = sqrt(17) \ $

