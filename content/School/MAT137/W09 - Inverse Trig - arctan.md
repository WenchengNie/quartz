---
course: MAT137
topic: inverse trig
date: 2026-11-09
tags:
  - MAT137
  - inverse-trig
  - derivatives
prereq:
  - "[[W08 - Inverse Functions|Inverse Functions]]"
  - "[[W07 - Trigonometric Derivatives|Trigonometric Derivatives]]"
next: "[[W09 - Local Extrema and Critical Points|Local Extrema and Critical Points]]"
week: W09
---

# Inverse Trig: arctan

Related: [[W08 - Inverse Functions|Inverse Functions]] · [[W07 - Trigonometric Derivatives|Trigonometric Derivatives]]

## Definition

$\tan$ is not injective on its whole domain. The **largest interval containing 0** on which it is injective is $\left(-\frac\pi2,\frac\pi2\right)$. So $\arctan$ is defined as the inverse of $g:\left(-\frac\pi2,\frac\pi2\right)\to\mathbb R$, $g(x)=\tan x$:

$$\arctan y=x\iff\begin{cases}x\in\left(-\frac\pi2,\frac\pi2\right)\\[2pt]\tan x=y\end{cases}$$

- **Domain** $\mathbb R$, **range** $\left(-\frac\pi2,\frac\pi2\right)$
- It is increasing and odd, with horizontal asymptotes $y=\pm\frac\pi2$

## Compositions (Week 9 poll)

| Expression | Value | Why |
|---|---|---|
| $\arctan(\tan1)$ | $1$ | $1\in(-\frac\pi2,\frac\pi2)$ |
| $\arctan(\tan0.5)$ | $0.5$ | same reason |
| $\arctan(\tan\frac\pi2)$ | undefined | $\tan\frac\pi2$ is undefined |
| $\arctan(\tan\pi)$ | $0$ | $\tan\pi=0$; **not** $\pi$ |
| $\tan(\arctan0)$ | $0$ | $\tan(\arctan y)=y$ always |
| $\tan(\arctan10)$ | $10$ | same reason |

> [!important]
> $\tan(\arctan y)=y$ for **every** $y\in\mathbb R$. But $\arctan(\tan x)=x$ only for $x\in\left(-\frac\pi2,\frac\pi2\right)$.

## Derivative

$$\boxed{\frac{d}{dx}\arctan x=\frac1{1+x^2}}$$

> [!tip]- Proof
> For all $x\in\mathbb R$, $\tan(\arctan x)=x$. Differentiate both sides:
> $$\sec^2(\arctan x)\cdot(\arctan x)'=1$$
> Since $\sec^2\theta=1+\tan^2\theta$, we get $\sec^2(\arctan x)=1+x^2$, which gives the formula. ∎
>
> This is the same method as $(\arcsin x)'=\dfrac1{\sqrt{1-x^2}}$ (Video 4.13).
