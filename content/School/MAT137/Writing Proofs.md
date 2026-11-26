---
course: MAT137
topic: writing proofs
date: 2026-10-28
tags:
  - MAT137
  - proofs
  - logic
prereq:
  - "[[Logic - Negations and Proof Structure]]"
next: "[[Increasing Functions]]"
week: W02
---

# Writing Proofs

Related: [[Logic - Negations and Proof Structure]] · [[Increasing Functions]] · [[Proof by Induction]] · [[Epsilon-Delta Proofs]]

## Building blocks (Video 1.5)

- **$\forall x\in A,\ P(x)$, finite $A$:** check every element. For $A=\{2,3,4\}$, check $2>0$, $3>0$, $4>0$. $\blacksquare$
- **To disprove a statement, prove its negation.** $\neg(\forall x\in\mathbb Z,\ x>0)$ is $\exists x\in\mathbb Z,\ x\le0$. Take $x=-6$.
- **$\exists x$:** name a witness, then verify it.
- **$\forall x\,\exists y$:** first **fix** an arbitrary $x$ ("Let $x\in\mathbb Z$"), then **choose** $y$ in terms of $x$, then **verify**.

Example: prove $\forall x\in\mathbb Z,\ \exists y\in\mathbb Z,\ x<y$.

> Let $x\in\mathbb Z$. Take $y=x+1$. Then $y\in\mathbb Z$ and $y>x$. $\blacksquare$

> [!important] Fix before you use
> In the statement, $x$ is quantified and has no meaning by itself. Before writing $y=x+1$, $x$ must already be fixed. Skipping this step is how pseudo-proofs of false claims get written, e.g. in $\varepsilon$-$\delta$ proofs.

## Theorems are usually if-then (Video 1.13)

- **Set-up:** introduce the notation ("Let $f,g$ be functions on $I$ and $h=f+g$").
- **Hypothesis** (the IF part): you may **assume** it. You don't prove it.
- **Conclusion** (the THEN part): this is what you **prove**.
- Write "WTS" (want to show) or "my goal is" before a statement you haven't proved yet. Otherwise the reader thinks you're claiming it.

## Use the definition to get the structure (Videos 1.11, 1.12)

You don't need a memorized template. **Unpack the definition** (or its negation), and the quantifiers tell you how the proof goes:
- $\forall$: "Let ... be arbitrary"
- $\Rightarrow$: "Assume [IF], WTS [THEN]"
- $\exists$: "Take ... = ..." and verify

Examples in [[Increasing Functions]].

## A bad proof and how to fix it (Video 1.9)

**Bad "proof"** of $\sqrt{xy}\le\frac{x+y}{2}$: square both sides, expand, multiply by $4$, subtract $4xy$, get $0\le(x-y)^2$, "true, done."

What's wrong:
1. **It assumes what it wants to prove.** It only shows "inequality $\Rightarrow$ $0\le(x-y)^2$", which says nothing about whether the inequality holds. The steps were never checked to be reversible.
2. **The statement doesn't say when it holds.** It's false in general: with $x=y=-1$,
$$\sqrt{(-1)(-1)}=1\not\le-1=\frac{-1+(-1)}{2}$$

A proof that never uses $x,y\ge0$ can't be right.
3. **No words.** Explain the steps that need justification.

**Correct version.** *Theorem:* for all $x,y\ge0$, $\sqrt{xy}\le\frac{x+y}2$.

*Proof.* Every square is non-negative, so

$$\begin{aligned}
0&\le(x-y)^2=x^2-2xy+y^2\\
4xy&\le x^2+2xy+y^2=(x+y)^2\\
xy&\le\left(\frac{x+y}{2}\right)^2
\end{aligned}$$

Both sides are non-negative (since $x,y\ge0$), so we can take square roots. Remember that $\sqrt{a^2}=|a|$:

$$\sqrt{xy}\le\left|\frac{x+y}{2}\right|=\frac{x+y}{2}$$

The absolute value drops because $x,y\ge0$. This is where the hypothesis gets used. $\blacksquare$

> [!tip] Rough work vs proof
> You find the idea by working **backwards** from the goal. That's rough work, not a proof. The proof starts from things you **know** are true and moves forward, each step following from the last, until it reaches the goal.
