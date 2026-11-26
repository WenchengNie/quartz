---
course: MAT137
topic: infinite limits, sum and product with an infinite limit
date: 2026-10-17
tags:
  - MAT137
  - limits
  - infinite-limits
  - epsilon-delta
  - proofs
prereq:
  - "[[Epsilon-Delta Proofs]]"
  - "[[Limit Laws and Existence]]"
next: "[[Codes and Asymptotic Regularity]]"
week: W03
---

# Infinite Limits: Sum and Product


Related: [[Epsilon-Delta Proofs]] · [[Limit Laws and Existence]] · [[Bounded Times Zero Limit]] · [[137 Course Definitions and Proof Structures]]

## The theorem

Let $a \in \mathbb R$, and let $f, g$ be **positive** functions with domain $\mathbb R$. Define $S(x) = f(x)+g(x)$ and $P(x) = f(x)g(x)$.

- **(i)** If $\displaystyle\lim_{x\to a} f(x) = \infty$ and $\displaystyle\lim_{x\to a} g(x)$ exists, then $\displaystyle\lim_{x\to a} S(x) = \infty$.
- **(ii)** If $\displaystyle\lim_{x\to a} f(x) = \infty$ and $\displaystyle\lim_{x\to a} g(x) = L$ with $L > 0$, then $\displaystyle\lim_{x\to a} P(x) = \infty$.

---

## Why "$\infty + L = \infty$" is not a proof

The tempting argument: "$\lim S = \infty + L = \infty$" and "$\lim P = \infty \cdot L = \infty$". Two different kinds of mistakes:

1. **$\infty$ is not a real number.** $\lim f(x) = \infty$ is shorthand for "$f(x)$ grows past every bound near $a$". The limit does not exist as a number, so $\infty + L$ and $\infty\cdot L$ are not arithmetic on numbers. They are undefined symbols.
2. **Using limit laws outside their hypotheses.** The sum and product laws in [[Limit Laws and Existence]] require **both** limits to exist as finite real numbers. Here $\lim f$ is not finite, so the laws don't apply.
3. **Circular reasoning.** "$\infty \cdot L = \infty$" *is* the statement to be proved, written in shorthand. Writing it down assumes the conclusion.

> [!warning] Hidden hypotheses
> The bogus argument never uses $L > 0$. That's a red flag: with $L = 0$ the product can go anywhere (e.g. $f = \frac{1}{x^2}$, $g = x^2$ at $a=0$ gives $P = 1$). A real proof must use every hypothesis that matters.

---

## Proof of (ii) from the definitions

### Definitions

**Assume (1):** $\displaystyle\lim_{x\to a} f(x) = \infty$:

$$\forall M_1,\ \exists \delta_1 > 0,\ \forall x,\ 0<|x-a|<\delta_1 \Rightarrow f(x) > M_1$$

**Assume (2):** $\displaystyle\lim_{x\to a} g(x) = L$:

$$\forall \varepsilon > 0,\ \exists \delta_2 > 0,\ \forall x,\ 0<|x-a|<\delta_2 \Rightarrow |g(x) - L| < \varepsilon$$

**Want:** $\displaystyle\lim_{x\to a} f(x)g(x) = \infty$:

$$\forall M,\ \exists \delta > 0,\ \forall x,\ 0<|x-a|<\delta \Rightarrow f(x)g(x) > M$$

### Rough work

- Keep $g$ away from $0$: choose $\varepsilon = \frac L2$ in (2). Then $|g(x) - L| < \frac L2$ gives

$$g(x) > L - \frac L2 = \frac L2$$

- Make $f$ big enough to beat the factor $\frac L2$: we want $f(x)\cdot\frac L2 \ge M$, so ask (1) for $M_1 = \frac{2M}{L}$.
- Take $\delta = \min(\delta_1, \delta_2)$ so both facts hold at once.

> [!tip] Lower bound, not closeness
> For limit $=\infty$ proofs we don't need $g(x)$ close to $L$, only **bounded below by a positive number** near $a$. $L>0$ is what makes that possible.

### Final proof

Let $M \in \mathbb R$. WLOG $M > 0$ (if the product exceeds a positive number it exceeds every smaller one).

Since $L > 0$, $\varepsilon = \frac L2 > 0$. By (2), there is $\delta_2 > 0$ with

$$0<|x-a|<\delta_2 \Rightarrow |g(x)-L| < \frac L2 \Rightarrow g(x) > \frac L2$$

By (1) with $M_1 = \frac{2M}{L}$, there is $\delta_1 > 0$ with

$$0<|x-a|<\delta_1 \Rightarrow f(x) > \frac{2M}{L}$$

Take $\delta = \min(\delta_1,\delta_2)$. Let $x$ satisfy $0<|x-a|<\delta$. Then both bounds hold, and both are bounds by **positive** numbers, so we may multiply the inequalities:

$$f(x)g(x) > \frac{2M}{L}\cdot\frac{L}{2} = M$$

Hence $\displaystyle\lim_{x\to a} f(x)g(x) = \infty$. $\blacksquare$

> [!important] Multiplying inequalities
> $A > B > 0$ and $C > D > 0$ imply $AC > BD$. This **fails** if signs aren't controlled (e.g. $3 > -5$ and $1 > -2$, but $3 \cdot 1 < (-5)(-2)$). That's why we made sure $f(x) > \frac{2M}{L} > 0$ and $g(x) > \frac L2 > 0$.

---

## Sketch for (i)

Let $L = \lim g$. Take $\varepsilon = 1$ in (2): near $a$, $g(x) > L - 1$. Ask (1) for $M_1 = M - (L-1)$. With $\delta = \min(\delta_1,\delta_2)$:

$$f(x) + g(x) > \big(M - L + 1\big) + (L - 1) = M$$

(Adding inequalities needs no sign conditions, unlike multiplying.)
