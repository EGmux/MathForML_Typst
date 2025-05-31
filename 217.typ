


#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

== Consider the linear mapping

$
  \ Phi: RR^3 arrow.r RR^4 \
  \ Phi(mat(x_1; x_2; x_3)) = mat(3x_1+2x_2+x_3; x_1+x_2+x_3; x_1-3x_2; 2x_1+3x_2+x_3) \
  \ x_i = mu_(i j) b_1 + mu_(i j) b_2 + mu_(i j) b_3 \
$

- Find the transformation matrix $A_Phi$

By definition this is the matrix mapping the basis vectors in $RR^3$ to $RR^4$

$ \ Phi(b_i) = lambda_(i,1) c_1 + lambda_(i,2) c_2 + lambda_(i,3) c_3 + lambda_(i,4) c_4 \ $

note that $dim(Phi(b_i))=4$

we know a canonical basis for $RR^3$

$ \ b_0 = mat(1; 0; 0), b_1 = mat(0; 1; 0), b_2 = mat(0; 0; 1) \ $

so we know $mu_1 = mat(1; 0; 0), mu_2 = mat(0; 1; 0), mu_3 = mat(0; 0; 1)$

so $b_i = x_i$


$ \ Phi(mat(b_1; b_2; b_3)) = mat(3b_1+2b_2+b_3; b_1+b_2+b_3; b_1-3b_2; 2b_1+3b_2+b_3) \ $

through inspection we find the transformation matrix

$ \ A_Phi = mat(3, 2, 1; 1, 1, 1; 1, -3, 0; 2, 3, 1) \ $

- Determine $"rk"(A_Phi)$

we can use the rank nullity theorem to solve this

$ \ dim(im(Phi)) = dim(RR^4) - dim(ker(Phi)) \ $

to find the kernel we can see apply gaussian elimination and check in the row eschelon form if a basis vector can be writtern as linear combination of others

$ \ mat(3, 2, 1; 1, 1, 1; 1, -3, 0; 2, 3, 1), -2 R_1 + R_3 \ $
$ \ mat(3, 2, 1; 1, 1, 1; 1, -3, 0; 0, 1, -1), -3 R_1 + R_0 \ $
$ \ mat(0, -1, -2; 1, 1, 1; 1, -3, 0; 0, 1, -1), -1 R_1 + R_2 \ $
$ \ mat(0, -1, -2; 1, 1, 1; 0, -4, -1; 0, 1, -1), R_1 "switch" R_0 \ $
$ \ mat(1, 1, 1; 0, -1, -2; 0, -4, -1; 0, 1, -1), R_1 + R_3 \ $
$ \ mat(1, 1, 1; 0, -1, -2; 0, -4, -1; 0, 0, -3), R_1 + R_3 \ $

thus the $dim(ker(Phi)) = 1$ the $bold(0)_(RR^3)$ is the only element present, we conclude

$ \ dim(im(Phi)) = 3 \ $ and that indeed true as we have 3 basis vectors.

- Compute the kernel and image of $Phi$. What are $dim(ker(Phi))$ and $dim(im(Phi))$?

$ \ ker(Phi) = {bold(0)} \ $

$ \ im(Phi) = {lambda_1 mat(1; 0; 0; 0) + lambda_2 mat(1; -1; -4; 0) + lambda_3 mat(1; -2; -1; -3)} \ $

the dimensions are 0 and 3 respectively
