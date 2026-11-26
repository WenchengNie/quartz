---
course: MAT137
topic: set-builder notation
date: 2026-10-08
tags:
  - MAT137
  - sets
  - notation
prereq:
  - "[[Sets and Notation]]"
next: "[[Logic - Negations and Proof Structure]]"
week: W01
---

# Set-Builder Notation

Related: [[Logic - Negations and Proof Structure]] · [[Epsilon-Delta Proofs]]

## Two forms

**Filter form:** all $x\in D$ for which the statement $P(x)$ is true.

$$\{x\in D : P(x)\}$$

$$\{x\in\mathbb R : x^2<4\}=(-2,2)$$

**Outputs form:** all values $f(x)$ as $x$ ranges over $D$.

$$\{f(x) : x\in D\}$$

$$\begin{aligned}
\{x^2 : x\in\mathbb R\}&=[0,\infty)\\
\{2x+1 : x\in\mathbb Z\}&=\{\dots,-3,-1,1,3,5,\dots\}\ \text{(the odd integers)}
\end{aligned}$$

The domain changes the answer: $\{2x+1 : x\in\mathbb R\}=\mathbb R$, but with $x\in\mathbb Z$ you only get the odd integers.

Read ":" or "|" as "such that", and use it **only** inside set-builder notation.

## Intervals (Video 1.2)

Fix $a,b\in\mathbb R$:

$$\begin{aligned}
[a,b]&=\{x\in\mathbb R : a\le x\le b\}\\
(a,b)&=\{x\in\mathbb R : a<x<b\}\\
[a,b)&=\{x\in\mathbb R : a\le x<b\}\\
(a,\infty)&=\{x\in\mathbb R : x>a\}\\
(-\infty,b]&=\{x\in\mathbb R : x\le b\}
\end{aligned}$$

- Square bracket means the endpoint is included (filled dot). Round bracket means it's excluded (open dot).
- $\infty$ is not a number, so it always gets a round bracket. It just means "no constraint on that side."

## Telling them apart

- A statement right of the colon means the filter form, and the elements are the $x$'s.
- "$x\in D$" right of the colon means the outputs form, and the elements are whatever the left expression produces.

## Translation

The outputs form is shorthand for a filter form with an $\exists$ inside the condition:

$$\{f(x) : x\in D\}=\{y : \exists x\in D,\ y=f(x)\}$$

To show $y$ is in the set, find an $x\in D$ with $f(x)=y$. For example, $-6\in\{2x : x\in\mathbb Z\}$ because $x=-3$ gives $2x=-6$.

## Validity check for $\{A : B\}$

- $A$ must be an object (a variable or an expression).
- $B$ must be a statement (a condition).
- A statement on the left is malformed, for example:
$$\{k=2x+1 : x\in\mathbb R\}$$

## Bound vs free variables

- The variable introduced by the notation is bound (a dummy).
- Any other variable is free and must be fixed or defined beforehand. For example, with $k$ fixed:
$$\{x\in\mathbb R : k=2x+1\}=\left\{\tfrac{k-1}{2}\right\}$$

This is a set of $x$'s, not $k$'s.

> [!warning] Common trap
> Don't assume a set is $\mathbb R$ just because the domain is $\mathbb R$. Check what the condition filters, or what values the expression can actually take.

## Where quantifiers are allowed

Quantifiers go only **inside the condition**, on a variable other than the set's own. The set's own variable stays free in the condition.

$$\begin{aligned}
\text{Even integers:}\quad &\{x\in\mathbb Z : \exists k\in\mathbb Z,\ x=2k\}\\
\text{Perfect squares:}\quad &\{n\in\mathbb Z : \exists m\in\mathbb Z,\ n=m^2\}\\
\text{Non-negative reals:}\quad &\{x\in\mathbb R : \exists y\in\mathbb R,\ x=y^2\}=[0,\infty)
\end{aligned}$$

- Never put $\forall$ or $\exists$ in front of the set's own variable, as in $\{\forall x\in\mathbb Z : x>0\}$. That is ill-formed.
- In the outputs form, the part after the colon is just "$x\in D$" (where $x$ comes from). Writing $\{2x : \forall x\in\mathbb Z^-\}$ is wrong. The $\forall$ is an incomplete claim with no body, and if a body were added it would bind $x$, leaving the $2x$ on the left with nothing to refer to.
- Test: plug in a specific value of the set's variable into the condition. It should give a true or false statement.

## Practice: writing sets in set-builder notation

$$\begin{aligned}
\text{Non-negative integers less than }137:\quad &\{x\in\mathbb Z : 0\le x<137\}\\
\text{Distance from }3\text{ at most }137:\quad &\{x\in\mathbb R : |x-3|\le137\}\\
\text{Domain of }\tfrac{x}{x^2-x-6}:\quad &\{x\in\mathbb R : x\ne3\ \wedge\ x\ne-2\}\\
\text{Rationals in }(1,5)\text{ except }3:\quad &\{x\in\mathbb Q : 1<x<5\ \wedge\ x\ne3\}
\end{aligned}$$

Negative even integers, two ways:

$$\begin{aligned}&\{2x : x\in\mathbb Z^-\}\\ &\{k\in\mathbb Z : \exists x\in\mathbb Z,\ x<0\ \wedge\ k=2x\}\end{aligned}$$

Checklist:
1. No $\forall$ in front of the set's variable.
2. The domain matches the wording ($\mathbb R$ vs $\mathbb Z$ vs $\mathbb Q$).
3. Every phrase in the English description appears as a condition ("non-negative," "less than," "even," "except").

---

# Exam exemplar: representing $\mathbb Q$ in set-builder notation (Term Test 1, Q2)
Six attempts at writing $\mathbb Q$:

$$\begin{aligned}
A&=\left\{x\in\mathbb R : \forall a,b\in\mathbb Z,\ x=\tfrac ab\right\} & D&=\left\{x\in\mathbb R : x=\tfrac ab\text{ for some }a,b\in\mathbb Z\right\}\\
B&=\left\{\tfrac ab : a,b\in\mathbb Z\text{ and }b\ne0\right\} & E&=\left\{\forall x\in\mathbb R : x=\tfrac ab\text{ for some }a,b\in\mathbb Z\right\}\\
C&=\left\{\tfrac ab : a,b\in\mathbb Z : b\ne0\right\} & F&=\left\{x\in\mathbb R,\ a,b\in\mathbb Z : b\ne0\text{ and }x=\tfrac ab\right\}
\end{aligned}$$

- **Correct:** $B$ (outputs form) and $D$ (filter form).
- **Makes sense but is empty:** $A$. An $x$ would have to equal $\frac ab$ for every $a,b$ simultaneously, which is impossible.
- **Not valid notation:**
  - $C$ has two colons. A colon is not a general abbreviation for "such that," only one belongs in set-builder notation.
  - $E$ has a quantifier before the colon. Before the colon you can only name a generic element of a larger set.
  - $F$ lists more than one variable from different sets before the colon. Quantify $a,b$ after the colon, as part of the property of $x$.
- Compare with $D$: it needs "for some $a,b$" ($\exists$), and a $\forall$ there changes the set completely.
- Note: in $D$, $b$ should also be nonzero to be fully correct, since $\frac a0$ is undefined. $B$ includes $b\ne0$.
