
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

== Compute the distance between

$ \ bb(x) = mat(1; 2; 3), bb(y) = mat(-1; -1; 0) \ $

using

$ \ a. <bb(x),bb(y)> := bb(x)^T bb(y) \ $

$ \ [1,2,3] mat(-1; -1; 0) \ $

assuming the canonical basis, then

$ \ bb(x) = 1 bb(e_1) + 2 bb(e_2) + 3 bb(e_3) = Sigma_i lambda_i bb(e_i) \ $
$ \ bb(y) = -1 bb(e_1) -2 bb(e_2) + 0 bb(e_3) = Sigma_j phi_j bb(e_j) \ $

$ \ Sigma_i Sigma_j lambda_j <bb(e_i),bb(e_j)> phi_j \ $


$ \ bb(x)^T mat(1, 0, 0; 0, 1, 0; 0, 0, 1)bb(y) = mat(1, 2, 3)mat(-1; -1; 0) = -1-2 = -3 \ $

using

$ \ b. bb(x)^T bb(A) bb(y), bb(A):= mat(2, 1, 0; 1, 3, -1; 0, -1, 2) \ $

$ \ [1,2,3] mat(2, 1, 0; 1, 3, -1; 0, -1, 2) mat(-1; -1; 0) = mat(4, 4, 4)mat(-1; -1; 0) = -4 -4 = -8 \ $
