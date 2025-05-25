
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

Using Gaussian elimination, find the set $cal(S)$ of all solutions of the following inhomogeneous linear systems *$A x = b$*, where *A* and *b* are defined as follows:

=== a $ \ bold(A) = mat(0, 1, 0, 0, 1, 0; 0, 0, 0, 1, 1, 0; 0, 1, 0, 0, 0, 1), bold(b) = mat(2; -1; 1) \ $

considering an augmented matrix

$ \ mat(0, 1, 0, 0, 1, 0, 2; 0, 0, 0, 1, 1, 0, -1; 0, 1, 0, 0, 0, 1, 1; augment: #6) \ $

note that we can produce the particular solution by considering

$ \ mat(0, 1, 0, 0, 1, 0, 2; 0, 0, 0, 1, 1, 0, -1; 0, 0, 0, 0, 0, 1, -1; augment: #6) arrow.l -R_0 + R_2 \ $

$ \ mat(0, 1, 0, -1, 0, 0, 3; 0, 0, 0, 1, 1, 0, -1; 0, 0, 0, 0, 0, 1, -1; augment: #6) arrow.l -R_1 + R_0 \ $

note we have $mat(1; 0; 0), mat(-1; 1; 0), mat(0; 0; 1)$ as pivots, so the particular solution is

$ \ mat(0, 2, 0, -1, 0, -1)^T \ $

and we can easily find the general solutions , note there's no need to find the coordinates for the zero vector

$ \ mat(0; 1; 0) = 1mat(1; 0; 0) + 1mat(-1; 1; 0)+0mat(0; 0; 1) \ $

so the general solution, remember that must follow this form $mat(0; 0; 0) = lambda_1x$

$ \ mat(0, 1, 0, 1, -1, 0)^T\ $

so our final solution is

$ \ {(x in RR^5, lambda_1 in RR), bold(x) := lambda_1 mat(0; 1; 0; 1; -1; 0) + mat(0; 2; 0; -1; 0; -1)}\ $

=== b $ \ bold(A) = mat(0, 1, 0, 0, 1, 0; 0, 0, 0, 1, 1, 0; 0, 1, 0, 0, 0, 1), bold(b) = mat(2; -1; 1) \ $




