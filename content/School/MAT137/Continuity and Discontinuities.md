---
course: MAT137
topic: continuity
date: 2026-10-28
tags:
  - MAT137
  - continuity
  - limits
  - definitions
prereq:
  - "[[The Idea of a Limit]]"
  - "[[Limit Laws and Existence]]"
next: "[[Computing Limits]]"
week: W05
---

# Continuity and Discontinuities

Related: [[The Idea of a Limit]] · [[Limit Laws and Existence]] · [[Differentiability Implies Continuity]] · [[EVT Extreme Value Theorem]] · [[IVT Intermediate Value Theorem]]

## Definition (Video 2.14)

Let $a\in\mathbb R$ and let $f$ be defined on an interval centred at $a$. Then

$$f\text{ is continuous at }a\iff\lim_{x\to a}f(x)=f(a)$$

This packs in three requirements:
1. The limit exists (it's a real number).
2. $f(a)$ is defined.
3. They're equal.

**$\varepsilon$-$\delta$ version** (equivalent). Replace $L$ by $f(a)$ and drop the "$0<$":

$$\forall\varepsilon>0,\ \exists\delta>0,\ \forall x,\ |x-a|<\delta\Rightarrow|f(x)-f(a)|<\varepsilon$$

The exclusion $x\ne a$ is no longer needed, since at $x=a$ we get $|f(a)-f(a)|=0<\varepsilon$ automatically.

> [!tip] Limit vs continuity, in words
> - Limit: if $x$ is close to $a$ **but not** $a$, then $f(x)$ is close to $L$.
> - Continuity: if $x$ is close to $a$, **including** $a$, then $f(x)$ is close to $f(a)$.

## Continuity on a set

- **Open interval $(a,b)$:** continuous at every point.
- **Closed interval $[a,b]$:** continuous at every interior point, plus one-sided at the endpoints:
$$\lim_{x\to a^+}f(x)=f(a)\qquad\lim_{x\to b^-}f(x)=f(b)$$
- **"$f$ is continuous"** with no set named means continuous **on its domain**. For example, $\frac1{x-1}$ is continuous, yet it is not continuous at $1$, since $1$ isn't in the domain. There's no contradiction.

## Main continuity theorem (Video 2.15)

Every function built by $+,\ \times,\ \div,\ \circ$ from polynomials, roots, trig functions, exponentials, logs, and $|x|$ is **continuous on its domain**. So inside the domain:

$$\lim_{x\to a}f(x)=f(a)\qquad\text{(just plug in)}$$

- It does **not** apply outside the domain: $\frac{\sin x}{x}$ at $0$, or $\tan x$ at $\frac\pi2$.
- **Proof plan:** (1) six basic functions are continuous: constants, $x$, $e^x$, $\ln x$, $\sin x$, $|x|$. Everything else is built from these, e.g. $\cos x=\sin\left(x+\frac\pi2\right)$, $\tan=\frac{\sin}{\cos}$, $\sqrt x=e^{\frac12\ln x}$. (2) Sums, products, quotients, and compositions of continuous functions are continuous.
- **Sum case** via the limit laws: if $f,g$ are continuous at $a$, then
$$\lim_{x\to a}(f+g)(x)=f(a)+g(a)=(f+g)(a)$$

Products and quotients work the same way.

## Composition (Video 2.16)

**Theorem 1.** If $f$ is continuous at $a$ and $g$ is continuous at $f(a)$, then $g\circ f$ is continuous at $a$.

**False "theorem":**

$$\lim_{x\to a}f(x)=L\ \text{and}\ \lim_{y\to L}g(y)=M\ \not\Rightarrow\ \lim_{x\to a}g(f(x))=M$$

Counterexample: let $f(x)=x\sin\frac\pi x$ for $x\ne0$ with $f(0)=0$, so $f\to0$ by the squeeze. Let $g(y)=1$ for $y\ne0$ and $g(0)=2$, so $\lim_{y\to0}g=1$. Then $f(x)=0$ at every $x=\frac1n$, so $g(f(x))$ is $2$ at those points and $1$ elsewhere. So $\lim_{x\to0}g(f(x))$ DNE.

**Why:** "close to $a$ but not $a$ $\Rightarrow$ $f(x)$ close to $L$" doesn't chain into "close to $L$ **but not $L$** $\Rightarrow$ $g$ close to $M$", because $f(x)$ may equal $L$.

**Two fixes:**
- **Theorem 2:** also require $f(x)\ne L$ for $x$ near $a$, $x\ne a$.
- **Theorem 3:** require $g$ to be **continuous** at $L$.

Worked examples of these traps are in [[Limit Laws and Existence]].

## Types of discontinuity (Video 2.17)

- **Removable:** $\lim_{x\to a}f(x)$ exists but $\ne f(a)$, or $f(a)$ is undefined. The graph has a hole. Fix it by redefining $f(a)$ to equal the limit:
$$H(x)=\begin{cases}\dfrac{\sin x}{x}&x\ne0\\[4pt]1&x=0\end{cases}\quad\text{is continuous at }0$$
- **Non-removable:** the limit does not exist (jump, vertical asymptote, wild oscillation). No choice of $f(a)$ can fix it.
