---
title: Reviews of STACS 2025
author: Aliaume LOPEZ
date: 2024-11-18
---

# Review 1

3: (strong accept)
This article aims at following a line of recent research studying the so-called polyregular functions, a computational model that generalises regular languages to the setting of string-to-string functions. In this article, the authors study the specific case of unary output alphabet, that can indeed be understood as a function mapping a word to a natural number, as well as their generalisation where the output is an integer. Several open questions have been left open for these objects, and this article solves them in the particular case where the input alphabet is commutative. This could seem as an awkward hypothesis, but this makes sense to consider this specific case: this is even more true because the article goes through an innovative and challenging path to obtain the results, by the way discovering mistakes in the results stated in an article of Karhumaki, 1977.

As far as I was able to check the proofs, apart from being very original, are correct. Moreover, the writing is excellent in general (few typos are listed below), and the use of the appropriate Latex packages (I hope it can remain in the final version though...) make it really much easier to follow. There are nicely chosen examples that are also very useful for the reader.

This article is of the greatest interest in order to foster new ideas and future results in the sub-community of STACS dealing with weighted automata and transducers. I am thus recommending a strong accept for STACS 2025.

List of typos:
- l.42: form a subclass... class of
- l.65: it could be interested to comment on what else is broken as a corollary in the article of Karhumaki
- you change notations of the polynomials, which could easily be fixed in order to get a better consistency: either k or n as the number of variables, stick to X1,X2... for variables instead of X, Y, Z sometimes
- Example 5: I am afraid that the final fact of line 148 is false, since it is equal to n(n+1)/2... this has (mild) consequences on the discussion around line 275...
- l.176: remove "that"
- l.203: represents P
- l.219: y instead of Y
- l.221: L\cap{a,b}* is not
- l.246: that it is
- l.287: since Example 5 was falsely stated, maybe you could take the few lines necessary to express the binomial coefficient with a star-free polyregular function fully...
- l.351: why "constant term"? this is not in N but indeed a polynomial in N[X]
- l.428: that are integer-valued
- l.564: f \circ q
- l.701: there is no s in this lemma's statement. I suppose you mixed it with the next lemma...


# Review 2

2: (accept)
This paper investigates the class of ℕ-polyregular functions, a class of string-to-integer functions that can be described both as:
* string-to-string polyregular functions (a recently active topic) with unary output alphabet;
* polynomially bounded ℕ-rational series, hence a connection with the classical topic of weighted automata.
The ℤ-rational case (ℤ-polyregular functions) has been treated in depth by Douéneau-Tabot's thesis [9], but there remained several open problems mentioned in [9] about their relationship with ℕ-polyregular functions. These problems seem difficult; thus, the present paper works under the simplifying assumption of commutativity — i.e. considering functions that depend only on the Parikh vector of their input — and solves the problems in this special case, showing that:
* ℕ-polyregular functions admit a decidable characterisation among ℤ-polyregular functions;
* (star-free ℤ-polyregular) ∩ ℕ-polyregular = star-free ℕ-polyregular.
Towards these goals, much of the paper is devoted to studying representations of multivariate polynomials by rational series. In doing so, it uncovers and corrects a wrong theorem in a paper by Karhumäki [11].

The questions are both very natural and highly non-trivial in the general (noncommutative) case. While commutativity feels like it alters the nature of the problem a bit, giving it a more arithmetic than automaton-theoretic flavor, solving the commutative case still requires substantial work. Therefore, the claimed results seem to be of high interest. Furthermore, their proofs look mostly correct to me up to minor imprecisions. Thus, I recommend acceptance, provided that the question below is answered satisfactorily.


Question for the author(s):

Theorem 37 claims that ℕPoly_k is decidable inside ℤPoly_k. However, the given proof merely establishes the characterisation of ℕPoly_k within ℤPoly_k by the "(k,ℕ)-combinatorial" property. It is not obvious at all that this property is decidable (its statement is a ∃∀∃ with unbounded quantifiers). So how do you get decidability?


Miscellaneous remarks:

Concerning Problem 2, you could also mention that deciding aperiodicity is one of the last major open problem concerning *regular* string-to-string functions
42: typo "classf"
53-55: The phrasing of the results seems to overpromise at first, until one reads "under the extra assumption". Could you make this clearer?
97: remove "the"; in the definition of representations, why not just take Σ = {1,...,n} and η = id?
114: divisibility ordering → isn't it a preorder?
Example 5: f(w) should be |w|(|w|+1)/2 (+1 instead of –1), and maybe "number of non-empty infixes" would be a clearer way to characterise it than "sum of prefix lengths". Actually, given the later emphasis on binomial coefficients, tweaking the example to get –1 instead of +1 might be nice.
Proof of Lemma 8: the fact that f∘c is (effectively) a rational series is not completely trivial, a quick argument or reference would be welcome
176: remove "that"
193: "provide via Example 14 simple proof that there exists some non-negative polynomial that is not an N-rational polynomial."
→ "exhibit in Example 14 a simple non-negative polynomial that is not N-rational"?
204: This invocation of Theorem 13, a property of string-to-string functions, has the potential to be very confusing for the uninitiated: why does it apply to ℕPoly but not to ℤPoly?
219: Y → y
Def 16: why "PolyRec"? (the name clashes with the polynomial recursive sequences of https://doi.org/10.1007/s00224-021-10046-9 )
270: "polynomial function" is in my opinion a rather bad name for this concept
277: it is unintuitive that "natural binomial function" is more general than "binomial function"!
287: there should be some non-emptiness condition on the factors u_i
315: dominant coeﬀicient → leading coefficient
319: f partially applied to a word u → it's more like f ∘ (concatenation with u)...
(this notion of "partial application" occurs several times in the paper, maybe it deserves to be properly defined with a nice name?)
345: τK(P1) = P1 is unnecessary
352: and equals some monomial of ∆K(P1) → up to a factor in ℚ (i.e. the multisets of indeterminates are equal, but maybe the coefficients are not)
412: the maximal monomials have positive coeﬀicient → non-negative coefficient (0 may be the unique maximal monomial)
428: that integer-valued → missing "are"
429: "which are often called Newton Polynomials" → are they really? it seems to me that Newton interpolation can be used to prove Pólya's theorem, but is the name "Newton polynomial" truly used for integer-valued polynomials? if so, can you give a source?
Theorem 31: the α in the statement does not play any role (unlike in Theorem 34)
Lemma 33: isn't Z[\vec{X}] ∩ PolyRec just PolyRec?
472: remove "star-free"
492: missing parentheses around "Definition 35"?
Proof of Theorem 37: there are some imprecisions regarding what is the domain of the polynomials P and P_t (cf. lines 537 or 541-542)
537: note that if ω ≤ r_i < ω² then actually floor((x_i.ω+r_i)/ω) = x_i + 1 !
539: ω shouldn't appear in the exponent here (since later q is applied to (ωx1, ...))
545: Let us now construct → it feels weird to finish a proof on such a sentence; maybe "To conclude, we can construct..."?
Also, you need to compute floor(x_i/ω) using MSO before passing it to a binomial polynomial; this uses a closure property of ℕPoly that has not been mentioned before
575: can you give a more precise reference for (2) ⇒ (1)?
580: P is represented → P translated by N_0 is represented (and line 586 needs to be adapted accordingly)
583: g_a^n → g_{a^n}
590: Throughout the paper, we have tried to highlight → I don't think you did!
690: Q should be P_+ *+* (Z-1)P_-
Proof of Lemma 33: g = f? how do you choose q? λ = n?
861-866: it seems that λc_α = f_α is proved twice
865: duplication of "by term identification"


# Review 3

This paper is on relating Z-rational and N-rational series, a classical and hard problem, in the case they can explicitly be related to polynomials. More specifically, a characterisation is given of those polynomials that are represented by N-rational series (correcting a claim from an earlier paper); and this is shown equivalent to polyregular functions and even star-free N-rational series. This is then used to study commutative series of polynomial growth; it is decidable whether a such a series (presented as a Z-rational series) is N-rational; and for polyregular functions, star-free Z-rational = star-free N-rational, confirming a conjecture from the literature.

These are non-trivial results, and the paper is quite extensive; it is moreover pretty readable given the technicality of its contents. I would have liked to see more context of these results - they are purely justified by being hard open problems, which is fine, but what do we learn about N/Z-weighted languages overall, and are these results somehow meaningful in poential application areas of such languages? How far did we progress towards answering Problem 1 and 2?

Minor comments:
- the paper seems to use knowledge, but many keywords do not link anywhere; this is pretty annoying (I would then even prefer if it's not used at all)
- 28, problem 1: I guess it is undecidable whether a Z-rational series is N-valued? I understand this is a different question, since not N-valued Z-rational series are N-rational
- rather trivial, but perhaps line 48/53 can use the same order of conjuncts
- 78 "*we* answer"
- 97: "the *function* \eta^\dagger"
- 122: "very combinatorial" sounds a bit odd
- 134 and elsewhere: I think it should be "an \mathbb{N}-polynomial", not "a \mathbb{N}-polynomial"
- 176: remove "that"
