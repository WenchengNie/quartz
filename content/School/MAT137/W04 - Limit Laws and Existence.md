---
course: MAT137
topic: limit laws
date: 2026-10-06
tags:
  - MAT137
  - limits
  - limit-laws
prereq:
  - "[[W03 - The Idea of a Limit|The Idea of a Limit]]"
  - "[[W04 - Epsilon-Delta Proofs|Epsilon-Delta Proofs]]"
next: "[[W04 - Bounded Times Zero Limit|Bounded Times Zero Limit]]"
week: W04
---

# Limit Laws and Existence


Related: [[W04 - Epsilon-Delta Proofs|Epsilon-Delta Proofs]] · [[W05 - Continuity and Discontinuities|Continuity and Discontinuities]]

## Core principle

> [!important]
> The limit laws (limit of a sum = sum of limits, limit of a product = product of limits) only apply when the **individual limits exist**. If they do not, the laws say nothing, and the combined limit may or may not exist.

If $\lim_{x\to a} f(x)$ and $\lim_{x\to a} g(x)$ both exist, then

$$\lim_{x \to a}\bigl[f(x) + g(x)\bigr] = \lim_{x \to a} f(x) + \lim_{x \to a} g(x)$$

$$\lim_{x \to a}\bigl[f(x)\,g(x)\bigr] = \lim_{x \to a} f(x) \cdot \lim_{x \to a} g(x)$$

The laws are "if-then" statements, **not** "if and only if". So "$\lim f$ and $\lim g$ do not exist" does **not** imply "$\lim (f+g)$ does not exist".

---

## Example A: product with a non-existent limit

$$\lim_{x \to 0} x = 0 \ \text{(exists)}, \qquad \lim_{x \to 0} \frac{3}{x} \ \text{does not exist}$$

($\frac{3}{x}$ blows up to $+\infty$ from the right and $-\infty$ from the left.)

The product law cannot be used. Simplify first: for $x \neq 0$,

$$x \cdot \frac{3}{x} = 3 \implies \lim_{x \to 0}\left[x \cdot \frac{3}{x}\right] = 3$$

The $0$ from $x$ and the blow-up from $\frac{3}{x}$ cancel exactly.

## Example B: sum with non-existent limits

$$\lim_{x \to 0} \frac{1}{x} \quad \text{and} \quad \lim_{x \to 0} \frac{2x-1}{x} \quad \text{do not exist}$$

(Near $0$ the numerator $2x - 1 \approx -1$, so $\frac{2x-1}{x}$ behaves like $-\frac{1}{x}$.)

The sum law cannot be used. Combine first: for $x \neq 0$,

$$\frac{1}{x} + \frac{2x-1}{x} = \frac{2x}{x} = 2 \implies \lim_{x \to 0}\left[\frac{1}{x} + \frac{2x-1}{x}\right] = 2$$

> [!tip] Strategy
> If the individual limits do not exist, **simplify algebraically** and investigate the combined expression directly.

---

## Problem: using a substitution

**Given:** $\displaystyle\lim_{x\to 0} \frac{f(x)}{x} = 3$. **Compute:** $\displaystyle\lim_{x\to 0} \frac{f(4x)}{x}$.

### Hint

Let $u = 4x$. As $x \to 0$, $u \to 0$ (and $u \ne 0$ when $x \ne 0$), so

$$\lim_{x \to 0} \frac{f(4x)}{4x} = \lim_{u \to 0} \frac{f(u)}{u} = 3$$

### Solution

$$\frac{f(4x)}{x} = 4 \cdot \frac{f(4x)}{4x} \implies \lim_{x\to 0}\frac{f(4x)}{x} = 4 \cdot 3 = \boxed{12}$$

The constant multiple law applies because $\lim_{x\to0}\frac{f(4x)}{4x}$ exists.

**Intuition:** $\frac{f(x)}{x} \to 3$ means $f(x) \approx 3x$ near $0$, so $f(4x) \approx 12x$.

---

## Limits of compositions and one-sided limits

For $\lim_{x\to a} f(g(x))$ with $g(x)\to b$, the inner function decides which side of $b$ the outer function $f$ is evaluated from. If $g(x)$ approaches $b$ from one side only, what matters is the matching one-sided limit of $f$ at $b$.

### Example: $f$ has a jump

$$f(u)=\begin{cases}1 & u<0\\ 2 & u\ge0\end{cases}$$

Here $\lim_{u\to0^-}f(u)=1$ and $\lim_{u\to0^+}f(u)=2$, so $\lim_{u\to0}f(u)$ does not exist.

**Case $g(x)=x^2$.** For $x\ne0$, $x^2>0$, so the inputs to $f$ approach $0$ from the right:

$$\lim_{x\to0}f(x^2)=\lim_{u\to0^+}f(u)=2$$

**Case $g(x)=-x^2$.** For $x\ne0$, $-x^2<0$, so the inputs approach $0$ from the left:

$$\lim_{x\to0}f(-x^2)=\lim_{u\to0^-}f(u)=1$$

The value $f(-0^2)=f(0)=2$ differs from the limit, which is fine because limits ignore the value at the point.

> [!important] Key idea
> The composition's limit can exist even when the outer function's two-sided limit does not. The inner function controls which side $f$ sees.

### Second trap: $g$ actually equals $b$

If $g(x)=b$ for $x$ near $a$ (or hits $b$ infinitely often), the usual rule can fail. It holds if either of these is true:
- $f$ is continuous at $b$, so $\lim f(g(x))=f(b)$.
- $g(x)\ne b$ for $x$ near $a$ with $x\ne a$.

Counterexample: $g(x)=0$ for all $x$, with $f(u)=1$ for $u\ne0$ and $f(0)=2$. Then $\lim_{u\to0}f(u)=1$, but $f(g(x))=2$ always, so $\lim_{x\to0}f(g(x))=2$.

### Checklist for $\lim_{x\to a}f(g(x))$

1. Find $b=\lim_{x\to a}g(x)$.
2. Ask whether $g(x)$ approaches $b$ from above, below, or both, and whether it ever equals $b$.
3. Take the matching limit of $f$ at $b$: one-sided if $g$ stays on one side, two-sided only if both sides agree.

---

# Exam exemplars: drawing graphs and limit traps (Term Test 1, Q1e and Q3)

## Q1(e): values on a sequence don't determine the limit

Let $f$ have domain $(0,\infty)$ with $f\left(\frac1n\right)=n$ for all positive integers $n$. Then $\lim_{x\to0^+}f(x)=\infty$ is **false** in general.
- Knowing $f$ at the points $\frac1n$ says nothing about the points in between.
- Counterexample:
$$f(x)=\begin{cases}\frac1x & x=\frac1n\text{ for some }n\in\mathbb N\\ 0 & \text{otherwise}\end{cases}$$

In every interval near $0$ there are points where $f(x)=0$, so $f(x)$ does not exceed every $M$.
- A cleverer one:
$$f(x)=\frac1x\cos\left(\frac{2\pi}x\right)$$

## Q3: draw one graph with all of these properties

- Domain $[-6,6]$, $f(-2)=0$, $f(2)=0$
- $\lim_{x\to-2}f(x)$ does not exist, but $\lim_{x\to-2}|f(x)|=1$
- $\lim_{x\to2}f(x)=-2$
- $\lim_{x\to2}f(f(x))=-1$

**Design:**
1. At $x=-2$: the side limits must be $1$ and $-1$ (so $|f|\to1$ but the limit doesn't exist), and $f(-2)=0$ (a separate, third value, shown by a filled dot).
2. Near $x=2$: $f(x)\to-2$, so $f(f(x))$ uses the limit of $f$ at $-2$ from whichever **side** $f(x)$ approaches $-2$.
3. Pick the side, then match it. For example, if $\lim_{u\to-2^+}f(u)=-1$, then near $x=2$ the function must approach $-2$ **from above** ($f(x)>-2$).

$$\lim_{x\to2}f(f(x))=\lim_{u\to-2^+}f(u)=-1$$

This is the same one-sided-composition idea as the $x^2$ and $-x^2$ example above. Many answers are valid, for example $1$ on $[-6,-2)$ with an open end at $-2$, a segment starting at $(-2,-1)$ (open) and falling to $(2,-2)$ (open), then rising to $(6,2)$.

---

# Playlist 2 additions: why limit laws matter

## Full statement (Video 2.10)

If $\lim_{x\to a}f(x)=L$ and $\lim_{x\to a}g(x)=M$ (both real numbers), then

$$\lim_{x\to a}(f+g)=L+M\qquad\lim_{x\to a}(fg)=LM\qquad\lim_{x\to a}\frac fg=\frac LM\ \ (M\ne0)$$

## Payoff: limits of polynomials are found by plugging in

Prove only two basic limits from $\varepsilon$-$\delta$:

$$\lim_{x\to a}x=a\qquad\lim_{x\to a}c=c$$

Every polynomial is built from these with $+$ and $\times$, so the laws do the rest. For example:

$$\lim_{x\to2}\left(x^4-3x\right)=\left(\lim x\right)^4-3\lim x=2^4-3\cdot2=10$$

After this, we never need $\varepsilon$-$\delta$ for a polynomial again.

The proof of the sum law is in [[W04 - Epsilon-Delta Proofs|Epsilon-Delta Proofs]] (Example 2). The [[W04 - Squeeze Theorem|Squeeze Theorem]] handles cases where the laws don't apply.

---

# Week 5 slides: the composition theorem

There is **no limit law for compositions**: $\lim_{x\to a}f(x)=L$ does **not** imply $\lim_{x\to a}g(f(x))=g(L)$. The missing hypothesis is continuity of $g$ at $L$.

> [!important] Theorem
> If $\lim_{x\to a}f(x)=L$ and $g$ is **continuous at $L$**, then $\lim_{x\to a}g(f(x))=g(L)$.

> [!tip]- Proof
> Let $\varepsilon>0$.
> - Because $g$ is continuous at $L$, there is $\delta_2>0$ with $|y-L|<\delta_2\Rightarrow|g(y)-g(L)|<\varepsilon$. Note there is no "$0<$": this matters when $f(x)=L$.
> - Apply the limit of $f$ with $\varepsilon_1=\delta_2$: there is $\delta_1>0$ with $0<|x-a|<\delta_1\Rightarrow|f(x)-L|<\delta_2$.
> - Let $\delta=\delta_1$. If $0<|x-a|<\delta$, then $|f(x)-L|<\delta_2$, so $|g(f(x))-g(L)|<\varepsilon$. ∎
>
> The slide's critiqued proof wrote $g$'s continuity with $0<|x-L|$ and reused the letter $x$. Both are errors.

**Why $\lim_{x\to0}\frac{\sin2x}{2x}=1$ is allowed:** define $G(y)=\frac{\sin y}y$ for $y\ne0$ and $G(0)=1$. Then $G$ is continuous at 0, and $2x\to0$, so the theorem applies.

**$f$ continuous at $0$, $g$ continuous at $0$, but $f\circ g$ discontinuous at $0$?** Possible, because the theorem needs $f$ continuous at $g(0)$, not at $0$. For example, $g(x)=x+1$ with $f$ continuous at 0 but jumping at 1. That doesn't contradict the theorem.
