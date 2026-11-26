---
course: MAT137
topic: exponentials and logarithms
date: 2026-11-09
tags:
  - MAT137
  - derivatives
  - exponentials
  - logarithms
prereq:
  - "[[W08 - Inverse Functions|Inverse Functions]]"
  - "[[W07 - Chain Rule|Chain Rule]]"
next: "[[W09 - Inverse Trig - arctan|Inverse Trig - arctan]]"
week: W08
---

# Exponentials, Logarithms and Logarithmic Differentiation

Related: [[W06 - Differentiation Rules|Differentiation Rules]] · [[W07 - Chain Rule|Chain Rule]] · [[W08 - Inverse Functions|Inverse Functions]]

## Rules

$$\frac{d}{dx}e^x=e^x\qquad\frac{d}{dx}\ln x=\frac1x\qquad\frac{d}{dx}a^x=a^x\ln a\qquad\frac{d}{dx}\log_a x=\frac{1}{x\ln a}$$

- $\ln$ is the inverse of $e^x$, so $(\ln)'(y)=\dfrac1{e^{x}}=\dfrac1y$ by [[W08 - Inverse Functions#Derivative of an inverse|Inverse Functions > Derivative of an inverse]].
- $a^x=e^{x\ln a}$, and the chain rule gives $a^x\ln a$.

## Where $e$ comes from (video 4.5)

Bases must be positive: for $a>0$, $a^x$ has domain $\mathbb R$ and range $(0,\infty)$. It is increasing if $a>1$ and decreasing if $0<a<1$.

From the limit definition, with $f(x)=a^x$:
$$f'(x)=\lim_{h\to0}\frac{a^{x+h}-a^x}{h}=\lim_{h\to0}\frac{a^x\,a^h-a^x}{h}=a^x\underbrace{\lim_{h\to0}\frac{a^h-1}{h}}_{L_a}$$

$a^x$ doesn't depend on $h$, so it comes out of the limit. The leftover limit $L_a$ depends **only on $a$**. So the derivative of an exponential is a constant multiple of itself:
$$\frac{d}{dx}a^x=L_a\,a^x$$

**Definition.** $e$ is the unique number with
$$L_e=\lim_{h\to0}\frac{e^h-1}{h}=1,\qquad\text{equivalently}\qquad \frac{d}{dx}e^x=e^x$$

**Gaps in this derivation (not rigorous):** it assumes $L_a$ exists, that some $a$ gives $L_a=1$, and that $a^x$ is even defined for every real $x$ (see the next section).

## Defining exponentials rigorously (video 4.6)

$\log_a x=y$ means $a^y=x$: the log is just the **inverse** of $a^x$. So everything rests on defining $a^c$ for $a>0$ and any real $c$. (Negative bases fail: $(-1)^{1/3}=-1$ works but $(-1)^{1/2}$ doesn't.)

**Rational exponents are easy:**
1. $a^n$ for $n\in\mathbb Z^+$: repeated multiplication.
2. $a^{1/n}=\sqrt[n]a$: the number whose $n$-th power is $a$.
3. $a^{n/m}=\left(a^n\right)^{1/m}$.
4. $a^0=1$ and $a^{-r}=\dfrac1{a^r}$.

**Irrational exponents are hard.** For example, $2^\pi$ could be defined as the limit of
$$2^3,\ 2^{3.1},\ 2^{3.14},\ 2^{3.141},\ \dots$$
But does that limit exist, and would a *different* rational sequence approaching $\pi$ give the same answer? It does, but this is very hard to prove.

**The modern analysis approach:**
1. Define **one** of $e^x$ or $\ln x$ from scratch (the hard step).
2. Define the other as its inverse.
3. Define every other power by
$$a^c=e^{c\ln a}$$

Three ways to do step 1:
- **Differential equations:** $e^x$ is the unique solution of $y'=y,\ y(0)=1$ (needs the Picard–Lindelöf theorem).
- **Power series:** $e^x=\displaystyle\sum_{n=0}^\infty\frac{x^n}{n!}$ (harder to prove properties from, but extends to complex numbers).
- **Integrals (most accessible):** define
$$\ln x=\int_1^x\frac1t\,dt$$
Only the Fundamental Theorem of Calculus is needed to prove its properties.

## Derivation of $(\ln x)'$ (video 4.7)

Differentiate $e^{\ln x}=x$ (for $x>0$) with the chain rule:
$$e^{\ln x}\cdot\frac{d}{dx}\ln x=1\implies x\cdot\frac{d}{dx}\ln x=1\implies\frac{d}{dx}\ln x=\frac1x$$

The same trick finds the derivative of any function whose **inverse** you can already differentiate.

## Derivation of $(a^x)'$ and $(\log_a x)'$ (video 4.8)

Reduce to base $e$: since $a=e^{\ln a}$,
$$a^x=\left(e^{\ln a}\right)^x=e^{x\ln a}\implies\frac{d}{dx}a^x=e^{x\ln a}\cdot\ln a=a^x\ln a$$

When $a=e$, $\ln e=1$ and we recover $(e^x)'=e^x$.

**Exercise from the video:** by the change of base identity,
$$\log_a x=\frac{\ln x}{\ln a}\implies\frac{d}{dx}\log_a x=\frac{1}{x\ln a}$$

## Power rule for every real exponent (video 4.10)

For $x>0$ and any real $c$, $x^c$ is **defined** as $e^{c\ln x}$. Then
$$\frac{d}{dx}x^c=e^{c\ln x}\cdot\frac{c}{x}=x^c\cdot\frac cx=c\,x^{c-1}$$

This one proof covers natural, rational, real (even complex) exponents. It only looks short because we first had to build $\ln$, $e^x$ and their derivatives. For rational $c$ there are proofs without logs, but for real $c$ there's no way around them.

## Warm-up computations (Week 8/9 slides)

1. $\dfrac{d}{dx}\Big[e^{\sin x+\cos x}\ln x\Big]=e^{\sin x+\cos x}\left[(\cos x-\sin x)\ln x+\dfrac1x\right]$
2. $\dfrac{d}{dx}\pi^{\tan x}=\pi^{\tan x}\,\ln\pi\,\sec^2x$
3. $\dfrac{d}{dx}\ln\big(e^x+\ln\ln x\big)=\dfrac{e^x+\frac{1}{x\ln x}}{e^x+\ln\ln x}$

## Logarithmic differentiation

To differentiate $y=u(x)^{v(x)}$, where **both** the base and the exponent vary:
1. Take logs: $\ln y=v\ln u$.
2. Differentiate: $\dfrac{y'}{y}=v'\ln u+v\dfrac{u'}{u}$.
3. Multiply by $y$.

> [!warning] Neither power rule applies
> For $x^{\tan x}$, $\ (\tan x)\,x^{\tan x-1}$ (the power rule) and $\ x^{\tan x}\ln x$ (the exponential rule) are both **wrong**.

### Example: $g(x)=x^{\tan x}$

$$\ln g=\tan x\ln x\implies\frac{g'}{g}=\sec^2x\ln x+\frac{\tan x}{x}$$
$$g'(x)=x^{\tan x}\left(\sec^2x\,\ln x+\frac{\tan x}{x}\right)$$

### Example: $f(x)=(\sin x)^x+x^{\sin x}$ (the slide's trap)

The slide's computation writes $\ln f=x\ln(\sin x)+(\sin x)\ln x$. This is **wrong**, because $\ln(A+B)\ne\ln A+\ln B$.

Instead, log-differentiate **each term separately**:
$$f'(x)=(\sin x)^x\big(\ln\sin x+x\cot x\big)+x^{\sin x}\left(\cos x\ln x+\frac{\sin x}{x}\right)$$

### It helps even when it isn't needed

For messy products, quotients and roots like
$$f(x)=\sqrt[3]{\frac{(\sin^6x)\sqrt{x^7+6x+2}}{e^x(x^{10}+2x)^{10}}}$$
take logs to turn the products into sums:
$$\ln f=\frac13\Big[6\ln|\sin x|+\tfrac12\ln(x^7+6x+2)-x-10\ln(x^{10}+2x)\Big]$$
Then differentiate term by term and multiply by $f$.

> [!tip] Slide takeaway
> You can now differentiate almost anything built from polynomials, roots, exp, log and trig. It's a skill that comes from **practice**, not insight. Check your answers with Wolfram Alpha.

### Power, exponential, or neither? (video 4.9)

| Type | $x$ appears in | Examples | Rule |
|---|---|---|---|
| power | base only | $x^3$, $\ \cos^3x$ | power rule (+ chain rule) |
| exponential | exponent only | $2^x$, $\ 2^{\sin x}$ | $(a^x)'=a^x\ln a$ (+ chain rule) |
| **power-exponential** | **both** | $(\cos x)^{\sin x}$ | rewrite with $e$, or log-differentiate |

### Example: $f(x)=(\cos x)^{\sin x}$, two methods (video 4.9)

**Method 1: rewrite with base $e$.**
$$f(x)=e^{\sin x\,\ln(\cos x)}$$
$$f'(x)=e^{\sin x\ln(\cos x)}\cdot\frac{d}{dx}\big[\sin x\ln(\cos x)\big]=(\cos x)^{\sin x}\left(\cos x\,\ln(\cos x)+\sin x\cdot\frac{-\sin x}{\cos x}\right)$$

**Method 2: logarithmic differentiation.** Logs turn powers into products:
$$\ln f(x)=\sin x\,\ln(\cos x)$$
Differentiate implicitly (left) and with the product rule (right):
$$\frac{f'(x)}{f(x)}=\cos x\,\ln(\cos x)-\sin x\tan x$$

Both give
$$f'(x)=(\cos x)^{\sin x}\Big(\cos x\,\ln(\cos x)-\sin x\tan x\Big)$$

The two methods are the same computation in disguise.

## $\ln$ or $\log$? (video 4.11)

Any base can be written in terms of one favourite base, and $e$ is the natural choice: $e^x$ and $\ln x$ have the simplest derivatives, the cleanest limits and nice power series.

- Before calculators, base 10 (the "common log") was most useful for hand computation, so "$\log$" came to mean $\log_{10}$.
- Today **both** $\ln x$ and $\log x$ usually mean base $e$.
	- $\ln$: science, engineering and calculus (including MAT137).
	- $\log$: most math courses beyond calculus.
- When reading a book or working with someone, check which convention they use.
