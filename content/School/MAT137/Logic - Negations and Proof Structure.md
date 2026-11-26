---
course: MAT137
topic: logic, negations, proof structure
date: 2026-10-08
tags:
  - MAT137
  - logic
  - negation
  - proofs
prereq:
  - "[[Sets and Notation]]"
  - "[[Set-Builder Notation]]"
next: "[[Writing Proofs]]"
week: W01
---

# Logic - Negations and Proof Structure

Related: [[Set-Builder Notation]] · [[Epsilon-Delta Proofs]] · [[Writing Proofs]] · [[Sets and Notation]]

## Quantifiers (Video 1.3)

- $\forall$ = "for all / for every". $\exists$ = "there exists / there is".
- In math, "there exists" always means **at least one**, never "exactly one". "The equation has a solution" means at least one solution.
- Read $\exists x\in\mathbb R,\ x^2=5$ as "there exists $x$ **such that** $x^2=5$". The "such that" is only for grammar. True: $x=-\sqrt5$ works, and one witness is enough.
- An open statement like $x^2=5$ with $x$ never fixed or quantified is **neither true nor false. It is meaningless.** Never start a definition, theorem, or proof with one.

## Order of quantifiers (Video 1.4)

$$\forall x\in\mathbb Z,\ \exists y\in\mathbb Z,\ x<y\qquad\text{TRUE}$$

$$\exists y\in\mathbb Z,\ \forall x\in\mathbb Z,\ x<y\qquad\text{FALSE}$$

- In $\forall x\,\exists y$, $y$ may change with $x$: for each $x$, take $y=x+1$.
- In $\exists y\,\forall x$, it must be the **same** $y$ for every $x$, i.e. an integer bigger than all integers. That doesn't exist.
- The order tells you what depends on what.

## Quantifiers and the empty set (Video 1.6)

For **any** property $P$:

$$\forall x\in\varnothing,\ P(x)\quad\text{is TRUE (vacuously)}$$

$$\exists x\in\varnothing,\ P(x)\quad\text{is FALSE}$$

- To prove $\forall$: check every element. There are zero, so there's nothing to check.
- To disprove $\forall$: find one element that fails. There's no element at all, so you can't.

## Negation rules (algorithmic)

$$\begin{aligned}
\neg(A\wedge B)&\equiv\neg A\vee\neg B\\
\neg(A\vee B)&\equiv\neg A\wedge\neg B\\
\neg(A\Rightarrow B)&\equiv A\wedge\neg B\\
\neg(\forall x\,P)&\equiv\exists x\,\neg P\\
\neg(\exists x\,P)&\equiv\forall x\,\neg P
\end{aligned}$$

Work from the outside in, and re-check the last layer: did "or" become "and," and did the implication become "and" instead of staying an implication?

## Worked examples

$$\begin{aligned}
\neg\big(A\Rightarrow(B\vee C)\big)&\equiv A\wedge\neg B\wedge\neg C\\
\neg\big(A\Rightarrow\forall x\in\mathbb Z,\ C\big)&\equiv A\wedge\exists x\in\mathbb Z,\ \neg C\\
\neg(\forall x\,\exists y,\ x<y)&\equiv\exists x\,\forall y,\ x\ge y
\end{aligned}$$

$$\neg\Big(\forall x,y,\ \big[x<y\Rightarrow\exists z,\ (x<z\vee z<y)\big]\Big)\equiv\exists x,y:\ x<y\ \wedge\ \forall z,\ (z\le x\wedge z\ge y)$$

## Counting statements

- "Every test has at least two problems with property $U$" negates to "some test has fewer than two (at most one) problems with property $U$."
- Equivalently, "some test where, among any two different problems, at least one fails $U$."
- Don't flip the property inside the count. Flip the outer quantifier and the count.
- Check your wording against a borderline case, such as exactly one problem with $U$, to make sure it isn't too strong.

## Equivalent forms of a conditional

For $P\Rightarrow Q$:
- Contrapositive $\neg Q\Rightarrow\neg P$ is equivalent.
- $\neg P\vee Q$ is equivalent.
- Converse $Q\Rightarrow P$ and inverse $\neg P\Rightarrow\neg Q$ are not equivalent.
- $P\wedge\neg Q$ is the negation.

> [!warning] Quantifier trap
> The negation of "loves all dogs" is "dislikes at least one dog," not "dislikes all dogs."

## Meaning of a conditional (Video 1.7)

$P\Rightarrow Q$ means: **whenever $P$ is true, $Q$ is true.** Nothing more. When $P$ is false, it says nothing.

Example: $x>10\Rightarrow x>6$ is true, and all three allowed cases occur:

$$\begin{aligned}
x=12&:\ P\text{ true},\ Q\text{ true}\\
x=8&:\ P\text{ false},\ Q\text{ true}\\
x=3&:\ P\text{ false},\ Q\text{ false}
\end{aligned}$$

What you can conclude from "$x\in A\Rightarrow x>0$":
- $x\notin A$: nothing.
- $x>0$: nothing (that's the converse).
- $x\le0$: then $x\notin A$ (the contrapositive).

A false hypothesis makes the whole conditional true, even if you can't tell whether the conclusion is true. "If $0>1$, then [some huge number] is prime" is true.

## If and only if

$$P\iff Q\quad\text{means}\quad(P\Rightarrow Q)\ \wedge\ (Q\Rightarrow P)$$

Equivalently, $P$ and $Q$ are both true or both false. Written "iff", but say "if and only if".
- $n$ is a multiple of $4\Rightarrow n$ is even, but not conversely ($n=6$).
- $n$ is even $\iff n+1$ is odd.

In math, "if" and "iff" are never interchangeable, even though casual English mixes them up.

## Hidden quantifiers in conditionals (Video 1.8)

"If $x\in A$, then $x>0$" really means

$$\forall x\in\mathbb R,\ \big(x\in A\Rightarrow x>0\big)$$

so its negation is

$$\exists x\in\mathbb R,\ \big(x\in A\ \wedge\ x\le0\big)$$

- The negation of an if-then is **never** an if-then. It is the fourth case: the hypothesis is true **and** the conclusion is false.
- Many conditionals hide a $\forall$. When negating, **always write the quantifier explicitly**.

## Proof structure

- $\forall x\,P(x)$: "Let $x$ be arbitrary..." then prove $P(x)$.
- $\exists x\,P(x)$: "Choose $x=\dots$" and verify.
- $A\Rightarrow B$: direct (assume $A$, show $B$), contrapositive (assume $\neg B$, show $\neg A$), or contradiction.
- Quantifier order dictates dependence: in $\forall\varepsilon\,\exists\delta$, $\delta$ may depend on $\varepsilon$ but not on $x$.

---

# Exam exemplars: true/false and quantifiers (Term Test 1, Q1)
**(a)** "If $0>1$, then $0>2$": **true.** The hypothesis is false, so the conditional is vacuously true.

**(b)** $\exists m\in\mathbb Z$ such that $\forall n\in\mathbb N,\ m<n$: **true.** Take $m=-1$.

**(c)** For positive reals $x$, $\ln(x^2+x)=\ln(x^2)\cdot\ln(x)$: **false.** This is a common log-rule error. At $x=1$:

$$\ln(1^2+1)=\ln2\ne0=\ln(1)\cdot\ln(1)$$

**(d)** $\forall a\in\mathbb R,\ \exists b\in\mathbb R,\ \forall c\in\mathbb R,\ \exists d\in\mathbb R:\ a+b=c+d$: **true.** Given $a$, take $b=0$. Then for any $c$, take $d=a-c$. Later quantifiers may depend on earlier ones, so $d$ can depend on $a$ and $c$.

> [!tip] Reminder
> - A conditional with a false hypothesis is true.
> - $\exists m\,\forall n$ asks for **one** $m$ that works for all $n$.
> - Counterexample for a false statement: plug in one simple value, like $x=1$.

# Exam exemplar: a new definition ("crowded"), Term Test 1 Q7

Unpack the definition into quantifiers, negate it mechanically, test it on small examples, then prove with the standard proof structure.

$$S\subseteq\mathbb R\text{ is crowded}\iff\forall x\in S,\ \forall y\in S,\ \Big[x<y\Rightarrow\exists z\in S:\ x<z<y\Big]$$

**(a) Negation, "not crowded":**

$$\exists x\in S,\ \exists y\in S:\ \Big[x<y\ \wedge\ \forall z\in S,\ (x\ge z\ \vee\ z\ge y)\Big]$$

In words: two elements $x<y$ of $S$ with nothing of $S$ between them, i.e. $S\cap(x,y)=\varnothing$.

**(b) Why the condition $x<y$ matters:** without it, the statement $\forall x,y\in S,\ \exists z\in S:\ x<z<y$ fails for every non-empty $S$. Take $y=x$, and you'd need $x<z<x$.

**(c) Which are crowded ($a<b$)?** $(a,b)$, $[a,b)$, $(a,b]$, $[a,b]$ are. $\{a,b\}$ is not. $(b,a)=\varnothing$ is vacuously crowded.

**(d) Prove $S=(0,1)\cup\{7\}$ is crowded.**

Let $x,y\in S$ be arbitrary and assume $x<y$. Since $7$ is the largest element, $x\ne7$, so $x\in(0,1)$.
- **Case $y=7$:** let $z=\frac{x+1}2$. Then $x<z<1<7=y$, and $z\in(0,1)\subseteq S$.
- **Case $y\in(0,1)$:** let $z=\frac{x+y}2$. Then $x<z<y$, and $0<x<z<y<1$, so $z\in S$.

In either case we found $z\in S$ with $x<z<y$.

**(e) Is "$S,T$ crowded $\Rightarrow S\cup T$ crowded" true? False.**

Counterexample: $S=[0,1]$, $T=[2,3]$.
- Each is crowded: for $[a,b]$ with $a<b$, take $x<y$ in it and $z=\frac{x+y}2$. Then $a\le x<z<y\le b$, so $z\in[a,b]$.
- The union is not: take $x=1$ and $y=2$. Then $x<y$ but no element of $S\cup T$ lies between them.

Other valid counterexamples: $S=\{0\}$ and $T=\{1\}$ (each vacuously crowded), or $S=(0,1)\cup\{7\}$ and $T=(0,1)\cup\{8\}$.

> [!important] Takeaways
> - To prove a $\forall x,y\,[x<y\Rightarrow\dots]$ property: "Let $x,y$ be arbitrary. Assume $x<y$." Then construct the witness. The midpoint $\frac{x+y}2$ is the usual choice.
> - To disprove a closure claim (like unions), use the **simplest** counterexample, and prove both its hypotheses and the failure of its conclusion.
> - Single-point sets and the empty set satisfy "for all pairs with $x<y$" statements vacuously.

# Exam exemplar: injective definition (Term Test 1, Q5a)

$$f\text{ is injective on }D\iff\forall x,y\in D,\ f(x)=f(y)\Rightarrow x=y$$

Equivalent form (the contrapositive):

$$\forall x,y\in D,\ x\ne y\Rightarrow f(x)\ne f(y)$$
