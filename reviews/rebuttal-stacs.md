---
title: "Rebuttal to Reviewer Comments for STACS 2022"
author: "Aliaume LOPEZ"
date: "2024-11-18"
---

\newcommand{\ZPoly}{\mathbb{Z}\mathsf{Poly}}
\newcommand{\NPoly}{\mathbb{N}\mathsf{Poly}}

We would like to thank the reviewers for their insightful comments and feedback.
Due to the space limitation in this rebuttal, we will focus on the critical
points raised by Reviewer 2, and then address the general comments of the other
reviewers.

Theorem 37. Let us first address the main concern of Reviewer 2. It is
decidable whether a commutative function $f$ in $\ZPoly_k$ is in $\NPoly_k$ as
follows: one uses Lemma 36 to obtain a family of polynomials $(P_t)$ that can
be used to compute $f$ on any entry. Then, we check if all these polynomials
are in $\NPoly$, which is possible using Theorem 17. If all of them are, one
can compute $f$ as in the proof of Theorem 37: by computing the type of the
input, and then applying the corresponding polynomial. Conversely, assume that
$f \in \NPoly$, then all of these polynomials are in $\NPoly$, since they are
computed by precomposition of $f$ by a suitable pumping pattern. This also
provides an effective conversion procedure.

As noted by Reviewer 2, this argument requires extra closure properties than
those listed in Lemma 7, namely closure under precomposition by a regular
function to compute the "type of the input." This holds for $\NPoly$ since it
is true for any polyregular function [2, Lemma 8.1].


Example 5. It has been remarked by R1 and R2 that Example 5 contains an
*off-by-one* error, which can be fixed by considering the sum of *non-empty*
prefixes. This is still possible with a very slight modification of the
example, letting $\pi(x,y,z) = x \times y$. Thank you for pointing this out.
This was also a problem in Lemma 19, with the same fix: restricting the sum to
non-empty words.

Lemma 8. The fact that $f \circ c$ is (effectively) a rational series follows
from the more general fact that Weighted Automata are closed under
precomposition with a regular function, but I could not find a clear reference
while writing this rebuttal. For $\mathbb{Z}\mathsf{Poly}$ this is [5,
Proposition II.12]. However, for this specific case, it is relatively simple to
build a weighted automaton computing $f \circ c$ from the automaton
computing $f$. Which will be done in the final version of the paper.

Lemma 33. In the proof, the "polynomial function" $q$ is chosen to be the
simplest one $q(X_1, \dots, X_k) = a_1^{X_1} a_2^{X_2} \dots a_k^{X_k}$. That
way, $P = f \circ q$. Furthermore, in the statement, the intersection with
$\mathbb{Z}[\vec{X}]$ is not useful, and in its proof, $f = g$, and $\lambda =
n$ as guessed by R2.



# Notations 

A number of comments of the reviewers pointed out that the notation could be
improved and made more consistent. In particular, the "polynomial functions"
will be renamed "pumping patterns", and "binomial functions" will be renamed
"binomial coefficients". Finally, the class $\mathsf{PolyRec}$ will be renamed
$\mathsf{PolyStrongNNeg}$ to avoid confusion with the class of polynomial
recursive sequences.

# General Comments

*R1. l.65: it could be interested to comment on what else is broken as a
corollary in the article of Karhumaki.* 

It turns out that all examples in the article of Karhumaki are correct because
they use at most 2 distinct indeterminates. This is stated in the paragraph
above Lemma 29. We are unaware of results that are broken by this error.

*R3. What do we learn about N/Z-weighted languages overall, and are these
results somehow meaningful in potential application areas of such languages?*

The techniques developed in this paper are tailored to *polynomials* and not
easily generalisable *as is*. However, it designates the problem of deciding
$\mathbb{N}$-definability of $\mathbb{Z}$-rational series in the commutative
case (without polynomial growth assumption) as a natural next step towards
solving Problem 1. Furthermore, this paper demonstrates that understanding the
precise relationship between $\NPoly$ and $\ZPoly$ actually leads to decision
procedures for Problem 2 in the unary case, which was unclear prior to this
work. Finally, the proof techniques being quite different from the usual ones,
it could foster new ideas in the community, for instance regarding *aperiodic*
$\mathbb{N}$/$\mathbb{Z}$-rational series.

*R3. I guess it is undecidable whether a Z-rational series is N-valued?*. Yes,
this is not possible. 

The Remark 18 states that deciding if a Z-polynomial $\mathbb{N}$-valued is
undecidable, and a fortiori, it is not possible for $\mathbb{Z}$-rational series.
