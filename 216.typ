

#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

== Are the following mappings linear?

=== a. Let $a,b in RR$.

$ \ Phi: L^1([a,b]) arrow.r RR \ $

$ \ f arrow.r.bar Phi(f) = integral_a^b f(x) d x \ $

where $L^1([a,b])$ denotes the set of integrable functions on $[a,b]$.


by definition of linear transformation

$ \ phi(lambda v_1 + psi v_2) = lambda phi(v_1) + psi phi(v_2) \ $

this can be seen as scale both vectors, sum then and them apply the transformation or apply the transformation and then scale.

$ \ integral_a^b (lambda f(x) + psi g(x)) d x \ $

this proof is kinda trick, bu essentially we have to see each integration as a riemman sum

$ \ S = Sigma_i f(x_i) Delta x_i \ $

and a integration is nothing more than

$ \ integral_a^b f(x) d x = lim_(norm(Delta x) arrow.r 0) Sigma_i f(x_i^*) Delta x_i \ $
note that $f(x_i^*)$ means a point between a valid intervals, for instance $x_i^* in [x_1,x_2]$ where the brackets denote a closed interval

now we consider the riemman sum as the linear operator instead

$ \ lim_(norm(Delta x) arrow.r 0) Sigma_i ((lambda f(x_i^*) + psi g(x_i^*)) Delta x_i ) \ $

we know both functions by definition are integrable we also know that the riemman sum, similar to the integral is expected to return $x in RR$, thus we can apply distributivity of multiplication here

$ \ lim_(norm(Delta x) arrow.r 0) Sigma_i (lambda f(x_i^*) Delta x_i + psi g(x_i^*) Delta x_i ) \ $

by a handwave argument we know we'll have n instances of $lambda f(x^*) Delta x$ and the same for $psi g(x^*) Delta x$ which implies we can do the following

$ \ lim_(norm(Delta x) arrow.r 0) Sigma_i lambda f(x_i^*) Delta x_i + Sigma_i psi g(x_i^*) Delta x_i \ $
$ \ lim_(norm(Delta x) arrow.r 0) lambda Sigma_i f(x_i^*) Delta x_i + psi Sigma_i g(x_i^*) Delta x_i \ $

remember that by definition of integration we also have the folowing

$ \ lambda integral_a^b f(x) d x + psi integral_a^b g(x) d x \ $

so is indeed a linear transformation

=== b .

$ \ Phi: C^1 arrow.r C^0 \ $
$ \ f arrow.r.bar Phi(f) = f' \ $

where for $k >= 1, C^k$ denotes the set of $k$ times continuously differentiable functions, and $C^0$ denotes the set of continuous functions.

remember fundamental theorem of calculus

$ \ integral_a^b f'(x) d x = f(b) - f(a) \ $

and if is a linear transformation then

$ \ (lambda f + psi g)' = lambda f' + psi g' \ $

apply the fundamental theory of calculus once to LHS

$ \ integral_a^b (lambda f + psi g) d x = (lambda f(b) + psi g(b)) - (lambda f(a) + psi g(a)) $

rearranging

$ \ lambda ( f(b) - f(a)) + psi (g(b) - g(a)) \ $

now apply the fundamental theorem of calculus once to RHS

$ \ integral_a^b (lambda f' + psi g') d x \ $

remember the linearity of integration

$ \ integral_a^b lambda f' d x + integral_a^b psi g' d x \ $

and apply the fundamental theorem of calculus again

$ \ lambda (f(b) - f(a)) + psi (g(b) - g(a)) \ $

and indeed derivative is a linear operator

=== c.

$ \ Phi : RR arrow.r RR \ $

$ \ x arrow.r.bar Phi(x) = cos(x) \ $

again we need to check

$ \ cos(lambda x + psi y) = lambda cos(x) + psi cos(y) $

remembering trig identities

$ \ cos(alpha - beta) = cos alpha cos beta - sin alpha sin beta \ $
$ \ cos(alpha + beta) = cos alpha cos beta + sin alpha sin beta \ $
$ \ sin(alpha + beta) = sin alpha cos beta + cos alpha sin beta \ $
$ \ sin(alpha - beta) = sin alpha cos beta - cos alpha sin beta \ $

so cos is not linear as the trig identity show an extra dependency on the other operand is present when adding the arguments of cosine

=== d.

$ \ Phi : RR^3 arrow.r RR^2 \ $
$ \ bold(x) arrow.r.bar mat(1, 2, 3; 1, 4, 3) bold(x)\ $

this can be easily proven

$
  \ lambda mat(x_0 + 2x_1 + 3x_2; x_0 + 4x_1 + 3x_2) + psi mat(y_0 + 2y_1 + 3y_2; y_0 + 4y_1 + 3y_2) = mat(lambda x_0 + psi y_0 + 2(lambda x_1 + psi y_1) + 3(lambda x_2 + psi y_2); lambda x_0 + psi y_0 + 4(lambda x_1 + psi y_1) + 3(lambda x_2 + psi y_2)) \
$

$
  \ mat(1, 2, 3; 1, 4, 3) (bold(x) + bold(y)) = mat(1, 2, 3; 1, 4, 3) (lambda (x_0, x_1, x_2) + psi (y_0, y_1 ,y_2)^T) \
$
$
  \ mat(1, 2, 3; 1, 4, 3) (bold(x) + bold(y)) = mat(1, 2, 3; 1, 4, 3) (lambda x_0 + psi y_0, lambda x_1 + psi y_1, lambda x_2 + psi y_2)^T\
$

$
  \ mat(lambda x_0 + psi y_0 + 2(lambda x_1 + psi y_1) + 3 (lambda x_2 + psi y_2); lambda x_0 + psi y_0 + 4(lambda x_1 + psi y_1) + 3 (lambda x_2 + psi y_2)) \
$

so is a linear operator

=== e. Let $theta$ be in $[0,2pi[$ and

$ \ bold(x) arrow.r.bar mat(cos(theta), sin(theta); -sin(theta), cos(theta)) \ $


$
  \ lambda mat(cos(theta) x_0 + sin(theta) x_1; -sin(theta) x_0 + cos(theta) x_1) + psi mat(cos(theta) y_0 + sin(theta) y_1; -sin(theta) y_0 + cos(theta) y_1) = mat(lambda cos(theta) x_0 + lambda sin(theta) x_1 + psi cos(theta) y_0 + psi sin(theta) y_1; - lambda sin(theta) x_0 + lambda cos(theta) x_1 - psi sin(theta) y_0 + psi cos(theta) y_1) \
$

$
  \ mat(cos(theta), sin(theta); - sin(theta), cos(theta))(bold(x) + bold(y)) = mat(cos(theta), sin(theta); - sin(theta), cos(theta)) (lambda x_0 + psi y_0,lambda x_1 + psi y_1)^T \
$

$
  \ mat(
    lambda cos(theta) x_0 + psi cos(theta) y_0 + lambda sin(theta) x_1 + psi sin(theta) y_1;
    -lambda sin(theta) x_0 - psi sin(theta) y_0 + lambda cos(theta) x_1 + psi cos(theta) ]_1
  ) \
$

so is a linear transformation
