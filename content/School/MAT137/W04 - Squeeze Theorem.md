---
course: MAT137
topic: squeeze theorem
date: 2026-10-28
tags:
  - MAT137
  - limits
  - squeeze-theorem
  - proofs
  - trig
prereq:
  - "[[W04 - Limit Laws and Existence|Limit Laws and Existence]]"
  - "[[W04 - Epsilon-Delta Proofs|Epsilon-Delta Proofs]]"
next: "[[W05 - Continuity and Discontinuities|Continuity and Discontinuities]]"
week: W04
---

# Squeeze Theorem

Related: [[W04 - Limit Laws and Existence|Limit Laws and Existence]] · [[W04 - Bounded Times Zero Limit|Bounded Times Zero Limit]] · [[W04 - Epsilon-Delta Proofs|Epsilon-Delta Proofs]] · [[W05 - Computing Limits|Computing Limits]]

## The trap that motivates it (Video 2.12)

Compute

$$\lim_{x\to0}x^2\sin\frac1x$$

**Wrong argument:** "$\lim x^2\cdot\lim\sin\frac1x=0\cdot(\text{anything})=0$."

The product law needs **both** limits to exist as real numbers, and $\lim_{x\to0}\sin\frac1x$ DNE. "$0\cdot\text{DNE}$" can be anything:

$$\begin{aligned}
x\cdot\frac3x&=3&&\to3\\
x\cdot\frac3{x^2}&=\frac3x&&\to\text{DNE}
\end{aligned}$$

## Statement

Let $a,L\in\mathbb R$, and let $f,g,h$ be defined near $a$, except possibly at $a$. If
- $h(x)\le g(x)\le f(x)$ for $x$ near $a$, $x\ne a$, i.e. there is $p>0$ with
$$0<|x-a|<p\Rightarrow h(x)\le g(x)\le f(x)$$
- and
$$\lim_{x\to a}h(x)=\lim_{x\to a}f(x)=L$$

then

$$\lim_{x\to a}g(x)=L$$

**Back to the example.** For $x\ne0$,

$$-x^2\le x^2\sin\frac1x\le x^2$$

and $\pm x^2\to0$, so by the Squeeze Theorem

$$\lim_{x\to0}x^2\sin\frac1x=0$$

## Proof (Video 2.13)

WTS: $\forall\varepsilon>0\ \exists\delta>0\ \forall x,\ 0<|x-a|<\delta\Rightarrow|g(x)-L|<\varepsilon$.

*Proof.* Let $\varepsilon>0$.
- Apply $\lim f=L$ with this same $\varepsilon$: there is $\delta_1>0$ with $0<|x-a|<\delta_1\Rightarrow|f(x)-L|<\varepsilon$, so in particular $f(x)<L+\varepsilon$.
- Apply $\lim h=L$ with the same $\varepsilon$: there is $\delta_2>0$ with $0<|x-a|<\delta_2\Rightarrow h(x)>L-\varepsilon$.

Take $\delta=\min(\delta_1,\delta_2,p)>0$. Let $x$ satisfy $0<|x-a|<\delta$. Then

$$L-\varepsilon<h(x)\le g(x)\le f(x)<L+\varepsilon$$

so $|g(x)-L|<\varepsilon$. $\blacksquare$

> [!important] Assumed vs. proved limits
> For $g$ (what we **prove**), $\varepsilon$ is given to us and we must produce $\delta$. For $f,h$ (what we **assume**), we **choose** the $\varepsilon$ to feed in and are **handed** a $\delta$. Same idea as the sum-law proof in [[W04 - Epsilon-Delta Proofs|Epsilon-Delta Proofs]].

## Application: $\lim_{x\to0}\frac{\sin x}{x}=1$ (Video 2.18)

Take $0<x<\frac\pi2$ on the unit circle. Compare three nested regions:

$$\underbrace{\tfrac12\cos x\sin x}_{\text{small triangle}}\ \le\ \underbrace{\tfrac12x}_{\text{sector}}\ \le\ \underbrace{\tfrac12\tan x}_{\text{big triangle}}$$

The sector formula: area is proportional to angle, and the full circle gives $\pi R^2=k\cdot2\pi$, so

$$S=\frac12xR^2$$

Multiply by $2$, then divide by positive quantities:

$$\cos x\sin x\le x\ \Rightarrow\ \frac{\sin x}{x}\le\frac1{\cos x}$$

$$x\le\frac{\sin x}{\cos x}\ \Rightarrow\ \cos x\le\frac{\sin x}{x}$$

$$\cos x\le\frac{\sin x}{x}\le\frac1{\cos x}$$

All three functions are even, so this also holds for $-\frac\pi2<x<0$. Since $\cos x\to1$ and $\frac1{\cos x}\to1$, the Squeeze Theorem gives

$$\lim_{x\to0}\frac{\sin x}{x}=1$$

> [!warning] Don't use L'Hôpital here
> L'Hôpital needs $(\sin x)'=\cos x$, and proving that derivative uses this very limit (see [[W07 - Trigonometric Derivatives|Trigonometric Derivatives]]). Using it would be circular, which is why the geometric proof matters.
