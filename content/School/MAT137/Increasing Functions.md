---
course: MAT137
topic: increasing functions (definition and proofs)
date: 2026-10-28
tags:
  - MAT137
  - definitions
  - proofs
  - functions
prereq:
  - "[[Writing Proofs]]"
  - "[[Logic - Negations and Proof Structure]]"
next: "[[Proof by Induction]]"
week: W02
---

# Increasing Functions

Related: [[Writing Proofs]] · [[137 Course Definitions and Proof Structures]] · [[Reading the Graph of f from f']]

## Building the definition (Video 1.10)

$$f\text{ is increasing on an interval }I\iff\forall x_1,x_2\in I,\ \big(x_1<x_2\Rightarrow f(x_1)<f(x_2)\big)$$

Each piece is necessary:
- **"on $I$":** a function can be increasing on one interval and not on another. The concept is "increasing **on**".
- **$\forall$:** without a quantifier, the inequalities are meaningless.
- **$\Rightarrow$, not $\wedge$:** "$\forall x_1,x_2,\ x_1<x_2\wedge f(x_1)<f(x_2)$" is never true, since not every pair satisfies $x_1<x_2$.

> [!warning] Not "positive derivative"
> $f'>0$ is related to increasing but isn't the definition. A function with a corner can go up everywhere but have no derivative at the corner. The definition shouldn't use derivatives at all.

**Negation:**

$$f\text{ is not increasing on }I\iff\exists x_1,x_2\in I,\ \big(x_1<x_2\ \wedge\ f(x_1)\ge f(x_2)\big)$$

## Example: $f(x)=3x+7$ is increasing on $\mathbb R$ (Video 1.11)

WTS: $\forall x_1,x_2\in\mathbb R,\ x_1<x_2\Rightarrow f(x_1)<f(x_2)$.

*Proof.* Let $x_1,x_2\in\mathbb R$. Assume $x_1<x_2$. Multiply by $3>0$ and add $7$:

$$3x_1+7<3x_2+7$$

That is, $f(x_1)<f(x_2)$. $\blacksquare$

## Non-example: $g(x)=\cos x$ is not increasing on $[0,\pi]$ (Video 1.12)

WTS: $\exists x_1,x_2\in[0,\pi]$ with $x_1<x_2$ and $g(x_1)\ge g(x_2)$.

*Proof.* Take $x_1=0$ and $x_2=\frac\pi2$. Then $0<\frac\pi2$, and

$$g(0)=1\ge0=g\left(\tfrac\pi2\right)$$

$\blacksquare$

## Theorem: the sum of increasing functions is increasing (Video 1.13)

*Set-up:* let $f,g$ be functions on an interval $I$, and $h=f+g$.

*Theorem:* if $f$ and $g$ are increasing on $I$, then $h$ is increasing on $I$.

*Proof.* WTS: $\forall x_1,x_2\in I,\ x_1<x_2\Rightarrow h(x_1)<h(x_2)$.

Let $x_1,x_2\in I$ and assume $x_1<x_2$. WTS $h(x_1)<h(x_2)$.
- $f$ is increasing on $I$ (hypothesis), so $f(x_1)<f(x_2)$.
- $g$ is increasing on $I$ (hypothesis), so $g(x_1)<g(x_2)$.

Add the two inequalities:

$$h(x_1)=f(x_1)+g(x_1)<f(x_2)+g(x_2)=h(x_2)$$

$\blacksquare$

> [!important] Takeaway
> We **assumed** and **used** that $f$ and $g$ are increasing (hypothesis). We **proved** that $h$ is increasing (conclusion).
