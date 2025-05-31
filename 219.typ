

#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#import "@preview/commute:0.3.0": node, arr, commutative-diagram
#set math.equation(numbering: "(1)")

== Consider an endomorphism $Phi : RR^3 arrow.r RR^3$ whose transformation matrix (with respect to the standard basis in $RR^3$ is)

$ \ bold(A_Phi) = mat(1, 1, 0; 1, -1, 0; 1, 1, 1) \ $

- Determine $ker(Phi)$ and $im(Phi)$

let's apply gaussian elimination to transform into a row eschelon form matrix

$ \ mat(1, 1, 0; 1, -1, 0; 1, 1, 1) , -R_1 + R_2 \ $
$ \ mat(1, 1, 0; 1, -1, 0; 0, 2, 1) , -R_1 + R_0 \ $
$ \ mat(0, 2, 0; 1, -1, 0; 0, 2, 1) , R_1 "switch" R_0 \ $
$ \ mat(1, -1, 0; 0, 2, 0; 0, 2, 1) , -R_1 + R_2 \ $
$ \ mat(1, -1, 0; 0, 2, 0; 0, 0, 1) , -R_1 + R_2 \ $

we can see that no linear dependency is present, meaning the dimension of such matrix is 3, so the $im(Phi)$ is

$ \ im(Phi) = {lambda_1 mat(1; 0; 0) + lambda_2 mat(-1; 2; 0) + lambda_3 mat(0; 0; 1), lambda_i in RR} \ $

$ \ ker(Phi) = {mat(0; 0; 0)} \ $

- Determine the transformation matrix $A_Phi^~$ with respect to the basis

$ \ B = (mat(1; 1; 1), mat(1; 2; 1), mat(1; 0; 0)) \ $

we know the following commutative diagram

#align(center)[#commutative-diagram(
    node((0, 0), $B$),
    node((0, 1), $RR^3_1$),
    node((1, 0), $RR^3_2$),
    arr($B$, $RR^3_2$, $A_Phi^~$),
    arr($RR^3_1$, $RR^3_2$, $A_Phi$),
    arr($B$, $RR^3_1$, $A_T$),
  )]

to find $T$ we just need to consider the transformation matrix from $B$ to $RR^3$, where the basis vector in $RR^3$ are the canonical ones.

$b_i_B = lambda_1_j b_x + lambda_2_j b_y + lambda_3_j b_z arrow.double lambda_i = [b_i_x,b_i_y,b_i_z]$

so $A_T = mat(1, 1, 1; 1, 2, 1; 1, 0, 0)$

and the final answer is $A_Phi^~ = A^T A_Phi = mat(1, 1, 1; 1, 2, 1; 1, 0, 0) mat(1, -1, 0; 0, 2, 0; 0, 0, 1)= mat(1, 1, 1; 1, 3, 1; 1, -1, 0)$
