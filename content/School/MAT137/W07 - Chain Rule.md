---
course: MAT137
topic: differentiation rules
date: 2026-10-19
tags:
  - MAT137
  - derivatives
  - chain-rule
prereq:
  - "[[W06 - Differentiation Rules|Differentiation Rules]]"
  - "[[W06 - The Derivative - Definition and Meaning|The Derivative - Definition and Meaning]]"
next: "[[W07 - Trigonometric Derivatives|Trigonometric Derivatives]]"
week: W07
---

# Chain Rule


Related: [[W07 - Product and Quotient Rules|Product and Quotient Rules]], [[W06 - Tangent Lines and the Derivative|Tangent Lines and the Derivative]]

## Statement

If $g$ is differentiable at $x$ and $f$ is differentiable at $g(x)$, then

$$(f \circ g)'(x) = f'\big(g(x)\big)\,g'(x)$$

"Derivative of the outside, evaluated at the inside, times the derivative of the inside."

## Inner function with a constant multiple

A common special case: if the inside is $g(2x)$, the chain rule applies to $2x$ too:

$$\frac{d}{dx}\,g(2x) = g'(2x)\cdot 2$$

> [!warning] Don't drop the inner factor
> $\frac{d}{dx}\,g(2x) \ne g'(2x)$. The extra factor of $2$ comes from $\frac{d}{dx}(2x) = 2$.

## Nested chain rule

$$\frac{d}{dx}\,f\big(g(2x)\big) = f'\big(g(2x)\big)\cdot g'(2x)\cdot 2$$

Peel layers from the outside in: $f$, then $g$, then $2x$.

## Example: product + chain rule from a table

| $x$ | $f(x)$ | $g(x)$ | $f'(x)$ | $g'(x)$ |
|---|---|---|---|---|
| 1 | 3 | 2 | 4 | 6 |
| 2 | 1 | 3 | 7 | 5 |
| 3 | 2 | 1 | 9 | 8 |

Let $h(x) = f(x)\,g(2x) + f\big(g(2x)\big)$. Find $h'(1)$.

**Differentiate:**

$$h'(x) = f'(x)\,g(2x) + 2f(x)\,g'(2x) + 2f'\big(g(2x)\big)\,g'(2x)$$

**Evaluate at $x = 1$** (so $2x = 2$ and $g(2) = 3$):

$$h'(1) = f'(1)\,g(2) + 2f(1)\,g'(2) + 2f'(3)\,g'(2)$$

$$= (4)(3) + 2(3)(5) + 2(9)(5)$$

$$= 12 + 30 + 90 = 132$$

> [!tip] Read the table at the right input
> Everything inside $g$ is evaluated at $2x = 2$, not $1$. And $f'$ in the last term is evaluated at $g(2) = 3$, not $2$.

## Example: differentiating both sides of an identity

$f, g$ differentiable on $\mathbb{R}$, and for all $x \in \mathbb{R}$:

$$\big[f(x)\big]^3 + g(x^2) = 3g(x) + 2$$

Given $f(1) = 2$, $f'(1) = 5$. Find $g'(1)$.

**Differentiate both sides** (valid because the equation holds for **every** $x$):

$$3\big[f(x)\big]^2 f'(x) + g'(x^2)\cdot 2x = 3g'(x)$$

**Evaluate at $x = 1$** (note $x^2 = 1$, so $g'(x^2)$ becomes $g'(1)$ as well):

$$3(2)^2(5) + 2\,g'(1) = 3\,g'(1)$$

$$60 = g'(1)$$

> [!tip] Unknown on both sides
> When the input to $g$ coincides at the chosen point ($x^2 = x$ at $x = 1$), the unknown appears on both sides. Just solve the resulting linear equation.

> [!warning] Why this is allowed
> Differentiating both sides only works for an identity that holds on an interval or all of $\mathbb{R}$. An equation that holds at just one point gives no information about derivatives.

## Example: power of a function, slope from a tangent line

$h(x) = \big[f(x)\big]^4$. The tangent line to $f$ at $(2, 5)$ also passes through $(2.1, 5.3)$. Find $h'(2)$.

**Read $f(2)$ and $f'(2)$ from the figure:**

$$f(2) = 5$$

$$f'(2) = \text{slope of tangent} = \frac{5.3 - 5}{2.1 - 2} = \frac{0.3}{0.1} = 3$$

**Chain rule (outside $u^4$, inside $f(x)$):**

$$h'(x) = 4\big[f(x)\big]^3 f'(x)$$

$$h'(2) = 4(5)^3(3) = 4 \cdot 125 \cdot 3 = 1500$$

> [!tip] Tangent line = derivative
> The slope of the tangent line at a point **is** the derivative there. Two points on the tangent line are enough to get $f'(a)$.

---

## More examples (Video 3.10)

$$\begin{aligned}
\frac{d}{dx}\sqrt{x^3+1}&=\frac{1}{2\sqrt{x^3+1}}\cdot3x^2\\
\frac{d}{dx}\sin(6x)&=6\cos(6x)\\
\frac{d}{dx}\left(x^2+1\right)^{100}&=100\left(x^2+1\right)^{99}\cdot2x=200x\left(x^2+1\right)^{99}
\end{aligned}$$

## The theorem, carefully (Video 3.11)

Notation: $f$ is the **name** of a function and $f(x)$ is a **number**. The composition is named $f\circ g$ and its value is $(f\circ g)(x)=f(g(x))$.

**Theorem.** **If** $g$ is differentiable at $a$ **and** $f$ is differentiable at $g(a)$, **then** $f\circ g$ is differentiable at $a$ and

$$(f\circ g)'(a)=f'\big(g(a)\big)\,g'(a)$$

If either hypothesis fails, the rule says nothing.

**The natural "proof" has a gap.** Multiply and divide by $g(x)-g(a)$:

$$\frac{f(g(x))-f(g(a))}{x-a}=\frac{f(g(x))-f(g(a))}{g(x)-g(a)}\cdot\frac{g(x)-g(a)}{x-a}$$

This **divides by $0$** if $g(x)=g(a)$ for $x$ near $a$. Some functions take the value $g(a)$ at infinitely many points near $a$ (e.g. $x^2\sin\frac1x$ at $0$). The argument is fine for most everyday functions, but a rigorous proof needs another method.

**Leibniz form.** With $u=g(x)$ and $y=f(u)$:

$$\frac{dy}{dx}=\frac{dy}{du}\cdot\frac{du}{dx}$$

It *looks* like cancelling $du$, but $du$ isn't a number. It's just a memory aid.

See also [[W07 - Implicit Differentiation|Implicit Differentiation]].
