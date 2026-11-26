---
course: MAT137
topic: extreme value theorem
date: 2026-10-12
tags:
  - MAT137
  - continuity
  - EVT
  - counterexamples
prereq:
  - "[[W05 - Continuity and Discontinuities|Continuity and Discontinuities]]"
next: "[[W06 - IVT Intermediate Value Theorem|IVT Intermediate Value Theorem]]"
week: W06
---

# Extreme Value Theorem


Related: [[W05 - Continuity and Discontinuities|Continuity and Discontinuities]]

## Statement

If $f$ is continuous on a **closed, bounded** interval $[a,b]$, then $f$ attains a maximum and a minimum on $[a,b]$: there exist $c, d \in [a,b]$ with

$$f(d) \le f(x) \le f(c) \quad \text{for all } x \in [a,b].$$

Every hypothesis matters. Drop "closed" and the conclusion can fail.

## Challenge: continuous on $(0,1]$, no max and no min

### Example 1 (unbounded both ways)

$$f(x) = \frac{1}{x}\sin\!\left(\frac{1}{x}\right)$$

- **Continuous on $(0,1]$:** $\frac1x$ is continuous for $x \ne 0$, and products and compositions of continuous functions are continuous.
- **No maximum:** take

$$x_k = \frac{1}{\frac{\pi}{2} + 2\pi k} \in (0,1], \qquad f(x_k) = \frac{\pi}{2} + 2\pi k \to \infty.$$

  So $f$ is unbounded above; no value can be the max.
- **No minimum:** take

$$y_k = \frac{1}{\frac{3\pi}{2} + 2\pi k}, \qquad f(y_k) = -\left(\frac{3\pi}{2} + 2\pi k\right) \to -\infty.$$

### Example 2 (bounded, still no max or min)

$$g(x) = (1-x)\sin\!\left(\frac{1}{x}\right)$$

- For $x \in (0,1]$:

$$|g(x)| \le 1 - x < 1,$$

  so $g$ never equals $1$ or $-1$.
- Along $x_k$ from above, $g(x_k) = 1 - x_k \to 1$, so $\sup g = 1$ but it is never reached: no max.
- Along $y_k$, $g(y_k) = -(1-y_k) \to -1$, so $\inf g = -1$, never reached: no min.

## Takeaway

The failure happens at the **missing endpoint** $0$. Wild oscillation near $0$ lets values creep toward (or past) any candidate extreme without ever being trapped. Boundedness alone is not enough (Example 2); you need the interval to be closed.

## Graph

Example 1:

$$f(x) = \frac{1}{x}\sin\left(\frac{1}{x}\right)$$

```desmos-graph
left=-0.05; right=1.1;
bottom=-12; top=12;
---
y=\frac{1}{x}\sin(\frac{1}{x})|x>0|x<=1|red
(1, 0.8415)|red
```

> [!warning] Plain $\frac{1}{x}$ is not enough
> On $(0,1]$, $\frac{1}{x}$ has no max, but it **does** have a min: $\frac{1}{x} \ge 1$ with equality at $x = 1$. The $\sin\left(\frac{1}{x}\right)$ factor is what makes it swing negative too.

> [!tip] Rendering
> This block needs the **Desmos** community plugin (by Nigecat). Without it, it shows as plain code.

## Example: discontinuity inside a closed interval

**True or false:** $f(x) = \dfrac{1+x^2}{x^2-4}$ has a maximum on $[-3,3]$.

**False.** The interval is closed and bounded, but $f$ is **not continuous** on it: $x^2 - 4 = 0$ at $x = \pm 2$, both inside $[-3,3]$. So EVT does not apply.

As $x \to 2^+$, the numerator tends to $5 > 0$ and the denominator tends to $0^+$:

$$\lim_{x \to 2^+} \frac{1+x^2}{x^2-4} = +\infty$$

So $f$ is unbounded above on $[-3,3]$, and there is no maximum.

> [!warning] Common trap
> A closed interval is not enough. EVT needs $f$ continuous at **every** point of $[a,b]$. Always check for zeros of the denominator inside the interval.

---

## Definition of maximum (Video 2.21)

$$f\text{ has a maximum on }I\iff\exists c\in I,\ \forall x\in I,\ f(x)\le f(c)$$

(Minimum: same with $\ge$.)
- The maximum is the **value** $f(c)$. It occurs **at** $c$.
- "The maximum of $f$" with no set named means on its domain.
- EVT only promises that a max and a min **exist**. It doesn't say how to find them. Its proof is hard (real analysis), so in MAT137 we take it as given.
- Ways the conclusion fails: an endpoint is missing (bounded but no max, or a vertical asymptote), or $f$ is discontinuous even on a closed interval.

See also [[W06 - IVT Intermediate Value Theorem|IVT Intermediate Value Theorem]] and [[W05 - Continuity and Discontinuities|Continuity and Discontinuities]].


## Example: global min on $\mathbb R$ via EVT (2SA3 Q1b)

The EVT only works on a **closed bounded** interval, so to get a min on all of $\mathbb R$, use the limits to trap everything outside a big interval above a known value.

$f$ continuous, $f(x)\to137$ as $x\to\infty$, $f(x)\to4$ as $x\to-\infty$, $f(0)=0$.

With $\varepsilon=137$ and $\varepsilon=4$, get $M,N$ so that $f(x)>0$ for $x>M$ and for $x<N$. On

$$[A,B]=[\min(N,-1),\ \max(M,1)]$$

the EVT gives a min $f(c)$. Since $0\in[A,B]$, we have $f(c)\le f(0)=0$. Outside $[A,B]$, $f(x)>0\ge f(c)$. So $f(c)$ is the global min.
