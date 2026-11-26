---
course: MAT137
topic: definition of the derivative
date: 2026-10-28
tags:
  - MAT137
  - derivatives
  - definitions
prereq:
  - "[[The Idea of a Limit]]"
  - "[[Computing Limits]]"
next: "[[Tangent Lines and the Derivative]]"
week: W06
---

# The Derivative: Definition and Meaning

Related: [[Tangent Lines and the Derivative]] · [[Differentiation Rules]] · [[Differentiability Implies Continuity]]

## Why we need limits (Video 3.1)

"Slope of the curve", "tangent line", and "instantaneous rate of change" all define each other in a circle. One of them has to be defined from scratch, and that takes a **limit**.

The secant line through $(a,f(a))$ and $(b,f(b))$ has slope $\frac{f(b)-f(a)}{b-a}$. As $b\to a$, the secant turns into the tangent line.

## Definition

Let $a\in\mathbb R$ and let $f$ be defined on an interval centred at $a$. Then

$$f'(a)=\lim_{x\to a}\frac{f(x)-f(a)}{x-a}=\lim_{h\to0}\frac{f(a+h)-f(a)}{h}$$

The two forms are the same limit, with $h=x-a$.
- $f$ is **differentiable at $a$** if this limit exists (as a real number).
- "$f$ is differentiable" means differentiable at every point of its domain.
- **Tangent line** (now properly defined): the line through $(a,f(a))$ with slope $f'(a)$:
$$y=f(a)+f'(a)(x-a)$$

## Example: $f(x)=4x-x^2$, find $f'(1)$ from the definition (Video 3.2)

$$\begin{aligned}
f'(1)&=\lim_{h\to0}\frac{\left[4(1+h)-(1+h)^2\right]-3}{h}\\
&=\lim_{h\to0}\frac{4+4h-1-2h-h^2-3}{h}\\
&=\lim_{h\to0}\frac{2h-h^2}{h}=\lim_{h\to0}(2-h)=2
\end{aligned}$$

## Derivative as rate of change (Video 3.3)

"Velocity $180$ km/h right now" means: over a **tiny** time interval $\Delta t$, distance $\approx180\,\Delta t$. The smaller $\Delta t$, the better the approximation. That is a limit in disguise.

$$\text{average velocity}=\frac{\Delta x}{\Delta t}\qquad\text{instantaneous velocity}=\frac{dx}{dt}=\lim_{\Delta t\to0}\frac{\Delta x}{\Delta t}$$

- In general, for $Q$ depending on $x$: the instantaneous rate of change is $\frac{dQ}{dx}=\lim_{\Delta x\to0}\frac{\Delta Q}{\Delta x}$.
- With $x=f(t)$ this is exactly $f'(t_1)$. Slope, rate of change, and velocity are the same concept.
- $\frac{dx}{dt}$ is **notation**. $dx$ and $dt$ are not numbers being divided.

## Higher-order derivatives (Video 3.8)

**Lagrange notation:**

$$f',\ f'',\ f''',\ \dots,\ f^{(n)}$$

For example, with $f(x)=x^7$:

$$f'=7x^6,\quad f''=42x^5,\quad f'''=210x^4,\quad f^{(8)}=0$$

> [!warning] Keep the parentheses
> $f^{(n)}$ is the $n$-th derivative. Without parentheses, $f^n$ is ambiguous. For trig functions it means a power ($\sin^2x$). Elsewhere it sometimes means composition.

**Leibniz notation:** apply the operator $\frac{d}{dx}$ $n$ times:

$$\frac{dy}{dx},\quad\frac{d^2y}{dx^2},\quad\dots,\quad\frac{d^ny}{dx^n}$$

Leibniz notation tracks units. If $x$ is in m and $t$ in s, then $\frac{dx}{dt}$ is in m/s and $\frac{d^2x}{dt^2}$ is in m/s$^2$.


## Example: differentiability from the definition + squeeze (Week 8 tutorial Q7)

$f$ has domain $\mathbb R$ and $|f(x)|\le|\sin x|$ for all $x$. Prove $g(x)=xf(x)$ is differentiable at $0$.

**Step 1: write the definition.** Nothing is known about $f$ beyond the inequality (not even continuity), so the definition is the only tool.

First, $|f(0)|\le|\sin0|=0$, so $f(0)=0$ and $g(0)=0$. Then

$$g'(0)=\lim_{x\to0}\frac{g(x)-g(0)}{x-0}=\lim_{x\to0}\frac{xf(x)}{x}=\lim_{x\to0}f(x)$$

(cancelling $x$ is fine because $x\ne0$ inside the limit). So the problem is now: **show $\lim_{x\to0}f(x)$ exists.**

**Step 2: squeeze.** For all $x$:

$$-|\sin x|\le-|f(x)|\le f(x)\le|f(x)|\le|\sin x|$$

$|\sin x|$ is continuous, so $\lim_{x\to0}|\sin x|=|\sin0|=0$, and likewise $\lim_{x\to0}\left(-|\sin x|\right)=0$. By the [[Squeeze Theorem]],

$$\lim_{x\to0}f(x)=0$$

Hence $g'(0)$ exists and equals $0$. $\blacksquare$

> [!important] Pattern
> "Prove $g$ is differentiable at $a$" with an unknown function: write $\lim\frac{g(x)-g(a)}{x-a}$, simplify, and the question turns into an ordinary limit problem.


## Example: $g(x)=\frac{2}{\sqrt x}$, find $g'(4)$ from the definition (lecture, Nov 2026)

**Choose the form.** Both forms work. The $x\to a$ form keeps the square root as $\sqrt x$ instead of $\sqrt{4+h}$, so the algebra is cleaner. With $g(4)=\frac{2}{2}=1$:

$$g'(4)=\lim_{x\to4}\frac{g(x)-g(4)}{x-4}=\lim_{x\to4}\frac{\frac{2}{\sqrt x}-1}{x-4}$$

**Step 0: try plugging in.** You get $\frac00$, so algebra is needed. Always check this first: if plugging in gave a real number, you would already be done.

**Step 1: clear the small fraction** (multiply top and bottom by $\sqrt x$):

$$=\lim_{x\to4}\frac{2-\sqrt x}{\sqrt x\,(x-4)}$$

**Step 2: conjugate** (multiply top and bottom by $2+\sqrt x$). The top becomes a difference of squares, $2^2-(\sqrt x)^2=4-x$:

$$=\lim_{x\to4}\frac{4-x}{\sqrt x\,(x-4)(2+\sqrt x)}$$

**Step 3: cancel**, using $4-x=-(x-4)$:

$$=\lim_{x\to4}\frac{-1}{\sqrt x\,(2+\sqrt x)}$$

**Step 4: plug in** (no more division by $0$):

$$=\frac{-1}{2\,(2+2)}=-\frac18$$

**Check with the power rule:** $g(x)=2x^{-1/2}$, so

$$g'(x)=-x^{-3/2},\qquad g'(4)=-\frac{1}{4^{3/2}}=-\frac18\ \checkmark$$

> [!tip] Practice
> Redo this with the $h$-form ($\sqrt{4+h}$) and compare which one you prefer.
