#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")

Consider the set $cal(G)$ of $3 times 3$ matrices defined as follows:
$
  cal(G) = { mat(
      1, x, z;
      0, 1, y;
      0, 0, 1;
    ) in RR^(3 times 3) mid(|) x,y,z in RR }
$

We define $dot$ as the standard matrix multiplication.
Is $(cal(G), dot)$ a group? If yes, is it Abelian? Justify your answer.

== We now prove is a group

a group must hold the following properties

#list(
  [identity property],
  [inverse element],
  [closure],
  [associativity],
)

we now prove identity element, $a * e = a$

$
  \ mat(1, x, z; 0, 1, y; 0, 0, 1) dot mat(1, a, b; 0, 1, c; 0, 0, 1) \
  \ mat(1, a + x, (b + x c + z); 0, 1, c + y; 0, 0, 1) \
  \ #list([a + x = x], [b + x c +z = z], [c + y = y]) \
  \ a = 0, c = 0, b = 0 \
  \ mat(1, 0, 0; 0, 1, 0; 0, 0, 1) \
$

so the identity property holds


now we prove inverse property, $a * a^(-1) = e$

$
  \ mat(1, x, z; 0, 1, y; 0, 0, 1) dot mat(1, a, b; 0, 1, c; 0, 0, 1) = mat(1, 0, 0; 0, 1, 0; 0, 0, 1) \
  \ mat(1, a + x, (b + x c + z); 0, 1, c + y; 0, 0, 1) = mat(1, 0, 0; 0, 1, 0; 0, 0, 1) \
  \ #list([a + x = 0], [b + x c +z = 0], [c + y = 0]) \
  \ a = -x, c = -y, b = -z +x y \
  \ mat(1, -x, -z + x y; 0, 1, -y; 0, 0, 1) \
$

so the inverse property holds

now we prove the closure property, $a * b in RR^(3 times 3)$


$
  \ mat(1, x, z; 0, 1, y; 0, 0, 1) dot mat(1, a, b; 0, 1, c; 0, 0, 1) \
  \ mat(1, a + x, (b + x c + z); 0, 1, c + y; 0, 0, 1)\
  \ #list([a + x in $RR$], [b + x c +z in $RR$], [c + y in $RR$]) \
$

so the closure property holds

now we prove associativity, $a * (b * c) = (a * b) * c$

$
  \ a * (b * c) \
  \ mat(1, x, z; 0, 1, y; 0, 0, 1) dot (mat(1, a, b; 0, 1, c; 0, 0, 1) dot mat(1, e, f; 0, 1, g; 0, 0, 1)) \
  \ mat(1, x, z; 0, 1, y; 0, 0, 1) dot mat(1, a + e, (b + a g + f); 0, 1, g + c; 0, 0, 1)\
  \ mat(1, a + e + x, ((b + a g + f) +x ( g + c) + z); 0, 1, g + c + y; 0, 0, 1) \
$

$
  \ (a * b) * c \
  \ (mat(1, x, z; 0, 1, y; 0, 0, 1) dot mat(1, a, b; 0, 1, c; 0, 0, 1)) dot mat(1, e, f; 0, 1, g; 0, 0, 1) \
  \ mat(1, a + x, b + x c + z; 0, 1, c + y; 0, 0, 1) dot mat(1, e, f; 0, 1, g; 0, 0, 1)\
  \ mat(1, e +a + x, (f + g (a + x) +b + x c + z); 0, 1, g + c + y; 0, 0, 1) \
$

now let's analyze the $a_(1,2)$ element of both matrices

$
  \ ((b + a g + f) +x ( g + c) + z) = b + a g + f + x g + x c + z & #comment(", matrix 1") \
  \ (f + g (a + x) +b + x c + z) = f + g a + g x + b + x c + z \
$

note that considering commutativity of multiplication and addition both values are the same, so associativity also holds.

now we check if the group is abelian, $a * b = b * a$

$
  \ mat(1, x, z; 0, 1, y; 0, 0, 1) dot mat(1, a, b; 0, 1, c; 0, 0, 1) \
  \ mat(1, x + a, b + x c + z; 0, 1, c + y; 0, 0, 1)\
$

$
  \ mat(1, a, b; 0, 1, c; 0, 0, 1) dot mat(1, x, z; 0, 1, y; 0, 0, 1) \
  \ mat(1, a + x, z + a y + b; 0, 1, c + y; 0, 0, 1) \
$

now we compare $a_(1,2)$ again

$ \ b + x c +z = z + a y + b \ $

that would require $a y = x c$, so is not abelian.

