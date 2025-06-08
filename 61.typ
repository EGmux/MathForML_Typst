
#let set1 = $NN\\{0}$
#let set2 = $ZZ_5\\{overline(0)}$
#let g1 = $(ZZ_n,plus.circle)$
#let g2 = $(ZZ_5\\{overline(0)}, times.circle)$
#let g3 = $(ZZ_8\\{overline(0)}, times.circle)$
#let over(text) = overline(text)
#let rotated(symbol) = rotate(45deg)[#symbol]

== Consider the following bivariate distribution $p(x,y)$ of two discrete random variables $X$ and $Y$.

#set table(
  stroke: (x, y) => if x == 0 or y == 0 { none } else { color.hsl(120deg, 30%, 45%) },
  gutter: 0.0em,
  fill: (x, y) => if x == 0 or y == 0 { white },
  inset: (right: 1.5em),
)


#show table.cell: it => {
  if it.x == 0 or it.y == 0 {
    set text(black)
    emph(it)
  } else if it.body == [] {
    // Replace empty cells with 'N/A'
    pad(..it.inset)[_N/A_]
  } else {
    // pad(..it.inset)[$it$]
    strong(it)
  }
}


#table(
  columns: 6,
  rows: 3,
  [], [$x_1$], [$x_2$], [$x_3$], [$x_4$], [$x_5$],
  [$y_1$], [0.01], [0.02], [0.03], [0.1], [0.1],
  [$y_2$], [0.05], [0.1], [0.05], [0.07], [0.2],
  [$y_4$], [0.1], [0.05], [0.03], [0.05], [0.04],
)

Compute:

== a. The marginal distribution $p(x)$ and $p(y)$

By definition the margin distribution is defined as

$ \ p(Z = z) = Sigma_i p(Z=z_i) \ $

where $Z$ is a random variable and $p(X = x)$ means the probability of a x outcome being selected
note that this quantity is always one, so we are instead interested in the possible values that x could assume
thus

$ \ p(X=x_j) = n_(i j) / N = c_j / N \ $

as such we have

$
  \ p(X = x_1) = p(x_1) = c_1 / 1 = (0.01+0.05+0.1) / 1 = 0.16 \
  \ p(X = x_2) = p(x_2) = c_2 / 1 = (0.02 + 0.1 + 0.05) / 1 = 0.17 \
  \ p(X = x_3) = p(x_3) = c_3 / 1 = (0.03 + 0.05 + 0.03) / 1 = 0.11 \
  \ p(X = x_4) = p(x_4) = c_4 / 1 = (0.1 + 0.07 + 0.05) / 1 = 0.22 \
  \ p(X = x_5) = p(x_5) = c_5 / 1 = (0.1 + 0.2 + 0.04) / 1 = 0.34 \
$

and as expected $(0.16 + 0.17 + 0.11 + 0.22 + 0.34) = 1$

$ \ p(Y=y_i) = n_(j i) / N = r_i / N \ $


$
  \ p(Y = y_1) = p(y_1) = r_1 / 1 = (0.01 + 0.02 + 0.03 + 0.1 + 0.1) / 1 = 0.26 \
  \ p(Y = y_2) = p(y_2) = r_2 / 1 = (0.05 + 0.1 + 0.05 + 0.07 + 0.2) / 1 = 0.47 \
  \ p(Y = y_3) = p(y_3) = r_3 / 1 = (0.1 + 0.05 + 0.03 + 0.05 + 0.04) / 1 = 0.27 \
$

and again the sum ammounts to 1

== b. The conditional distributions $p(x | Y = y_1)$ and $p(y | X = x_3)$

The conditional probability is defined as either

$ \ p(Y = y_i|X = x_j) = n_(j i) / c_j \ $

$ \ p(X = x_j | Y = y_i) = n_(i j) / r_i \ $

thus we deduce that

$
  \ p(Y = y_i) p(X = x_j | Y = y_i) = p(X = x_j, Y = y_i) arrow.double.r p(X = x_j | Y = y_i) = p(X = x_j, Y = y_i) / p(Y = y_i) \
$

$ \ 1 / P(Y = y_1) Sigma_j p(X = x_j, Y = y_1) = (0.01 + 0.02 + 0.03 + 0.1 + 0.1) / 0.26 = 1 \ $

so if we call $Y$ and then $X$ and define that as $P(Y=y_1 times X)$ as the probability of a ordered pair, then it's guaranteed that such probability must always be non zero.

so the conditional probability for each $x_j$ is given by

$
  \ p(X = x_1|Y=y_1) = n_(1 1) / r_1 = 0.01 / 0.26 = 0.0384 \
  \ p(X = x_2|Y=y_1) = n_(1 2) / r_1 = 0.02 / 0.26 = 0.0769 \
  \ p(X = x_3|Y=y_1) = n_(1 3) / r_1 = 0.03 / 0.26 = 0.115 \
  \ p(X = x_4|Y=y_1) = n_(1 4) / r_1 = 0.1 / 0.26 = 0.384 \
  \ p(X = x_5|Y=y_1) = n_(1 5) / r_1 = 0.1 / 0.26 = 0.384 \
$

applying analogous reasoning for the other case

$
  \ p(Y = y_1 | X = x_3) = n(1 3) / c_3 = 0.03 / 0.11 = 0.272 \
  \ p(Y = y_2 | X = x_3) = n(2 3) / c_3 = 0.05 / 0.11 = 0.454 \
  \ p(Y = y_3 | X = x_3) = n(3 3) / c_3 = 0.03 / 0.11 = 0.272 \
$
