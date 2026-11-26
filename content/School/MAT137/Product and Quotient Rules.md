---
course: MAT137
topic: differentiation rules
date: 2026-10-12
tags:
  - MAT137
  - derivatives
  - quotient-rule
  - product-rule
prereq:
  - "[[Differentiation Rules]]"
  - "[[Differentiability Implies Continuity]]"
next: "[[Chain Rule]]"
week: W07
---

# Product and Quotient Rules


Related: [[Tangent Lines and the Derivative]]

## Product Rule

$$(fg)'(x) = f'(x)\,g(x) + f(x)\,g'(x)$$

## Quotient Rule

If $g(x) \ne 0$:

$$\left(\frac{f}{g}\right)'(x) = \frac{f'(x)\,g(x) - f(x)\,g'(x)}{\big(g(x)\big)^2}$$

> [!warning] Order matters
> The numerator is a **difference**, so the order is fixed: "low d-high minus high d-low, over low squared." Swapping it flips the sign.

## Example: quotient rule from a table

Given $f(1) = 2$, $g(1) = 9$, $f'(1) = 2.5$, $g'(1) = -3$. Find

$$\left.\frac{d}{dx}\frac{f(x)}{g(x)}\right|_{x=1}$$

$$= \frac{f'(1)\,g(1) - f(1)\,g'(1)}{\big(g(1)\big)^2}$$

$$= \frac{(2.5)(9) - (2)(-3)}{9^2}$$

$$= \frac{22.5 + 6}{81} = \frac{28.5}{81} \approx 0.35$$

> [!tip] Watch the double negative
> $g'(1) = -3$, so $-f(1)\,g'(1) = -(2)(-3) = +6$.

## Proof of the product rule (Video 3.6)

**Theorem.** Let $f,g$ be defined at and near $a$, and $h=fg$. **If** $f$ and $g$ are differentiable at $a$, **then** $h$ is differentiable at $a$ and

$$h'(a)=f'(a)g(a)+f(a)g'(a)$$

*Proof.* Add and subtract $f(a)g(x)$ in the numerator:

$$\begin{aligned}
h'(a)&=\lim_{x\to a}\frac{f(x)g(x)-f(a)g(a)}{x-a}\\
&=\lim_{x\to a}\frac{f(x)g(x)-f(a)g(x)+f(a)g(x)-f(a)g(a)}{x-a}\\
&=\lim_{x\to a}\left[\frac{f(x)-f(a)}{x-a}\cdot g(x)+f(a)\cdot\frac{g(x)-g(a)}{x-a}\right]\\
&=f'(a)\,g(a)+f(a)\,g'(a)
\end{aligned}$$

Justifying the limit laws in the last step (each piece's limit must exist):
- $\frac{f(x)-f(a)}{x-a}\to f'(a)$ since $f$ is differentiable at $a$. Likewise for $g$.
- $f(a)$ is a constant (the variable is $x$).
- $g(x)\to g(a)$ because $g$ is differentiable at $a$, hence **continuous** at $a$ ([[Differentiability Implies Continuity]]).

$\blacksquare$

See also [[Differentiation Rules]].


## Trick: rewrite a quotient as a product (lecture, Nov 2026)

You can skip the quotient rule by moving the denominator up as a negative power. Example:

$$f(x)=\frac{x^6+1}{x^3}=(x^6+1)\cdot x^{-3}$$

Take $A=x^6+1$ and $B=x^{-3}$, so

$$A'=6x^5,\qquad B'=-3x^{-4}$$

Product rule, $(AB)'=A'B+AB'$:

$$f'(x)=6x^5\cdot x^{-3}+(x^6+1)(-3x^{-4})$$

$$=6x^2-3x^2-3x^{-4}=3x^2-\frac{3}{x^4}$$

**Check:** $f(x)=x^3+x^{-3}$, so $f'(x)=3x^2-3x^{-4}\ \checkmark$

> [!tip]
> One formula fewer to remember. Sometimes this is easier, sometimes the quotient rule is. And when the denominator is a single power, just split the fraction.
