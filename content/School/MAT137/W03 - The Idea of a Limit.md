---
course: MAT137
topic: intuition for limits
date: 2026-10-28
tags:
  - MAT137
  - limits
prereq:
  - "[[W01 - Sets and Notation|Sets and Notation]]"
next: "[[W04 - Epsilon-Delta Proofs|Epsilon-Delta Proofs]]"
week: W03
---

# The Idea of a Limit

Related: [[W04 - Epsilon-Delta Proofs|Epsilon-Delta Proofs]] · [[W04 - Limit Laws and Existence|Limit Laws and Existence]] · [[W05 - Continuity and Discontinuities|Continuity and Discontinuities]]

## Rough idea (Video 2.1)

$$\lim_{x\to a}f(x)=L$$

roughly means: **if $x$ is close to $a$ but not $a$, then $f(x)$ is close to $L$.** The value $f(a)$ itself plays no role.

**Example 1.** Let

$$f(x)=\frac{x^2-1}{x-1}=\frac{(x-1)(x+1)}{x-1}$$

For $x\ne1$ this equals $g(x)=x+1$. So $f$ is the line $y=x+1$ with a **hole** at $x=1$, and

$$\lim_{x\to1}f(x)=2$$

The cancellation is only valid for $x\ne1$, which is exactly the set of $x$ the limit looks at.

**Example 2.** Let

$$f(x)=\frac{1-\sqrt{1+x}}{x}$$

A table of values with $x\to0$ suggests $-\frac12$. Multiplying by the conjugate confirms it:

$$\frac{1-\sqrt{1+x}}{x}\cdot\frac{1+\sqrt{1+x}}{1+\sqrt{1+x}}=\frac{-x}{x\left(1+\sqrt{1+x}\right)}=\frac{-1}{1+\sqrt{1+x}}\quad(x\ne0)$$

$$\lim_{x\to0}f(x)=-\frac12$$

## Ways a limit can fail to exist (Videos 2.2, 2.3)

For the limit to exist, $f(x)$ must approach **one single real number**.
- **Oscillation.** With $h(x)=\sin\frac{\pi}{2x}$, at $x=1,\frac12,\frac13,\dots$ you get $1,0,-1,0,1,\dots$ It hits every value in $[-1,1]$ infinitely often near $0$, so the limit DNE.
- **Infinite limit.** With $F(x)=\frac1{(x-1)^2}$, $F(x)$ gets arbitrarily large near $1$. We write
$$\lim_{x\to1}F(x)=\infty$$

but **the limit still does not exist**, because $\infty$ is not a number. "$=\infty$" is a specific way of not existing.
- **Different side limits.** With $G(x)=\frac{x^2+x}{|x|}$: for $x>0$, $G(x)=x+1$; for $x<0$, $G(x)=-x-1$. So
$$\lim_{x\to0^+}G(x)=1\qquad\lim_{x\to0^-}G(x)=-1$$

and the two-sided limit DNE.

> [!important] What doesn't matter
> Whether $f(a)$ is undefined, defined with the "wrong" value, or defined with the "right" value, it has no effect on whether the limit exists.

## Limits at infinity and asymptotes (Video 2.6)

$$\lim_{x\to\infty}f(x)=L$$

means: if $x$ is very large, then $f(x)$ is close to $L$. Example: $\frac{x+1}{x}=1+\frac1x\to1$.

The line $y=L$ is then a **horizontal asymptote**.

> [!warning] High-school myth
> An asymptote is **not** "a line the graph gets closer to but never touches". The graph may cross its horizontal asymptote, even infinitely many times.

The formal definition needs $f$ defined on some interval $(p,\infty)$. See [[W04 - Epsilon-Delta Proofs|Epsilon-Delta Proofs]].
