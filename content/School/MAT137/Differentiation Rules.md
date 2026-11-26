---
course: MAT137
topic: differentiation rules
date: 2026-10-28
tags:
  - MAT137
  - derivatives
  - power-rule
  - induction
prereq:
  - "[[The Derivative - Definition and Meaning]]"
  - "[[Limit Laws and Existence]]"
  - "[[Proof by Induction]]"
next: "[[Differentiability Implies Continuity]]"
week: W06
---

# Differentiation Rules

Related: [[The Derivative - Definition and Meaning]] · [[Product and Quotient Rules]] · [[Chain Rule]] · [[Proof by Induction]]

## The basic rules, "lazy" version (Video 3.4)

$$\begin{aligned}
(c)'&=0\\
(x^c)'&=c\,x^{c-1}\qquad\text{(any real }c)\\
(f+g)'&=f'+g'\\
(cf)'&=c\,f'\\
(fg)'&=f'g+fg'\\
\left(\frac fg\right)'&=\frac{f'g-fg'}{g^2}\qquad(g\ne0)
\end{aligned}$$

The power rule works for **any** real exponent, so rewrite before differentiating:

$$\frac1{x^3}=x^{-3}\ \Rightarrow\ \left(x^{-3}\right)'=-3x^{-4}$$

$$\sqrt x=x^{1/2}\ \Rightarrow\ \left(x^{1/2}\right)'=\frac1{2\sqrt x}$$

> [!important] Why "lazy"?
> Each rule is really an **if-then theorem**. For example: **if** $f,g$ are differentiable at $a$, **then** $fg$ is differentiable at $a$ and $(fg)'(a)=f'(a)g(a)+f(a)g'(a)$.
> If $f$ or $g$ isn't differentiable, the rule says **nothing**. The product might still be differentiable, and you'd have to check from the definition.

## Proof of the power rule for $c\in\mathbb Z^+$, by induction (Video 3.7)

**Base case** ($c=1$):

$$\frac{d}{dx}x=\lim_{h\to0}\frac{(x+h)-x}{h}=\lim_{h\to0}1=1=1\cdot x^0$$

**Induction step.** Fix $c\ge1$ and assume $\frac{d}{dx}x^c=c\,x^{c-1}$ (IH). Using the product rule:

$$\begin{aligned}
\frac{d}{dx}x^{c+1}&=\frac{d}{dx}\left(x^c\cdot x\right)\\
&=\left(\frac{d}{dx}x^c\right)x+x^c\cdot\frac{d}{dx}x\\
&=c\,x^{c-1}\cdot x+x^c\cdot1&&\text{(IH, base case)}\\
&=(c+1)\,x^c
\end{aligned}$$

$\blacksquare$
