Dear Aliaume Lopez,

We regret to inform you that your submission to MFCS 2024

Commutative N-polyregular Functions

has not been accepted. 

We received 239 submissions this year, of which 80 were selected for
presentation at the conference. The quality of submissions has been very high,
and we had to reject many good papers unfortunately, due to the limited space.

A vast majority of papers received three or more reviews. In a few exceptions,
the decision is based on two reviews and subsequent discussions involving
additional experts whose opinions have not materialized in a formal review (all
of these papers received special attention during PC meeting).

Please find the reviews of your paper below.  Note that these reviews may not
necessarily reflect the final evaluation taken after discussions within the PC.
Nevertheless, we hope you find them useful.

We wish you the best of luck in your research.

Best regards,

Rastislav Kralovic
Tony Kucera

SUBMISSION: 4
TITLE: Commutative N-polyregular Functions


----------------------- REVIEW 1 ---------------------
SUBMISSION: 4
TITLE: Commutative N-polyregular Functions
AUTHORS: Aliaume Lopez

----------- Overall evaluation -----------

This paper studies the relationship between subclasses of functions computable
by automata.  Given a function belonging to a class, it is a fundamental
question whether it can also be described in the star-free subclass, but it is
not known whether this question is decidable for the class of polyregular
functions, even when the output alphabet consists of a single letter.  This
paper partially solves this problem by proving its decidability for the
subclass of polyregular functions over the singleton alphabet that are
furthermore commutative, i.e. perfumation of an input word does not change the
output.  The proof is based on a comparison with the class of Z-polyregular
functions.  The paper also briefly discusses a strategy for dealing with the
non-commutative case, in particular defining an automaton
canonically-determined by a polyregular function, and giving a conjecture that
characterises star-freeness using that automaton.

Overall, the explanations are well-written and understandable to those outside
the field.  The arguments are non-trivial and look mathematically solid,
although I have not checked all the details in Appendix.  The results seem new
and interesting.  It also points out an error in a claim in the literature and
corrects it.

The main result of this paper deals with the commutative case, and it would
have been nice to have more discussion on how important the considerations
under this commutativity condition are.  I think the case of genuine interest
is the non-commutative case, but does the discussion in Section 4 give any
insight into the non-commutative case?  Is there any relationship between the
approach discussed in Section 5 and the results in Section 4?


p.5, Figure 3(a)
This automaton returns $2$ for $a^2$.  The value for the edge from $a$ to $\epsilon$ should be $1_{|w|>1} + 1_{|w|\ge 1}$.

p.6, line 220
I found the explanation here a little misleading.  I think what Example 10 shows is why the second condition in Definition 7 (i.e., non-negativity of maximal monomials) is necessary.  On top of that, it seems that Definition 11 shows that it is insufficient to pay attention only to maximal ones.

It was also not immediately clear what the following "Proof" intended to prove.  The proof is simple, so it could be done in Example 10.

p.6, line 223
"Then $P$ is is"

p.7, line 244
"such that $P$ is such that, for every"
--> "such that, for every"?



----------------------- REVIEW 2 ---------------------
SUBMISSION: 4
TITLE: Commutative N-polyregular Functions
AUTHORS: Aliaume Lopez

----------- Overall evaluation -----------

This paper is a continuation of the author's earlier work [12] on ℤ-polyregular
functions (i.e. ℤ-rational series of polynomial growth) which showed remarkable
decidability properties of this class of string-to-integer functions. In
particular, there is a natural subclass of star-free ℤ-polyregular functions,
that can be defined (as usual) using aperiodic monoids or first-order logic,
and membership in this class was shown in [12] to be decidable. Here, the focus
is put on another subclass, that of ℕ-polyregular functions. Those not only
correspond to ℕ-rational series of polynomial growth, but also to polyregular
string-to-string functions with unary output alphabet.

The results of the paper mostly apply to the case of commutative functions,
i.e. those invariant under permutation of the input letters. In this special
case, the paper gives an effectively decidable characterization of
ℕ-polyregular inside ℤ-polyregular. A key point is to solve this problem in the
case of multivariate polynomials with integer coefficients; towards this goal,
the author refutes a published theorem of Karhumäki [29], and provides a
corrected statement. Finally, the other main results are "commutative
ℕ-polyregular ∩ star-free ℤ-polyregular = commutative star-free ℕ-polyregular",
partially answering a conjecture of Douéneau-Tabot [18], and a notion of
residual transducer for ℕ-polyregular functions based on well-quasi-orders.

All these results are of high interest, and the paper does a good job at
motivating and contextualizing them (though I have some nitpicking about the
bibliography, see the end of this review). In general, the writing is well
structured at a high level. However, when looking into the details, one quickly
finds that issues in the statements and proofs are quite common throughout the
text, giving the impression that it has been rushed. I think it will be a
strong paper once those issues are resolved, but as it stands, I am not
convinced that it should be accepted.


# The main issues

In the introduction: "Note that in Figure 1, if B is a proper subclass of C,
then the aperiodic variant of B is precisely the intersection of B with the
aperiodic variant of the larger class C." → This is a quite strong assertion,
with no reference given. While it seem plausible, it is far from trivial in
general (as the case of ℕSF vs ℤSF in the paper shows) and I am not aware of a
published proof for any of the cases listed here. I would advise removing this
sentence.

The proof of Lemma 14 is very imprecise, it is non-trivial (though doable if
one is familiar with Douéneau-Tabot's previous works) to reconstruct an
argument from the given hints. Also, at the end the binomial expressions give
you polynomials with rational (not necessarily integer) coefficients, though
this can be compensated by multiplying ω by a common multiple of the
denominators.

In the proof of Lemma 17, what's happening at line 801 requires a lot more
justification. This seems to depend on having the coefficient of the monomial M
be larger or equal to K. Since M is not necessarily a maximal monomial
(especially if ν instanciates more than one variable), Fact 45 should be
changed to say that every monomial of Δ_K(M) (not the same M) has a coefficient
that is a multiple of K, not just the maximal ones – which is true. You also
need the fact that since P ∈ PolyRec, P_1 is in ℕ[\vec{X}], and therefore so is
Δ_K(P_1).

Speaking of Fact 45, in its proof, line 771 computes M - τ_{-K}(M) whereas the
definition of Δ_K(M) is τ_K(M) - M. And the next line is wrong: if we translate
by +K to make it correspond to the "right" definition of Δ_K(M), the claimed
formula becomes sum over p of KM/X_p, which only contains monomials of degree
deg(M)-1, meaning that the lower-order terms have disappeared. Since the set of
maximal monomials is the right one, though, this does not lead to further
issues. (A rigorous proof would talk about expanding the product of the factors
(X_i + K) …)

In the last step of proof of Lemma 46: beware, it is not true that if A <_H C
and B <_H C, then A∪B <_H C; it only works for the non-strict preorder. So this
chain of inequalities only allows you to prove maxmon(Δ_K(P)) ≤_H maxmon(P); to
show <_H, you need an additional argument (for instance, deg(Δ_K(P)) < deg(P)
is enough). Also, are you really using Fact 45 in this proof, as you claim?

For Theorem 25, the proof in the appendix gives effective conversions, but I
don't see an explicit proof of the decidability of the property?

Definition 26 (Ultimately polynomial): here P is taken with integer
coefficients. But I believe it is important to consider rational coefficients:
take e.g. f(n) = n(n-1)/2, this is in ℕSF (it is the number of valuations of
the FO formula φ(x,y) := x < y) but not ultimately equal to any polynomial of
ℤ[X], so as it is f contradicts (3) ⇒ (1) in Theorem 29. Note that the proof of
this theorem in the appendix only treats (1) ⇒ (3); the direction (3) ⇒ (2) is
obvious but there still remains (2) ⇒ (1) (with ℚ instead of ℤ), I think that's
actually [18, Theorem 7.19]. I'd also remark that Karhumäki's paper is about
ℚ[X_1,…,X_k], so perhaps the restriction to integer coefficients is not such a
good idea.

Again in the proof of Theorem 29: "P_t and P coincide (up to translation)" →
actually, P_t(n_1,…,n_k) = P(ω⋅n_1 + r_1, …, ω⋅n_k + r_k) so it's not just a
translation (and thus the rest of the sentence does not follow). Actually, I
don't see at all the point of introducing this "ω-periodic" decomposition – it
does not seem very suitable in order to get something aperiodic in the end. The
fact that "τ_{N_1}(P) is a ℕ-rational polynomial" is right for reasons
unrelated to P_t: it is a direct consequence of the equation on line 895.

In Lemma 36: ℤPoly_{k+l-1} → should be ℤPoly_{kl} (composition of polynomials
multiplies the degrees). It seems that this is not a mere typo since the
mistake pops up again in the proof?


# Minor issues and typos

"counter example" → "counterexample" (many times throughout the text)
66: the aperiodic variant ZSF has been shown to be decidable → "membership in the aperiodic variant…"
68: of polynomial growths → "growth"
80: that are furthermore commutative → please explain briefly what that means (something like "i.e. invariant under permuting input letters")
86: we characterize commutative N-polyregular function → "functions" (+ similar typo on line 105)
87: a semantic property akin to the one ultimate polynomiality → grammatically weird (remove "one"?)
117: denotes fixed alphabets, i.e. a finite set of letters → "denote fixed alphabets, i.e. finite sets of letters"
136-137: this is difficult to parse
148: what is a "correction function"? the term is nonstandard and appears nowhere else in the paper
     -> I am *defining* this term
167: have an N-valued output functions → remove "an"
     -> NO
169: In Example 3, it would be desirable to say that this means f ∈ NPoly_1, to fix the reader's ideas about the offset of 1 between NPoly_(k-1)-transducers and the class NPoly_k.
     -> ok
222: in Fact 9, the meaning of the first occurrence of "regular language" is not completely obvious, maybe say "ultimately periodic subset"?
    - > ok
237: "closing PolyRec under" → at this point PolyRec has not yet been mentioned, so the phrasing is a bit confusing at first
    -> ok
237 (again): assignments of variable → "of variables" (actually, "variable assignments" sounds a bit better?)
    -> ok
244: such that P is such that → redundant
     -> ok
269: allowing to perform → "allowing us to perform" (or "that allows us to perform", which sounds better)
    -> ok
274: τ_k → τ_K
    -> ok
275: "and is in PolyRec" → only for a well-chosen value of K…
    -> ok 
323: it might be more elegant to take ωTypes := {0,…,ω²} + {0,…,ω-1} and say that the type of n∈ℕ belongs to the second summand only when n>ω²?
    -> ok, there is still an if though.
325: the rest of the Euclidian division → the *remainder* of the *Euclidean* division
    -> ok
339: What's the point of this notion of "(k,ℕ)-combinatorial for all k"?
    -> ok
355: Example 27 is true, but it may be worth mentioning that for a bounded function, "ultimately polynomial" means "ultimately constant"
    -> ok
364: We answer positively to Conjecture 28 → "We answer Conjecture 28 positively"
    -> 
682: "ε → 0" should be \mapsto
683: this expression represents (X-1)² i.e. P-1, not P
686: We can develop → "We can expand"
692-693: instead of using formal indeterminates X,Y,Z, you should say "for all n,m,p∈ℕ, P_bad(n,m,p) …" (non-negativity of the arguments is important in the reasoning)
    -> ok
706: When the monoid M is aperiodic then → either remove "then" or replace "When" by "If"
    -> ok
748: commutes → commute
750: Remark 42 is more like a "Proposition" or a "Fact" than a "Remark"
759: isomorphic to ℕ^k with the product ordering → the correspondence is not bijective since it forgets the coefficient of the monomial and keeps only the degree, but the quotiented poset is isomorphic to ℕ^k hence the original preorder is a wqo
    -> NO, the divisibility ordering does not care about the degree.
775: such thatt_j → missing space
     -> ok
817: fixing at least one indeterminate → this indeterminate must occur in P (can this be assumed without loss of generality? morally yes, formally one has to be a bit careful)
    -> it was an assumption, so yes thank you for reading the proof
824: please give the definition of the chosen ν (I assume it maps the indeterminate X_i to the value X_i, which by the way shows that it would be better to use a different notation for the latter)
    -> ok
870: In both cases, the maximal monomials have positive coefficient → non-negative coefficient
    -> ok
874: We apply Lemma 14 → since this lemma applies only to ℕ-polyregular functions, you need to reduce the ℤ-polyregular case to the ℕ-polyregular case (say, by considering a linear combination)
    -> ok
884: Using the assumption, all of these polynomials are actually ℕ-rational → this looks true, but requires a little bit of reasoning (each polynomial in the decomposition coincides with some ℕ-rational polynomial on enough points…); in particular the ω from (k,ℕ)-combinatoriality and the ω from Lemma 23 are not the same
    -> ok
900: hence is represented by a function f_1 ∈ ℕSF_k → here you should invoke Lemma 18
    -> 
1043: Or, … → Now, …
1059: then the conjecture Conjecture 38 → redundant


# Bibliography

There are two approaches to giving references for classical material. One would
be to cite a limited number of surveys; in that case, Wolfgang Thomas's book
(already cited as [46]) could be a good reference for the first paragraph,
while the Muscholl-Puppis STACS'19 invited paper could be used for
sequential/rational/regular functions and their aperiodic variants, and
Bojańczyk's LICS'22 survey for polyregular functions.

The other option, taken here, is to give individual historical references for each item. But then that raises a lot of questions:

* For MSO, why cite only Büchi and not the contemporary work of Elgot &
  Trakhtenbrot?
* I believe FO = star-free is generally attributed to McNaughton & Papert, but
  see Howard Straubing's SIGLOG column "First-order logic and aperiodic
  languages: a revisionist history" for a more complicated account
* Why [41] for finite monoids? They already appear in Rabin & Scott's 1959
  paper.
* "regular functions [22]" → actually [22] would be the first appearance of
  pebble string transducers, and thus of *poly*regular functions. I am not sure
  what is the right historical reference for regular functions; perhaps the
  equivalence between two-way transducers and MSO string transductions
  (Engelfriet & Hoogeboom)?

* "polyregular functions [7]" → I would also cite https://arxiv.org/abs/1810.08760

* "[27, 4, 9, 14, 6, 7, 13]" is typical of what Bojańczyk calls a "scourge" https://www.mimuw.edu.pl/~bojan/posts/how-to-improve-your-citations-with-one-simple-trick : it is not clear from the writing that a large majority of those papers are about aperiodic *regular* functions specifically



----------------------- REVIEW 3 ---------------------
SUBMISSION: 4
TITLE: Commutative N-polyregular Functions
AUTHORS: Aliaume Lopez

----------- Overall evaluation -----------

Polyregular functions are a class of word-to-word functions with
polynomial-sized output. They have been studied quite intensively over the past
years and have found their way also into other areas than automata theory. The
submission studies commutative N-polyregular functions, where N-polyregular
functions are polyregular functions with unary output. The author shows various
decidability results for membership between star-free (and general) N- and
Z-polyregular functions, and provides a characterisation of commutative
N-polyregular functions as well as a counterexample to a theorem from 1977. The
author also introduces a model of computation for (not necessarily commutative)
N-polyregular functions, among other things.

The submission is not easy to digest, but the results are interesting and worth
being published. I have reviewed a previous edition of this work and the
accessibility of the paper has improved to some extent (structure, definitions,
introduction), even though there is still quite much space for further
improvements. Unfortunately, a significant portion of my previous comments has
not been dealt with, which makes the reviewing experience frustrating.

My score for this submission is weak accept (+1), with a tendency to a +0.5.

While the results themselves are enough to make for a +2 for MFCS (many of
them, interesting problems and classes of functions, new characterisations,
nice counterexample to an old theorem), I find the presentation still quite
problematic and therefore focus on explaining this criticism despite giving a
weakly positive score.

The entire paper is very hard to read. The reasons for this are the following:

1) The abstract and introduction are too technical and not suitable to
introduce the reader as one can only follow through when one has already all
the background knowledge. I had made this comment already for the previous
version ("This abstract is very technical and only accessible if one is already
familiar with all the central notions. Please add at least one really
introductory sentence and try to describe the significance of the results on a
higher level."), but the abstract has remained *absolutely identical*. The
introduction has improved, but I still urge the author to consider my detailed
comments and work through them to improve the introduction. Many links between
statements remain very unclear.

2) The paper is not at all self-contained. Almost all proofs have been entirely
moved to the appendix, without even sketches/ideas being present in the main
paper. Together with the missing definitions and very technical descriptions,
this would make a camera-ready copy even harder to digest as the reader has an
even smaller chance to build up intuition. I enjoyed reading and following the
counterexample to the old theorem, most of the other parts were really
difficult to parse.

3) Besides other notions that remain undefined, NSeries and ZSeries, central
notions to the entire paper (e.g. Lemma 4 and Lemma 7), are not defined
anywhere. I had commented on this also in my previous review. Is it really so
hard to just provide the definition when these notions appear everywhere in the
paper? Does the author not want as many readers as possible to appreciate the
results?

4) The paper still contains quite a few typos (some of which I had pointed out
in my previous review) and lacks references and clean formulations here and
there. This has improved over the previous version, but it is still not in an
ideal shape. I cannot list all of the occurrences, but I give a selection
below. 

Altogether, it might just make sense to remove Section 5 and refer to the full
version for it, and to use the remaining space to provide *a lot more*
intuition, examples, and proof ideas. 



-----

My old comments that have not been addressed, together with new comments.

l. 5: that forms --> which forms (similarly also elsewhere in the paper). 

Abstract: Tell the reader why this is an interesting topic! The abstract is far too technical.

[OLD] l. 26: why do you jump from regular to star-free regular back to regular here?
This has not been addressed. What does it mean for a regular language to be aperiodic? Do you mean "star-free"?

l. 30: why are all aperiodic variants starting with A except for SF?

l. 31: star-free languages --> star-free regular languages

l. 40: is the aperiodicity membership problem the question whether a function is aperiodic?

l. 43: having no counters --> citation missing

l. 59: it seems like star-free and aperiodic functions are the same, but it was stated nowhere.

l. 62: was the class of NPoly frequently rediscovered? or the class NSeries? 

l. 66: what does it mean for a class to be decidable? Do you mean membership of one in the other?

l. 68: growths --> growth. Tell the reader the notion that you use explicitly!

l. 73: ZSeries has not been introduced.

l. 75: equation --> equality

l. 77: "aperiodicity is decidable for ZSF" --> this seems to be a trivial statement because further above you defined ZSF to be an aperiodic class of functions...?

Since the introduction talks a lot about polyregular functions, it would be good to at least give an informal definition somewhere in the introduction.

[OLD] l. 80: "Remark" --> "Note"? It is not clear how the reader should note this though.

l. 86: function --> functions

[OLD] l. 88: "for" missing? (or maybe "of"?)

[OLD] l. 124: denotes --> denote

l. 132: "| a \in \Sigma" missing

l. 134: is |w| supposed to be |u|?

l. 135ff: it would be VERY useful if you gave at least some intuition and ideally an example as to the notion of being represented. It is very hard to follow you through the paper without this intuition.

[OLD] NSeries and ZSeries have neither been introduced nor defined!

l. 148: what is a correction function?

Fig. 3: additional explanations would be helpful. I think I have understood why the automaton on the left-hand side computes the function, but not the one on the right-hand side, e.g. on the word aa. Is |w| the length of the remaining word?

l. 191: the "or" should be "and"

[OLD] l. 226: what is S??

[OLD] l. 217: write --> denote

l. 222: citation missing

l. 223: is is

l. 226: I assume you use here that polyregular functions are a subclass of N-rational series? It would just help the reader a lot if you just GAVE the definition of these series.

l. 237: PolyRec has not yet been defined

l. 244: such that P is such that --> just write "such that"

l. 250: you speak about N-rational polynomials, then in L. 255 about N-polyregular functions. Are these classes identical?

multiple times in the paper: a N-polyregular --> an N-polyregular

l. 282: in the text above this lemma, you make a statement for all K. The lemma claims just existence of a K. I did not grasp where this change of quantifier comes from.

l. 288: which membership are you talking about?

l. 293: Should the sentence structure in Lemma 19 and Theorem 21 "be a polynomial" be equal?

l. 298: again, which membership are you referring to? the membership in PolyRec?

l. 310: how does this reasoning about univariate cases relate to TWO indeterminates?

l. 318: what is "arranged by counting modulo some numbers" supposed to mean?

l. 321: notations --> notation

l. 325: Euclidian --> Euclidean

What is the intuition for Lemma 23?

l. 355: it would be nice to have a definition of "aperiodic" for a language.

l. 359: does not carry --> "over" missing?

l. 383: some of the "good"s should not be in italics

[OLD] l. 404: redundant "a"

[OLD] If Section 6 is supposed to remain as you have set it up, it should probably not just be called Outlook, as it contains many results not mentioned before!

[potentially more untreated old comments in the appendix]
