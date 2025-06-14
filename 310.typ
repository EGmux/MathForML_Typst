







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

== Rotate the vectors

$ \ bb(x_1) := mat(2; 3), bb(x_2) := mat(0; -1) \ $ by $30$ degrees

To solve this problem we just apply the rotation matrix

$ \ M_theta = mat(cos(theta), -sin(theta); sin(theta), cos(theta)) = mat(sqrt(3) / 2, -1 / 2; 1 / 2, sqrt(3) / 2) \ $

$
  \ M_theta bb(x_1) = mat(sqrt(3) / 2, -1 / 2; 1 / 2, sqrt(3) / 2) mat(2; 3) = mat(sqrt(3) - 3 / 2; 1 + 3sqrt(3) / 2) \
$

$ \ M_theta bb(x_2) = mat(sqrt(3) / 2, -1 / 2; 1 / 2, sqrt(3) / 2) mat(0; -1) = mat(1 / 2; -sqrt(3) / 2) \ $

