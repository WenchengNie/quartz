---
course: MAT102
date: 2026-10-06
tags:
  - MAT102
  - proofs
  - contradiction
prereq:
  - "[[Quantifiers and Implications]]"
  - "[[Reading Mathematics]]"
next: "[[Relations]]"
week: W04
---

# Proof by Contradiction: no positive integer solutions to $x^2 = 8y^2$


## General recipe (proof by contradiction)

To prove a statement $T$:

1. Assume $\neg T$ (state the assumption explicitly: "For the sake of contradiction, suppose ...").
2. Unpack definitions and derive consequences.
3. Reach some $R \wedge \neg R$ (or a known false fact).
4. Conclude $T$, since $T \equiv \big(\neg T \Rightarrow (R \wedge \neg R)\big)$.

**When it is natural:** the claim says something does *not* exist or is *not* a certain type, so there is nothing to construct directly. Assuming the opposite gives concrete objects to work with.

## Problem

> Show there are no positive integers $x, y$ with $x^2 = 8y^2$.

## Steps

**(a) Why contradiction?** The claim is a non-existence statement. Assuming a solution exists gives us $x_0, y_0$ to manipulate.

**(b) Set up.** For the sake of contradiction, suppose there exist positive integers $x_0, y_0$ with

$$x_0^2 = 8y_0^2.$$

**(c) Take square roots.** Since $x_0, y_0 > 0$ (positivity removes the $\pm$ ambiguity),

$$x_0 = \sqrt{8}\,y_0 = \sqrt{4\cdot 2}\,y_0 = 2\sqrt{2}\,y_0.$$

**(d) Solve for $\sqrt{2}$.** Divide by $2y_0 \neq 0$:

$$\sqrt{2} = \frac{x_0}{2y_0}.$$

**(e) Contradiction.** $x_0 \in \mathbb{Z}$ and $2y_0 \in \mathbb{Z}\setminus\{0\}$, so $\sqrt{2} \in \mathbb{Q}$. But $\sqrt{2}$ is irrational (see below). Contradiction.

**(f) Final write-up.**

*Proof.* For the sake of contradiction, suppose there exist positive integers $x_0, y_0$ with $x_0^2 = 8y_0^2$. Taking positive square roots, $x_0 = 2\sqrt{2}\,y_0$, so $\sqrt{2} = \dfrac{x_0}{2y_0}$. This writes $\sqrt{2}$ as a quotient of integers with nonzero denominator, so $\sqrt{2}\in\mathbb{Q}$, contradicting the irrationality of $\sqrt{2}$. Hence no such $x_0, y_0$ exist. $\square$

## Background fact used: $\sqrt{2}$ is irrational

Suppose $\sqrt{2} = p/q$ in lowest terms, $\gcd(p,q)=1$. Then

$$2q^2 = p^2 \;\Rightarrow\; p^2 \text{ even} \;\Rightarrow\; p \text{ even}, \; p = 2k.$$

Then $2q^2 = 4k^2$, so $q^2 = 2k^2$, so $q$ is even. Both $p, q$ even contradicts lowest terms.

## Takeaways

- Look for a reduction to a **known** result (here, $\sqrt{2}\notin\mathbb{Q}$) instead of redoing the argument.
- Watch the sign step: $x^2 = c \Rightarrow x = \pm\sqrt{c}$ in general; positivity picks the $+$.
- Alternative self-contained route: $x^2 = 8y^2 \Rightarrow x$ even, $x = 2k \Rightarrow y^2 = k^2/2$, continue by parity/descent.


---

## Why contradiction is valid (truth table)

$T$ and $\neg T \Rightarrow (R \wedge \neg R)$ have the same truth table, since $R \wedge \neg R$ is always false:

| $T$ | $\neg T$ | $R \wedge \neg R$ | $\neg T \Rightarrow (R \wedge \neg R)$ |
|---|---|---|---|
| T | F | F | T |
| F | T | F | F |

## More examples from the Relations reading

**No smallest positive real.** Suppose $r$ is the smallest. Then $\frac r2$ is positive and smaller. Contradiction.

**Some digit of $\pi$ appears infinitely often (Proposition 1).** If every digit $0$–$9$ appeared only $N_i$ times, $\pi$ would have $N_0 + \cdots + N_9$ digits, a finite decimal, so rational. But $\pi$ is irrational. *(Non-constructive: we don't learn which digit.)*

**No natural solutions to $x^2 - 4y^2 = 7$ (Example 5).** Suppose there were. Factor:

$$(x - 2y)(x + 2y) = 7.$$

$7$ is prime and $x + 2y > 0$, so the factors are $1$ and $7$ in some order. Adding the two equations gives $2x = 8$, so $x = 4$, and then $y = \pm\frac32 \notin \mathbb{Z}$. Contradiction. $\blacksquare$

> [!tip] Technique
> Factor the expression, then use that a prime has very few factorizations.


---

**$A\cap A^c=\varnothing$.** Suppose some $x\in A\cap A^c$. Then $x\in A$ and $x\notin A$. Contradiction.

**$x^3+x+1=0$ has no rational solution.** Suppose $x=\frac pq$ in lowest terms ($q>0$). Multiply by $q^3$:
$$p^3+pq^2+q^3=0.$$
$p,q$ are not both even (lowest terms). Check the three parity cases:
- $p,q$ both odd: odd $+$ odd $+$ odd $=$ odd.
- $p$ even, $q$ odd: even $+$ even $+$ odd $=$ odd.
- $p$ odd, $q$ even: odd $+$ even $+$ even $=$ odd.

In every case the left side is odd, so it can't be $0$. Contradiction. $\blacksquare$

> [!tip] Technique
> Clear denominators, then use parity (or a prime) to show the integer equation is impossible.

## Lecture activities (Week 4)

### Opening sentence: negate the claim exactly

Claim: "$x^2-y^2=1$ has no natural number solutions." The negation of "no solutions" is "**some** solution":

> For the sake of contradiction, assume there are $x,y\in\mathbb{N}$ such that $x^2-y^2=1$.

(Not "there are $x,y$ with $x^2-y^2\neq1$". That's not the negation.)

**The proof.** Factor: $(x-y)(x+y)=1$. Since $x^2 = 1 + y^2 > y^2$, we have $x > y$, so both factors are natural numbers, and their product is $1$, so $x-y=x+y=1$. Then $x=1$, $y=0$. **The contradiction:** $y=0$ is not a natural number (in this course, $0\notin\mathbb{N}$). $\blacksquare$

### What's wrong with this "proof" that $x^2=8y^2$ has no positive solutions?

> 1. Suppose positive integers $x,y$ satisfy $x^2 = 8y^2$.
> 2. Take square roots: $x=\sqrt8\,y$.
> 3. $y$ is rational and $\sqrt8$ is irrational.
> 4. Rational × irrational is irrational, so the right side is irrational but the left side is rational.
> 5. Contradiction.

Issues:
- **(a) Unproven fact.** It uses "$\sqrt8$ is irrational", which hasn't been established. (The correct proof above reduces to $\sqrt2\notin\mathbb{Q}$, which *was* proved.)
- **(b) False lemma as stated.** Rational × irrational is irrational only if the rational is **non-zero**: $0\cdot\sqrt2 = 0\in\mathbb{Q}$.
- **(c) Still unjustified after fixing (b).** The proof cites a lemma that was never proved, and $\sqrt8\notin\mathbb{Q}$ is essentially the statement being proved (it's equivalent to "$x^2=8y^2$ has no positive solutions"), so the argument comes close to assuming its conclusion.
- **(d) Step 2** needs $x,y>0$ to pick the positive square root ($\sqrt{x^2}=|x|$). Here it's fine, but it should be said. Step 4 also needs $y\neq0$, which holds since $y$ is positive.
- **(e)** The correct proof avoids all this by dividing to isolate $\sqrt2 = \frac{x}{2y}$ and citing the proven irrationality of $\sqrt2$.

**Lemma (fix for (b)).** If $q\in\mathbb{Q}\setminus\{0\}$ and $\alpha\notin\mathbb{Q}$, then $q\alpha\notin\mathbb{Q}$.

*Proof.* Suppose for contradiction $q\alpha = s\in\mathbb{Q}$. Since $q\neq0$, $\alpha = s/q$, a quotient of rationals with non-zero denominator, so $\alpha\in\mathbb{Q}$. Contradiction. $\blacksquare$
