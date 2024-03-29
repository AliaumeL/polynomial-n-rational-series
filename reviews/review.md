---
title: Reviews ICALP
author: Anonymous Reviewers
---

# Review 1

Summary: The article addresses problems regarding N polyregular functions,
which enjoy several different characterizations, such as functions realized by
pebble transducers with unary outputs. The authors show how to decide if a Z
polyregular function is N polyregular, and if an N polyregular function is
star-free, meaning eg that it can be realized by a counter-free transducer.

In section 3, the authors study the particular case of N-rational polynomials.
They show that a theorem of [23] is wrong, and provide a way to fix it by
generalizing the property of having positive maximal monomials to all possible
ways of fixing the values of a subset of the polynomial variables. In
particular they provide an effective characterization of N-rational polynomials
(which are the same as star-free N rational polynomials) among polynomials over
Z.

In section 4, the authors use the fact that a Z polyregular function is a
finite combination of polynomials, with domains depending on some simple
counting with threshold/modulo of letters. Thus they can use the results of the
previous section and extend them from polynomials to Z polyregular functions.

Section 5 introduces a notion of residual automaton akin to the one of [9],
which they show is computable in the case of commutative inputs.

Evaluation: The article is overall reasonably well-written and has a satisfying
number of examples. I found Figure 1 salutary given the sheer number of
different classes that are being considered: polynomials, rational polynomials,
polyregular functions, rational series, which can have N or Z variants,
commutative inputs or not, be star-free or not. I don't blame the authors since
i think it is intrisic to the subject, but it was still a hindrance to my
comprehension. Besides the aforementionned examples, i've found that a lot of
proofs are relegated to the appendix, which is not bad per se but i would have
appreciated in these cases a few sentences explaining the kind of techniques
used in the proofs, and the difficulty of the proofs. This would have helped me
in deciding which ones to check before continuing with the flow of the article.
The logic of why some proofs were included in the main body of the article and
others were not is not clear to me at this point.

I have found the results quite interesting as well as the approach. I've
particularly enjoyed the (correct!) characterization of N rational polynomials,
as well as the residual automaton, which i find quite elegant. I have only
check a few of the proofs of the appendix and found them convincing.

I have a reservation concerning this article, and it is the comparison (or lack
thereof) with [9]. These two articles have a lot in common in the models they
study the approaches and the results. I think it is necessary that (for
instance in the introduction), the authors compare thoroughly the two articles,
what they have in common, where they differ, what are the new difficulties,
what are and are not new ideas etc.


Remarks:
l33: cite [5] here?
l34: "As for regular languages" -> can be interpreted as: In the case of regular languages. please reformulate
l34: You could mention here the list functions of [5] for which the correspondence with FO is more natural than for MSO
l90: "we answer positively to Conjecture 1" -> we answer positively Conjecture 1/ we provide a positive answer to Conjecture 1
l95: "the one ultimate polynomiality" -> Not clear, please reformulate
l139: "semgroups"
l142: "a monoid M is aperiodic whenever there exists n ∈ N, such that for all x ∈ M , x^n+1 = x^n" -> actually i think the quantifiers are the other way around, which of course doesnt change anything for finite monoids, but still. Maybe say finite monoid.
l193,l227,l251,...: "a N-rational polynomial" -> an N-rational polynomial
l194: or equivalently an N-polynomial has nonnegative coefficients
l234: "PolyKu" -> why that name ?
l336: computable with what complexity
l576: "(v−u)∈NSF_k−1" -> v▷f-u▷f
l602: "The conjecture Conjecture 53" -> Conjecture 53
Please restate propositions in the appendix to avoid the back and forth.

# Review 2

The focus of this paper is on making progress towards understanding polyregular
functions. General polyregular functions are transducers having at most
polynomial growth; they form an important subject within automata theory, with
many open questions. In the present paper, the author investigates
N-polyregular functions, in which the output alphabet consists of a singleton;
and therefore, equivalently, N-polyregular functions can be viewed as having
codomain the set of natural numbers. Alternately, N-polyregular functions are a
special kind of Z-polyregular functions, which in turn form a subset of the set
of Z-rational series; these are classical objects of study dating back to the
foundations of automata theory, and for which many open questions remain.

Here, the author focuses on *commutative* N- and Z-polyregular functions, where
the letters of the input alphabet are assumed to commute. Equivalently, the
functions in question are constant over words having the same Parikh image.
Even in this restricted setting, many questions remain highly non-trivial, and
there are indeed countless open problems. The author makes several important
contributions, of which the two central ones are as follows: 1) the author
establishes that it is decidable whether a commutative Z-polyregular function
is in fact N-polyregular (noting that the problem is wide open in the
non-commutative case); and 2) it is decidable whether a commutative
N-polyregular function is star-free (again, this is open in the non-commutative
case, but known to be decidable for (non-commutative) Z-polyregular functions).
A further remarkable contribution is to exhibit a counterexample to a 1977
(wrong) theorem of Karhumäki, concerning a characterisation of when a given
multivariate polynomial is N-rational, and to provide a corrected statement and
proof (Theorem 29).

The paper unfortunately contains several typos and is not easy to read, but
(given the subject matter, which requires extensive background knowledge) is in
fact well written. The proofs are carried out with strong competence, and those
that I have checked are all correct. The paper makes important advances to the
theory of polyregular functions and I therefore recommend acceptance.

# Review 3

The submission studies commutative N-polyregular functions, where N-polyregular
functions are polyregular functions with unary output. The authors show various
decidability results for membership between star-free (and general) N- and
Z-polyregular functions, answer positively a conjectured characterisation of
starfree N-polyregular functions with k free variables, provide a
characterisation of commutative N-polyregular functions and a counterexample to
a theorem from 1977, and introduce a model of computation for (not necessarily
commutative) N-polyregular functions, among other things.

While the results are abundant and seem quite nice, the submission is not
really in a shape to be published, as a significant portion of it is
inaccessible in the current form to readers that are not perfect experts. I
regret this combination of (probably) quite strong content with a shape that is
not suitable for communicating research. I strongly urge the authors to put
more care into preparing submissions, I would be happy to see this published
once it is ready.

Here are my main points of criticism:

1) Central notions are not introduced/defined. For example, a) Definition 2
lacks the definition of a production function; b) NSeries and ZSeries, central
notions e.g. in Lemma 4 but also to the entire paper, are not defined anywhere;
c) v_l, where l is a letter, is not defined (see line 189). There are more
examples.

2) The abstract and introduction are not suitable to introduce the reader as
one can only follow through when one has already all the background knowledge.
The structure in the introduction seems quite unclear, many formulations are
rather confusing or misleading, notions that are central are not explained
(growth rate, basically all notation in Conjecture 1, ...).

3) The paper contains so many and often easily avoidable typos that it inhibits
the reader to understand the statements and proofs, see my examples below. Even
the parts that are probably meant to help the reader contain flaws that ruin
this purpose.

-----

A few explanations and a small selection of examples as to what prevented me from appreciating the submission in all its variety.

Abstract: This abstract is very technical and only accessible if one is already familiar with all the central notions. Please add at least one really introductory sentence and try to describe the significance of the results on a higher level.

l. 26: why do you jump from regular to star-free regular back to regular here?

l. 31: this sounds as if they had the same characterisations, which is not true! Also "shares" --> "share".

l. 32, 36, 45: quite a few references missing?

l. 34: the entire paper contains VERY many singular/plural mismatches, like here "function" --> "functions"

l. 36: how does the characterisation via for-transducers compare to regular languages, i.e. the "as for regular languages"?

l. 39: you suddenly speak about sequential functions, how does this connect to the previous sentence? This entire paragraph is placed in a confusing position, jumping from star-free polyregular to aperiodicity for polyregular functions and others, back to star-free polyregular.

l. 52: what are successful results?

l. 54: there is also a paper on arXiv (by Kiefer, Nguyen, Pradic) that would be very suitable to be cited here!

l. 56: commuative, l. 59: ouptut, l. 139: definiton, l. 139: semgroups, ... - so many typos, please use a spellchecker before submission!!

l. 61: what type of backtracking do you mean?

l. 68: I do not understand what you mean by "would continue to characterize"

l. 70: this entire conjecture is inaccessible as the notions have not been
defined or introduced. Also, do not put "defined on page ..." into an important
statement like a theorem or a conjecture you are disproving!

l. 72: "a" missing

l. 77: what do you mean by "the ones that extend(s) ZSF and NSF"? Is the decidability you discuss here membership decidability?

l. 79: "solved by ... with an incorrect proof" - so not really solved?

l. 88, l. 258: "Remark" --> "Note"? It is not clear how the reader should note this though.

l. 95: "for" missing?

l. 124: denotes --> denote

l. 133: an example for this function would be useful

l. 134: and a subset S --> and S is a subset

l. 145: what is a production function??

l. 147: I think you should introduce monoids.

l. 155: NSeries and ZSeries have neither been introduced nor defined!

l. 161: What does the "which" refer to? And what does "correctly generalizes" mean here?

l. 173: which Item 4 are you talking about?

l. 182: the definition of a commutative function should appear earlier in the submission.

l. 189: what is v_letter? If this is just a typo, please do make sure such things don't happen in abundance, as they render your main results inaccessible!

l. 192: here and in the following, many "a"'s should be "an"s.

l. 211: what is S??

l. 213: indeterminate --> indeterminates (also, please introduce the word)

l. 220: a monomial --> a monomial occurring in P?

l. 222: why does X^2 appear two times in the set??

l. 238: write --> denote

l. 252: I think "develop" is not the right expression here.

l. 256: "be a finite alphabet" - the finiteness is given by the definition of Sigma

l. 261: "is" missing

l. 478: incomplete statement, something missing

l. 521: redundant "a"

l. 534: "defined" missing?

If Section 6 is supposed to remain as you have set it up, it should probably not just be called Outlook, as it contains many results not mentioned before!

l. 555: please quote the conjections again.

l. 571: "on" missing

References:
Reference 3,4,5 have three different versions of Bojańczyk's name, only one of which is correct.

A lot of inconsistencies with first names (single letter, single letter with ., full first names, ..., see in particular References 34 and 35)!

Author name in Reference 29 completely misspelled...
