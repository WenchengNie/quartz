---
course: MAT137
topic: sets and notation
date: 2026-10-28
tags:
  - MAT137
  - sets
  - notation
next: "[[W01 - Set-Builder Notation|Set-Builder Notation]]"
week: W01
---

# Sets and Notation

Related: [[W01 - Set-Builder Notation|Set-Builder Notation]] · [[W01 - Logic - Negations and Proof Structure|Logic - Negations and Proof Structure]]

## What is a set

A set is a collection of things, called its **elements**. This is informal but good enough for MAT137. Curly braces mark where the description starts and ends:

$$A=\{\text{all even integers}\}\qquad B=\{4,5,6\}$$

## Membership and subsets

Using $B=\{4,5,6\}$, $C=\{2,4\}$, $D=\{4,5\}$:

$$4\in B\qquad 2\notin B\qquad D\subseteq B$$

- $\in$ relates an **element** to a set. $\subseteq$ relates a **set** to a set.
- $D\subseteq B$ means every element of $D$ is also in $B$.

> [!warning] Subset notation isn't universal
> Some books use $\subset$ to mean "subset, possibly equal", others to mean "proper subset". Unambiguous choice: $\subseteq$ (may be equal) and $\subsetneq$ (not equal). Always check which convention a text uses.

## Union, intersection, empty set

$$\begin{aligned}
C\cup D&=\{2,4,5\}&&\text{elements in at least one}\\
C\cap D&=\{4\}&&\text{elements in both}\\
\varnothing&=\{\ \}&&\text{the set with no elements}
\end{aligned}$$

## Number systems

$$\mathbb N\subseteq\mathbb Z\subseteq\mathbb Q\subseteq\mathbb R$$

- $\mathbb N$: natural numbers. The course starts them at $0$. Some books start at $1$, so check the convention.
- $\mathbb Z$: integers (naturals and their negatives).
- $\mathbb Q$: rationals, i.e. quotients of integers.
- $\mathbb R$: reals. For now, any number with a decimal expansion. The rigorous construction comes in analysis.

## Set difference and symmetric difference (Week 1 slides)

$$A\setminus B=\{x\in A:x\notin B\}\qquad A\,\triangle\,B=(A\setminus B)\cup(B\setminus A)$$

$A\triangle B$ is the set of elements in **exactly one** of $A$ and $B$.

## Interval edge cases

$$[2,4]\cup(2,5)=[2,5)\qquad[2,4]\cap(2,5)=(2,4]\qquad[0,0]=\{0\}\qquad(0,0)=\varnothing$$

$[\pi,e]=\varnothing$, because $\pi>e$: an interval $[a,b]$ with $a>b$ is empty.
