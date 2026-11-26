---
course: MAT137
topic: inverse functions
date: 2026-11-09
tags:
  - MAT137
  - functions
  - inverses
prereq:
  - "[[Logic - Negations and Proof Structure]]"
  - "[[Chain Rule]]"
next: "[[Exponentials, Logarithms and Logarithmic Differentiation]]"
week: W08
---

# Inverse Functions

Related: [[Logic - Negations and Proof Structure]] (injectivity proofs) · [[Increasing Functions]] · [[Inverse Trig - arctan]]

## Definitions

For $f:A\to B$:
- **Injective** (one-to-one): $\forall x_1,x_2\in A,\ f(x_1)=f(x_2)\implies x_1=x_2$
- **Surjective** (onto): $\forall y\in B,\ \exists x\in A$ such that $f(x)=y$
- **Bijective:** both injective and surjective

An injective $f$ has an inverse $f^{-1}:\operatorname{range}(f)\to A$ with
$$f^{-1}(y)=x\iff f(x)=y$$
$$f\big(f^{-1}(t)\big)=t\ \ \forall t\in\operatorname{dom}(f^{-1})\qquad f^{-1}\big(f(t)\big)=t\ \ \forall t\in\operatorname{dom}(f)$$

- **Graph:** $y=f^{-1}(x)$ is the reflection of $y=f(x)$ in the line $y=x$.
- **Domain and range swap:** $\operatorname{dom}f^{-1}=\operatorname{range}f$ and $\operatorname{range}f^{-1}=\operatorname{dom}f$.

> [!note] The worm (Week 8 warm-up)
> A worm's position **is** a function of time, even if its path crosses itself: at each time it is in exactly one place. What fails is "$y$ as a function of $x$" for the path drawn on the table.

**Equivalent form of injective:** different inputs give different outputs,
$$x_1\ne x_2\implies f(x_1)\ne f(x_2)$$
(the contrapositive of the definition above).

## Strict inverse and why both properties are needed

Idea: **reverse every arrow**, which swaps the domain and the codomain. Strictly, $f^{-1}:B\to A$ is defined by
$$x=f^{-1}(y)\iff y=f(x)\qquad\forall x\in A,\ \forall y\in B$$

Two things can stop $f^{-1}$ from being a function:

- **Not surjective.** Take $f:\{1,2\}\to\{4,5,6\}$ with $f(1)=4,\ f(2)=5$. Then $6$ is never hit ($6\in$ codomain but $6\notin$ range), so reversing the arrows sends $6$ **nowhere**.
- **Not injective.** Take $g:\{1,2,3\}\to\{4,5\}$ with $g(1)=4,\ g(2)=5,\ g(3)=5$. Then $5$ comes from **two** inputs, so reversing the arrows sends $5$ to two places.

$$\boxed{f \text{ has an inverse} \iff f \text{ is bijective (injective and surjective)}}$$

This is the rigorous version (used in linear algebra and beyond).

## Calculus convention: drop surjectivity

The "missing" output (like $6$ above) isn't doing anything, so calculus just **shrinks the codomain to the range**. Strictly this changes the function, but calculus pretends it doesn't (see [[Functions - Domain, Codomain and Range#Calculus convention 2: ignore the codomain]]).

So in calculus, $f$ has an inverse **iff it is injective**. If $f$ has domain $A$ and range $C$, then $f^{-1}:C\to A$ with
$$x=f^{-1}(y)\iff y=f(x)\qquad\forall x\in A,\ \forall y\in C$$

Equivalently, composing them does nothing:
$$f^{-1}(f(x))=x\ \ \forall x\in A\qquad f(f^{-1}(y))=y\ \ \forall y\in C$$

## Examples (video 4.3)

### Linear: $f(x)=2x+1$

Set $y=2x+1$ and solve for $x$:
$$f^{-1}(y)=\frac{y-1}{2}$$

Check both compositions:
$$f^{-1}(f(x))=\frac{(2x+1)-1}{2}=x\qquad f(f^{-1}(y))=2\cdot\frac{y-1}2+1=y$$

The method is always "solve $y=f(x)$ for $x$". That can be hard, or impossible to do explicitly.

### Defining a function as an inverse: $e^x$ and $\ln$

$$x=\ln y\iff y=e^x$$
can be used to **define** $\ln$ from $e^x$ (high school), or $e^x$ from $\ln$ (analysis, where $\ln$ is built first as an integral). See [[Exponentials, Logarithms and Logarithmic Differentiation#Defining exponentials rigorously]].

- $\operatorname{dom}(e^x)=\mathbb R=\operatorname{range}(\ln)$ and $\operatorname{dom}(\ln)=(0,\infty)=\operatorname{range}(e^x)$.
- The graphs are reflections in $y=x$, since inverting swaps the roles of $x$ and $y$.
- $\ln(e^x)=x$ for all $x\in\mathbb R$, and $e^{\ln y}=y$ for all $y>0$.

### Restricting a non-injective function: $f(x)=x^2$

$f(3)=f(-3)$, so $f$ is not injective and has **no** inverse. Restrict it to $[0,\infty)$: the range is still $[0,\infty)$, and now it is injective. The inverse of the **restriction** is
$$g(x)=\sqrt x$$
($g$ is **not** the inverse of $f$ itself. Choosing $(-\infty,0]$ instead would give $-\sqrt x$.)

So $a=\sqrt b$ means $b=a^2$ **and** $a\ge0$. The composition identities only hold on the right domain:
$$\sqrt{x^2}=|x|\qquad(\text{equals } x \text{ only when } x\ge0)$$

The same idea is how inverse trig functions are defined (see [[Inverse Trig - arctan]]).

## Example: $h(x)=x|x|+1$

As a piecewise function:
$$h(x)=\begin{cases}x^2+1 & x\ge0\\ 1-x^2 & x<0\end{cases}$$

$h$ is increasing, so it is injective.
- $h^{-1}(-8)$: we need $1-x^2=-8$ with $x<0$, so $x=-3$.
- In general:
$$h^{-1}(y)=\begin{cases}\sqrt{y-1} & y\ge1\\ -\sqrt{1-y} & y<1\end{cases}$$
- Check: if $y\ge1$, then $h(\sqrt{y-1})=(y-1)+1=y$ ✓. If $y<1$, then $h(-\sqrt{1-y})=1-(1-y)=y$ ✓.

## Composition of injective functions

**Theorem.** If $f$ and $g$ (domain $\mathbb R$) are injective, then $f\circ g$ is injective.

> [!tip]- Proof
> Let $x_1,x_2\in\mathbb R$ and assume $f(g(x_1))=f(g(x_2))$. Since $f$ is injective, $g(x_1)=g(x_2)$. Since $g$ is injective, $x_1=x_2$. ∎

**The converse is false.** Let $g(x)=e^x$ and $f(x)=x^2$. Then $f\circ g=e^{2x}$ is injective, but $f$ is not.

What *is* true: if $f\circ g$ is injective, then $g$ must be injective. (If $g(x_1)=g(x_2)$, then $f(g(x_1))=f(g(x_2))$, so $x_1=x_2$.)

## Derivative of an inverse

### When is $f^{-1}$ differentiable? (video 4.4)

Reflecting the graph in $y=x$ turns tangent lines into tangent lines, **except** that a horizontal tangent ($f'=0$) becomes a **vertical** tangent, where $f^{-1}$ is not differentiable.

**Example.** $f(x)=x^3$ is differentiable and invertible, but $f'(0)=0$. Its inverse $f^{-1}(y)=\sqrt[3]y$ has a vertical tangent at $y=0$, so it is not differentiable there.

That's the only thing that can go wrong:

> **Theorem.** Let $f$ be defined on an interval $I$. If $f$ is invertible, differentiable, and $f'(x)\ne0$ for all $x\in I$, then $f^{-1}$ is differentiable.

(Video 4.4 says this is a small result, not the multivariable "Inverse Function Theorem". The TT2 info page calls the derivative formula below the inverse function theorem.)

**Remember:** $f'$ and $(f^{-1})'$ are evaluated at **different points**. Writing $y=f(x)$, i.e. $x=f^{-1}(y)$:
$$(f^{-1})'(y)=\frac{1}{f'(x)}$$

Let $f$ be injective and differentiable, with $f(a)=b$ and $f'(a)\ne0$. Differentiate $f(f^{-1}(x))=x$ using the chain rule:
$$f'\big(f^{-1}(x)\big)\cdot(f^{-1})'(x)=1$$

So
$$\boxed{(f^{-1})'(b)=\frac{1}{f'(a)}}$$

Differentiating again:
$$\boxed{(f^{-1})''(b)=-\frac{f''(a)}{[f'(a)]^3}}$$

> [!tip]- Derivation of the second derivative
> We have $(f^{-1})'(x)=\dfrac{1}{f'(f^{-1}(x))}$. Differentiate with the chain rule:
> $$(f^{-1})''(x)=-\frac{f''(f^{-1}(x))\cdot(f^{-1})'(x)}{[f'(f^{-1}(x))]^2}=-\frac{f''(a)}{[f'(a)]^2}\cdot\frac1{f'(a)}$$
