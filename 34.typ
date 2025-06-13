

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


== Compute the angle between

$ \ bb(x) = mat(1; 2), bb(y) = mat(-1; -1) \ $

using

=== a. $<bb(x),bb(y)>:= bb(x)^T bb(y)$

$ \ theta = "acos"((<bb(x),bb(y)>) / (||bb(x)|| ||bb(y)||)) = "acos"(-3 / (sqrt(10))) \ = 161.5650 "degree" $

=== b. $<bb(x),bb(y)> := bb(x)^T bb(B) bb(y), bb(B) := mat(2, 1; 1, 3)$

$ \ [1,2] mat(2, 1; 1, 3) mat(-1; -1) = mat(3, 7)mat(-1; -1) =-3-7 =-10 \ $

$ \ mat(1, 2)mat(2, 1; 1, 3)mat(1; 2) = mat(3, 7)mat(1; 2) = 3 + 14 = 17 \ $

$ \ mat(-1, -1)mat(2, 1; 1, 3)mat(-1; -1) = mat(-3, -4)mat(-1; -1)=3+4=7 \ $

$ \ theta = "acos"(-10 / sqrt(17 dot 7)) \ = 156.44 "degree" $
