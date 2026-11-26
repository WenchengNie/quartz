---
course: MAT102
topic: definitions and proof structures
date: 2026-10-19
tags:
  - MAT102
  - definitions
  - proofs
prereq:
  - "[[Reading Mathematics]]"
  - "[[Sets and Propositional Logic]]"
  - "[[Quantifiers and Implications]]"
---

# 102 Course Definitions and Proof Structures (Term Test 1)


Related: [[Reading Mathematics]] · [[Sets and Propositional Logic]] · [[Quantifiers and Implications]] · [[Proof by Contradiction]] · [[Relations]] · [[Injectivity, Surjectivity, and Bijectivity]]

Quick-reference sheet for Readings 1–5. Worked examples and proofs are in the linked topic notes.

## Reading mathematical statements

- **Definition:** fixes the exact meaning of a term; test it with examples and non-examples.
- **Hypothesis:** assumptions of a result. **Conclusion:** what follows from those assumptions.
- **Theorem / proposition:** a proved result. **Lemma:** a supporting result. **Corollary:** a consequence of another result.
- **Proof:** a logically justified argument establishing the claim.
- **SET:** explain why each line follows from definitions, assumptions, or previous results—not just what the line says.

## Sets and logic

- **Set-builder:** $\{x\in U:P(x)\}$ contains exactly the elements satisfying $P$.
- **Subset:** $A\subseteq B\iff \forall x,\ x\in A\Rightarrow x\in B$.
- **Equality:** $A=B\iff A\subseteq B$ and $B\subseteq A$.
- **Union:** $A\cup B=\{x:x\in A\text{ or }x\in B\}$.
- **Intersection:** $A\cap B=\{x:x\in A\text{ and }x\in B\}$.
- **Complement in $U$:** $A^c=\{x\in U:x\notin A\}$.
- **Product:** $A\times B=\{(a,b):a\in A,\ b\in B\}$.
- **Proposition:** a statement with a definite truth value. **Predicate:** a statement with free variables whose truth depends on their values.
- **AND:** true only when both statements are true. **OR:** true when at least one is true. **NOT:** reverses the truth value.
- **Logical equivalence:** same truth value for every assignment.

## Quantifiers, implications, and negations

- $\forall x\in A,\ P(x)$: every element works.
- $\exists x\in A,\ P(x)$: at least one element works.
- $\forall x\,\exists y$: $y$ may depend on $x$. $\exists y\,\forall x$: one fixed $y$ works for every $x$.
- **Implication:** $P\Rightarrow Q$ is false exactly when $P$ is true and $Q$ is false.
- **Converse:** $Q\Rightarrow P$; not equivalent in general.
- **Contrapositive:** $\neg Q\Rightarrow\neg P$; equivalent to the original implication.

$$
\neg(\forall x\,P(x))\equiv\exists x\,\neg P(x),\qquad
\neg(\exists x\,P(x))\equiv\forall x\,\neg P(x).
$$

$$
\neg(P\Rightarrow Q)\equiv P\wedge\neg Q,\qquad
P\Rightarrow Q\equiv\neg P\vee Q.
$$

$$
\neg(P\wedge Q)\equiv\neg P\vee\neg Q,\qquad
\neg(P\vee Q)\equiv\neg P\wedge\neg Q.
$$

## Relations and equivalence classes

A **binary relation** from $A$ to $B$ is a subset $R\subseteq A\times B$. Write $aRb$ when $(a,b)\in R$. A relation on $A$ uses $A\times A$.

| Property | Definition (variables in $A$) |
|---|---|
| Reflexive | $\forall a,\ aRa$ |
| Symmetric | $\forall a,b,\ aRb\Rightarrow bRa$ |
| Antisymmetric | $\forall a,b,\ (aRb\wedge bRa)\Rightarrow a=b$ |
| Transitive | $\forall a,b,c,\ (aRb\wedge bRc)\Rightarrow aRc$ |
| Irreflexive | $\forall a,\ \neg(aRa)$ |

- **Equivalence relation:** reflexive, symmetric, transitive.
- **Equivalence class:** $[a]=\{x\in A:xRa\}$.
- Classes are nonempty, cover $A$, and are equal or disjoint: they **partition** $A$.
- $[a]=[b]\iff aRb$ for an equivalence relation.

> [!warning] Antisymmetric does not mean “not symmetric”
> It rules out two-way relations between **distinct** elements. Equality is both symmetric and antisymmetric.

## Orders and bounds

A **weak partial order** $\preceq$ is reflexive, antisymmetric, and transitive. A **strong (strict) partial order** $\prec$ is irreflexive and transitive (hence asymmetric).

A weak order is **total** if every pair is comparable: $a\preceq b$ or $b\preceq a$.

For a subset $S$ of an ambient partially ordered set $A$:

| Term | Definition |
|---|---|
| Maximal element $m$ of $S$ | $m\in S$ and $\forall x\in S,\ m\preceq x\Rightarrow x=m$ |
| Minimal element $m$ of $S$ | $m\in S$ and $\forall x\in S,\ x\preceq m\Rightarrow x=m$ |
| Greatest (maximum) element $g$ | $g\in S$ and $\forall x\in S,\ x\preceq g$ |
| Least (minimum) element $\ell$ | $\ell\in S$ and $\forall x\in S,\ \ell\preceq x$ |
| Upper bound $u$ | $u\in A$ and $\forall x\in S,\ x\preceq u$ |
| Lower bound $l$ | $l\in A$ and $\forall x\in S,\ l\preceq x$ |
| Supremum $s=\sup S$ | An upper bound with $s\preceq u$ for every upper bound $u$ |
| Infimum $t=\inf S$ | A lower bound with $l\preceq t$ for every lower bound $l$ |

> [!tip] Maximal vs greatest
> Maximal means nothing in $S$ is strictly above it. Greatest means it is above **every** element of $S$. Several maximal elements can exist; a greatest element, if it exists, is unique.

**Examples.**
- In $\mathbb R$ with $\le$, $S=(0,1)$ has $\inf S=0$, $\sup S=1$, but no minimum or maximum.
- Order $A=\mathcal P(\{1,2\})$ by $\subseteq$. For $S=\{\{1\},\{2\}\}$, both elements are maximal and minimal in $S$; neither is greatest or least. In the ambient set $A$, $\sup S=\{1,2\}$ and $\inf S=\varnothing$.

Bounds depend on the **ambient ordered set** and need not belong to $S$.

## Functions, images, and preimages

A function $f:A\to B$ consists of a domain $A$, a codomain $B$, and a rule assigning exactly one element of $B$ to each element of $A$.

Its graph is the relation

$$
\Gamma(f)=\{(a,f(a)):a\in A\}\subseteq A\times B.
$$

- **Left-total:** $\forall a\in A,\ \exists b\in B,\ (a,b)\in R$ (at least one output).
- **Functional:** $\forall a\in A,\ \forall b,c\in B,\ ((a,b)\in R\wedge(a,c)\in R)\Rightarrow b=c$ (at most one output).
- Together: exactly one output per input, defining a function with the specified domain and codomain.

For $U\subseteq A$ and $V\subseteq B$:

$$
f(U)=\{f(u):u\in U\}
=\{b\in B:\exists u\in U,\ f(u)=b\},
$$

$$
f^{-1}(V)=\{a\in A:f(a)\in V\}.
$$

- **Image:** outputs reached from the chosen input set.
- **Preimage:** all inputs landing in the chosen target set; no inverse function is required.
- **Range:** $f(A)$, the image of the entire domain; always a subset of the codomain $B$.

**Example.** For $f:\mathbb R\to\mathbb R$, $f(x)=x^2$:

$$
f(\{-2,2,3\})=\{4,9\},\qquad
f^{-1}(\{4,9\})=\{-3,-2,2,3\}.
$$

The domain and codomain are $\mathbb R$; the range is $[0,\infty)$.

## Injective, surjective, bijective

- **Injective:** $\forall x_1,x_2\in A,\ f(x_1)=f(x_2)\Rightarrow x_1=x_2$. Different inputs never share an output.
- **Surjective:** $\forall b\in B,\ \exists a\in A,\ f(a)=b$. Every codomain element is reached; $f(A)=B$.
- **Bijective:** both; every codomain element has exactly one preimage.

> [!warning] Function vs injective
> “Each input has exactly one output” defines a function. Injectivity additionally prevents **different inputs** from sharing an output. An injective function may miss codomain elements.

## Proof structures

- **Universal claim:** let the element be arbitrary; prove the property.
- **Existence:** construct a witness and check it satisfies every condition.
- **Direct implication:** assume the hypothesis; derive the conclusion.
- **Contrapositive:** assume the negation of the conclusion; derive the negation of the hypothesis.
- **Contradiction:** assume the claim is false; derive a contradiction.
- **Set inclusion:** let $x$ be arbitrary in the first set; show it belongs to the second.
- **Set equality:** prove both inclusions.
- **Relation properties:** fix arbitrary elements satisfying the property's hypothesis; establish its conclusion. One counterexample disproves a property.
- **Injective:** assume equal outputs and deduce equal inputs.
- **Surjective:** fix arbitrary $b\in B$; construct $a\in A$ and check $f(a)=b$.
- **Not injective:** give two distinct inputs with equal outputs.
- **Not surjective:** give a codomain element and prove no input maps to it.
- **Supremum:** prove it is an upper bound, then prove it is below every upper bound. Reverse the inequalities for infimum.

For practice, write the exact definition before starting the argument; check every constructed element belongs to the required set.
