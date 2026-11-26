---
course: MAT137
topic: proof by induction
date: 2026-10-28
tags:
  - MAT137
  - proofs
  - induction
prereq:
  - "[[W02 - Writing Proofs|Writing Proofs]]"
next: "[[W03 - The Idea of a Limit|The Idea of a Limit]]"
week: W02
---

# Proof by Induction

Related: [[W02 - Writing Proofs|Writing Proofs]] · [[W01 - Logic - Negations and Proof Structure|Logic - Negations and Proof Structure]]

## Structure (Video 1.14)

To prove $S_n$ for all integers $n\ge n_0$:
1. **Base case:** prove $S_{n_0}$.
2. **Induction step:** prove $\forall n\ge n_0,\ S_n\Rightarrow S_{n+1}$.

Together these give $S_{n_0}$, then $S_{n_0}\Rightarrow S_{n_0+1}$, then $S_{n_0+1}\Rightarrow S_{n_0+2}$, and so on, so $S_n$ holds for all $n\ge n_0$.

> [!warning] Common misunderstanding
> The induction step does **not** prove $S_n$ or $S_{n+1}$. It only proves the **implication** $S_n\Rightarrow S_{n+1}$. Without the base case, every $S_n$ could still be false.

Writing tips: say "by induction" up front, **fix** an arbitrary $n$ in the induction step, and mark where you use the **induction hypothesis** (the assumed $S_n$).

## Example: $n!>2^n$ for all $n\ge4$

**Base case** ($n=4$):

$$4!=24>16=2^4$$

**Induction step.** Let $n\ge4$. Assume $n!>2^n$ (IH). WTS $(n+1)!>2^{n+1}$.

$$\begin{aligned}
(n+1)!&=(n+1)\cdot n!\\
&>(n+1)\cdot2^n&&\text{(by IH)}\\
&>2\cdot2^n&&\text{(since }n+1\ge5>2)\\
&=2^{n+1}
\end{aligned}$$

$\blacksquare$

## One theorem, two proofs (Video 1.15)

*Theorem:* for every positive integer $n$,

$$1+2+\dots+n=\frac{n(n+1)}{2}$$

**Proof 1 (direct, no induction).** Let $S_n=1+2+\dots+n$. Write the sum forwards and backwards, then add the two lines:

$$\begin{aligned}
S_n&=1+2+\dots+n\\
S_n&=n+(n-1)+\dots+1\\
2S_n&=\underbrace{(n+1)+(n+1)+\dots+(n+1)}_{n\text{ terms}}=n(n+1)
\end{aligned}$$

So $S_n=\frac{n(n+1)}2$. $\blacksquare$

**Proof 2 (induction).**

Base case $n=1$:

$$1=\frac{1\cdot2}{2}$$

Induction step: let $n\ge1$ and assume $1+\dots+n=\frac{n(n+1)}2$ (IH). Then

$$\begin{aligned}
1+\dots+n+(n+1)&=\frac{n(n+1)}{2}+(n+1)&&\text{(by IH)}\\
&=\frac{n(n+1)+2(n+1)}{2}\\
&=\frac{(n+1)(n+2)}{2}
\end{aligned}$$

This is the formula with $n+1$ in place of $n$. $\blacksquare$

Both proofs are equally valid. Use a direct proof when you can handle all $n$ at once, and induction when $S_{n+1}$ is easy to build from $S_n$.

## Variations: what exactly did we prove? (Week 2 slides)

| Proven | $S_n$ guaranteed for |
|---|---|
| $S_3$, and $\forall n\ge1,\ S_n\Rightarrow S_{n+1}$ | $n\ge3$ |
| $S_1$, and $\forall n\ge3,\ S_n\Rightarrow S_{n+1}$ | only $n=1$ (the chain never reaches $S_3$) |
| $S_1$, and $\forall n\ge1,\ S_n\Rightarrow S_{n+3}$ | $n=1,4,7,\dots$ |
| $S_1$, and $\forall n\ge1,\ S_{n+1}\Rightarrow S_n$ | only $n=1$ (backwards) |

To get every $n\ge1$ from the step $S_n\Rightarrow S_{n+3}$, you need **three** base cases: $S_1$, $S_2$ and $S_3$.

> [!warning] "Every set of $N$ students gets the same grade"
> The bad proof splits $N+1$ students into the first $N$ and the last $N$, which overlap. For $N=1$ the two groups of one student **don't overlap**, so $S_1\Rightarrow S_2$ fails. The argument only proves $S_N\Rightarrow S_{N+1}$ for $N\ge2$. Always check that the induction step works for the **smallest** $n$.
