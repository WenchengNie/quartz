---
course: MAT137
topic: bounded functions, zero-times-bounded limit
date: 2026-10-15
tags:
  - MAT137
  - limits
  - epsilon-delta
  - proofs
  - bounded
prereq:
  - "[[Epsilon-Delta Proofs]]"
  - "[[Limit Laws and Existence]]"
next: "[[Infinite Limits - Sum and Product]]"
week: W04
---

# Bounded Times Zero Limit


Related: [[Epsilon-Delta Proofs]] · [[Limit Laws and Existence]]

## The false statement (warm-up)

**Claim:** If

$$\lim_{x\to a} f(x) = 0$$

then

$$\lim_{x\to a} f(x)\,g(x) = 0$$

This is **false**. A counterexample must satisfy the hypothesis and fail the conclusion.

**Counterexample:** $a = 0$, $f(x) = x$, $g(x) = \dfrac{1}{x}$.

- Hypothesis holds:

$$\lim_{x\to 0} x = 0$$

- Conclusion fails: for $x \ne 0$, $f(x)g(x) = 1$, so

$$\lim_{x\to 0} f(x)\,g(x) = 1 \ne 0$$

The problem: $g$ blows up fast enough to cancel $f$ going to $0$. Same idea as Example A in [[Limit Laws and Existence]].

---

## Bounded functions

$g$ is **bounded** if there is a constant $M$ with

$$|g(x)| \le M \quad \text{for all } x \text{ in the domain}$$

Opening up the absolute value, this is the same as

$$-M \le g(x) \le M$$

so the whole graph of $g$ is trapped in a horizontal strip.

- **Bounded:** $\sin x$, $\cos x$, $\sin\!\left(\frac1x\right)$ (all trapped between $-1$ and $1$).
- **Unbounded:** $\dfrac1x$, even if restricted to $(0,1)$. The vertical asymptote at $0$ means no strip, however wide, contains the graph.

> [!warning] Bounded domain ≠ bounded function
> A function on a bounded interval can still be unbounded: $\frac1x$ on $(0,1)$ is the standard example.

> [!note] We can take $M > 0$
> If $|g(x)| \le M$, then also $|g(x)| \le M+1$. So we can always assume $M > 0$, which matters because the proof divides by $M$.

---

## Theorem

Let $f$ and $g$ be defined on $\mathbb R$ except possibly at $a$. If

$$\lim_{x\to a} f(x) = 0$$

and $g$ is bounded, i.e. there is $M > 0$ with $|g(x)| \le M$ for all $x \ne a$, then

$$\lim_{x\to a} f(x)\,g(x) = 0$$

**Intuition:** $g$ can wiggle, but only by a fixed amount, so it can't stop $f$ from crushing the product to $0$.

---

## Setting up the proof

### What we assume

**(1)** Limit of $f$, written out with its own letters $\varepsilon_1, \delta_1$:

$$\forall \varepsilon_1 > 0,\ \exists \delta_1 > 0 \text{ s.t. } \forall x,\ 0 < |x-a| < \delta_1 \implies |f(x)| < \varepsilon_1$$

**(2)** Boundedness:

$$|g(x)| \le M \quad \text{for all } x \ne a$$

### What we want

$$\forall \varepsilon > 0,\ \exists \delta > 0 \text{ s.t. } \forall x,\ 0 < |x-a| < \delta \implies |f(x)\,g(x)| < \varepsilon$$

### Proof skeleton

Let $\varepsilon > 0$. Take $\delta = \underline{\quad}$. Let $x \in \mathbb R$ with $0 < |x-a| < \delta$. Then $\dots$ Thus $|f(x)g(x)| < \varepsilon$.

> [!tip] $0 < |x-a|$ already means $x \ne a$
> So "$x \ne a$" doesn't need to be stated separately.

---

## Rough work

Split the absolute value of the product:

$$|f(x)\,g(x)| = |f(x)|\,|g(x)| \le M\,|f(x)|$$

Using (1) with some $\varepsilon_1$:

$$M\,|f(x)| < M\,\varepsilon_1$$

That's $M\varepsilon_1$, not $\varepsilon$. But (1) holds for **every** $\varepsilon_1 > 0$, so we get to choose it. Setting $M\varepsilon_1 = \varepsilon$ gives

$$\varepsilon_1 = \frac{\varepsilon}{M}$$

which is positive since $\varepsilon > 0$ and $M > 0$. Then (1) hands back a $\delta_1$, and we take $\delta = \delta_1$.

> [!important] Why this proof feels different
> Earlier proofs had a specific function like $x^2+1$, so we computed $\delta$ directly. Here $f$ is hypothetical, so we can't compute $\delta$. Instead we **feed the hypothesis a well-chosen $\varepsilon_1$ and use the $\delta_1$ it returns.** Same trick as $\frac{\varepsilon}{2}$ in the sum-law proof in [[Epsilon-Delta Proofs]].

**Lecture analogy:** the hypothesis (1) is a guy in an alleyway who promises: "give me any $\varepsilon_1$, I'll give you a $\delta_1$." You don't control which $\delta_1$ he returns, but you control what you ask for. Ask for $\frac{\varepsilon}{M}$.

---

## Final proof

Let $\varepsilon > 0$. Since $M > 0$, the number $\varepsilon_1 = \dfrac{\varepsilon}{M}$ is positive. By (1), there exists $\delta_1 > 0$ such that

$$0 < |x-a| < \delta_1 \implies |f(x)| < \frac{\varepsilon}{M}$$

Take $\delta = \delta_1$. Let $x \in \mathbb R$ with $0 < |x-a| < \delta$. Then $0 < |x-a| < \delta_1$, so $|f(x)| < \frac{\varepsilon}{M}$, and by (2), $|g(x)| \le M$. Therefore

$$|f(x)\,g(x)| = |f(x)|\,|g(x)| \le M\,|f(x)| < M\cdot\frac{\varepsilon}{M} = \varepsilon$$

Hence

$$\lim_{x\to a} f(x)\,g(x) = 0 \qquad \blacksquare$$

---

## Notes and uses

- **Only bounded near $a$ is needed.** The proof only uses $|g(x)| \le M$ for $x$ close to $a$. If $g$ is bounded on some interval $0 < |x-a| < r$, take $\delta = \min(\delta_1, r)$ instead.
- **Classic application:**

$$\lim_{x\to 0} x\sin\!\left(\frac1x\right) = 0$$

because $x \to 0$ and $\left|\sin\frac1x\right| \le 1$, even though $\lim_{x\to0}\sin\frac1x$ does not exist (so the product law can't be used).
- **Contrast with the counterexample:** $\frac1x$ fails the boundedness hypothesis, which is exactly why the warm-up claim broke.
