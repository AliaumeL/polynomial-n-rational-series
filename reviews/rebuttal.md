---
title: Rebuttal
author: Aliaume LOPEZ
date: 2024-03-27
lang: en-GB
---

We would like to thank the reviewers for their comments and suggestions, which
are all constructive and will definitely help to improve the quality of the
paper. In particular, we will add the reference to the ArXiv paper
`arXiv:2301.09234` in the introduction which is definitely relevant.

It is our understanding that a significant part of the reviewers' concerns
relates to quality of writing, and especially the high number of typos and
grammatical errors in the manuscript. We sincerely apologize for these mistakes
that made reading this paper difficult, and we acknowledge the lack of
consistency in the bibliographic section and character encoding errors which we
hope was not perceived as disrespectful. We will definitely correct these
issues in the revised version of the manuscript.

A second point raised by the reviewers is the lack of clarity for non-expert
readers, with a technical introduction which does not take enough time to
explain the state of the art, and for instance clearly state results obtained
in [9] to compare them with what is done in this paper. To address this issue,
we will take more time to introduce historical results and explain the various
classes of functions that have been studied before, expanding Figure 1 with
concrete examples. We will take time to introduce the various notions of
string-to-string functions (mealy machines, sequential transducers, rational
functions, regular functions, polyregular functions) with a clear table
comparing them and stating the status of "deciding aperiodicity" for each of
these classes. 

It seems reasonable for us to assume that the reader is familiar with finite
monoids, monadic second order logic on words, and weighted automata (hence,
with rational series) which are well established theories: describing them in a
few sentences with a reference to a standard book should also greatly
increase the readability of the paper.

A third point raised by the reviewers is that whether a proof belongs to the
appendix or the main body of the paper felt arbitrary, and that the key
ingredients of the proofs where not clearly identified. While it is difficult
to answer this question, we will try to illustrate on a few examples.

- Lemma 7 is a simple proof in the case of polyregular functions, and has
  a slightly more technical proof[^1] in the case of rational series, but the
  main interest of the paper is in polyregular functions, and therefore the
  proof is in appendix.
- Lemma 19 is a technical result which while technically new, follows proof
  schemes similar to those of [9, 12], and provides another proof of the
  correct part of the theorem of [23]. This is why it is in the appendix.
- Lemma 26 is the actual core of Theorem 29, which is a corrected version of
  a theorem from [23]. In the (incorrect) proof of [23], the error lies in the
  inductive step of the analogue of Lemma 26, which is why we decided to put
  and this is why this particular proof was kept in the main body of the paper,
  while the other technical details about multivariate polynomials were moved
  to the appendix. 
- Lemma 31 has a proof that is a bit technical, but the important part of the
  lemma is actually the statement itself, which decomposes a commutative
  polyregular function into actual *polynomials*. Hence, the proof is in
  appendix.

All the proofs of sections 5 and 6 are in appendix except for the ones that
combine technical lemmas, and a better trade-off between the sections will be
found in the revised version of the paper. We believe that the interesting
proofs are those of Lemmas 44, and 45, which really leverage the notion of
well-quasi-ordering.

We will therefore revise the "Outlook" section to shape it more as a discussion
of the results and their implications, which will leave space for a more
detailed introduction, explanations of the results, and interesting proofs of
section 5.

A fourth and important question raised by the reviewers was the relationship
between this paper and [9], which should be made clearer. Let us try to
put both papers in context. 

The concern of [9] is about $\mathbb{Z}$-polyregular functions (which are a
subclass of $\mathbb{Z}$-rational series), defining a notion of "aperiodicity"
for such functions, and proving that aperiodicity is decidable. The work of [9]
could be put into context as follows: since the introduction of polyregular
functions [4,5], there has been a corresponding notion of "aperiodic"
polyregular functions. However, decidability of aperiodicity remains an open
question, even in the specific case of unary output (the function output words
over a single letter alphabet). Notice that polyregular functions with unary
output are in fact functions from $\Sigma^*$ to $\mathbb{N}$ (we write a number
in unary). 

While the work of [9] could be interpreted as studying $\mathbb{Z}$-rational
series, it is really about deciding aperiodicity of a "variation" of
polyregular functions with unary output (elements of $\mathbb{N}$) that allows
negative outputs (elements of $\mathbb{Z}$). Unfortunately this "variation" is
substantial, and the relationship between $\mathbb{Z}$-polyregular functions
(of [9]) and $\mathbb{N}$-polyregular functions (unary output) remained unclear
up to this paper. In particular the decidability of aperiodicity for
$\mathbb{N}$-polyregular functions could not be deduced directly from [9]. 

This paper provides the combinatorial tools to understand the differences
between $\mathbb{Z}$-polyregular functions and $\mathbb{N}$-polyregular
functions (for instance, by giving decision procedures), and leverages these
tools to prove that aperiodicity is decidable for the latter **in the
commutative case**. This is a significant step towards the decidability of
aperiodicity for polyregular functions. The next step would be to drop the
assumption of commutativity, and then to allow the outputs to non-unary
alphabets. Both of these steps are beyond the scope of the current paper.

We hope that the above clarifications and proposed changes will address the
concerns of the reviewers, and would like to thank them again for the
constructive feedback.

[^1]: There is actually a simpler proof of Lemma 7 in the case of rational
series that avoids the use of Zariski closures and is more direct.
