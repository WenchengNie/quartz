---
course: MAT137
topic: tangent lines
date: 2026-10-12
tags:
  - MAT137
  - derivatives
  - tangent-lines
prereq:
  - "[[W06 - The Derivative - Definition and Meaning|The Derivative - Definition and Meaning]]"
next: "[[W06 - Differentiation Rules|Differentiation Rules]]"
week: W06
---

# Tangent Lines and the Derivative


Related: [[W05 - Continuity and Discontinuities|Continuity and Discontinuities]]

## Key Fact

The slope of the tangent line to $y = f(x)$ at $x = a$ is $f'(a)$. The tangent line is

$$y = f(a) + f'(a)(x - a).$$

So **any two points on the tangent line** give you $f'(a)$ as their slope.

## Example: tangent line through a given x-intercept

The tangent line to $y = f(x)$ at $(2,6)$ has x-intercept $5$. Find $f'(2)$.

The tangent line passes through $(2,6)$ and $(5,0)$, so

$$f'(2) = \frac{0 - 6}{5 - 2} = \frac{-6}{3} = -2.$$

Check with the tangent line equation:

$$y = 6 - 2(x - 2)$$

Setting $y = 0$:

$$0 = 6 - 2(x-2) \implies x = 5 \checkmark$$

## Where did the limit go?

The limit from first principles is still there — it's packaged inside $f'(a)$:

$$f'(a) = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h}$$

Once the limit is evaluated, $f'(a)$ is just a **number** (the slope). The tangent line formula is then ordinary point-slope form:

$$y - y_1 = m(x - x_1) \quad\text{with}\quad (x_1, y_1) = (a, f(a)),\ m = f'(a)$$

$$\implies y = f(a) + f'(a)(x - a)$$

- **Limit step:** finds the slope (calculus).
- **Tangent line step:** builds a line from a point and a slope (algebra).

Example: $f(x) = x^2$, $a = 3$. First principles: $f'(3) = \lim_{h\to 0} \frac{(3+h)^2 - 9}{h} = \lim_{h \to 0}(6 + h) = 6$. Tangent line: $y = 9 + 6(x - 3)$ — no limit left.


## Example: tangent line at a given point (Week 8 tutorial Q5)

$f(x)=3x^2-2\sqrt x-50$ at $x=4$.

$$f(4)=48-4-50=-6\qquad f'(x)=6x-\frac1{\sqrt x}\qquad f'(4)=24-\frac12=\frac{47}2$$

$$y=-6+\frac{47}2(x-4)$$

## Example: tangent lines through a point NOT on the curve (Week 8 tutorial Q6)

Find the tangent lines to $y=x^2$ passing through $\left(\frac34,0\right)$.

> [!tip] The point of tangency is the unknown
> $\left(\frac34,0\right)$ is not on the parabola, so it is **not** the point of tangency. Call the point of tangency $(a,a^2)$, write the tangent line there, then force it through the given point.

Tangent line at $x=a$:

$$y=a^2+2a(x-a)$$

It passes through $\left(\frac34,0\right)$:

$$0=a^2+2a\left(\tfrac34-a\right)=-a^2+\tfrac32a=a\left(\tfrac32-a\right)$$

So $a=0$ or $a=\frac32$:

$$a=0:\quad y=0\qquad\qquad a=\tfrac32:\quad y=\tfrac94+3\left(x-\tfrac32\right)=3x-\tfrac94$$

Check: $3\cdot\frac34-\frac94=0$ ✓


## Example: tangent line read off a graph (lecture, Nov 2026)

No formula for $f$ is given, only its graph. The tangent line at $x=-2$ passes through the point of tangency $(-2,-1)$ and another grid point $(-3,1)$.

**Slope (rise over run):**

$$m=\frac{-1-1}{-2-(-3)}=\frac{-2}{1}=-2$$

**Point-slope form** with the point of tangency $(x_0,y_0)=(-2,-1)$:

$$y-y_0=m(x-x_0)$$

$$y-(-1)=-2\big(x-(-2)\big)\quad\Longrightarrow\quad y+1=-2(x+2)$$

Expand and solve for $y$:

$$y+1=-2x-4\quad\Longrightarrow\quad y=-2x-5$$

> [!tip] Why point-slope beats $y=mx+b$ in calculus
> You usually know the point of tangency and the slope $f'(a)$, and nothing else. Point-slope uses exactly those two, so you never have to solve for $b$.

**Follow-ups on the same graph:**
- $x=-1$: the graph has a flat spot, so the slope is $0$ and the tangent line is horizontal: $y=f(-1)$, a constant.
- $x=1$: the graph has a **corner**, so there is no tangent line and $f$ is not differentiable there.
- $x=3$: the graph looks smooth, but the tangent is **vertical**. Its slope is undefined ("run $=0$"), so $f$ is not differentiable there either. See [[W06 - Differentiability Implies Continuity|Differentiability Implies Continuity]].
