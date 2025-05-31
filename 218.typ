
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]
#let comment(body) = emph(text(blue)[#body])
#let warning(body) = emph(text(orange)[#body])
#set math.mat(delim: "[")
#set math.equation(numbering: "(1)")

== Let $E$ be vector space. Let $f$ and $g$ be two automorphisms on $E$ such that $f compose g = id_E$. Show that $ker(f) = ker(g compose f), im(g) = im(g compose f)$ and that $ker(f) inter im(g) = {bold(O_E)}$

remember that automorphisms are isomorphisms in the same structure, in this case the vector space $E$.

this implies $f compose f^(-1) = id_E$ and $g compose g^(-1) = id_E$ and we also know $f compose g = id_E$


suppose $ker(f) = X$ where $X$ is the set of vectors in $E$ that map to $0_E$ after applying $f$.
now consider $f^(-1) compose f = "Id"_E$ we know that $ker("Id"_E) = {0_E}$ by definition of identity, this implies
$ker(f^(-1) compose f) = {O_E}$.

Now consider $f compose f^(-1)$, this is valid due to being an automorphism and as such a isomorphism, then
$ ker(f^(-1)) = Y $ and $ker(f^(-1) compose f) = ker("Id"_E) = {0_E}$

now suppose $|Y| > 1$, because $f$ has an inverse, thus a bijection, it must be the case that $f^(-1) compose f arrow.double f^(-1) compose f(x_i) = f^(-1) compose f (x_j), x_i = x_j$ and as we only have a single element in the kernel of the composition it must be the case that only a single vector can be in the $ker(f^(-1) compose f) = {0_E}$, so $|Y| = 1$.
can't be zero because the kernel subspace is never empty.

we can apply analagous reasoning to prove $|X| = 1$, thus we conclude that $dim(ker(f)) = dim(ker(f^(-1))) arrow.r.double dim(im(f)) = dim(im(f^(-1)))$

suppose the vector is not zero, then $ker(f) = {v != 0_E}$, then $f(v) = 0$, now consider $ker(f^(-1)) = {w != 0_E})$ and $f^(-1)(w) = 0$

but by linearity $f(v + w) = f(v) + f(w) and f^(-1)(v + w) = f^(-1)(v) + f^(-1)(w)$

$ \ f^(-1) compose f (v+w) = (v+w) arrow.double f^(-1)(f(w+0)) = (v+w) arrow.double w = (v+w) \ $
that's only possible if $v = w = 0_E$

so it must be the case that $ker(f) = ker(f^(-1)) = {0_E}$

now we also know that $ker(g compose f) = ker(id_E) = {0_E} arrow.double ker(f) = ker(g compose f)$

to prove $im(g) = im(g compose f)$, we notice that $g$ is bijective, thus surjective that implies the following
$ \ im(g) = E \ $, remeber that $g$ signature is $g : E -> E$ as an automorphism.

we also know $g compose f (v) = E = id_E arrow.double im(g) = im(g compose f)$

the final proof is rather easy remember that $ker(g) subset im(g)$, just repeat the same procedure applied to $f$ to find that $ker(g) = ker(g compose f) = ker(f)$, so by definition of intersection $im(g) inter ker(f) = {0_E}$



