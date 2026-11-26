---
course: MAT137
topic: epsilon-delta proofs
date: 2026-10-06
tags:
  - MAT137
  - limits
  - epsilon-delta
  - proofs
prereq:
  - "[[The Idea of a Limit]]"
  - "[[Logic - Negations and Proof Structure]]"
next: "[[Limit Laws and Existence]]"
week: W04
---

# Epsilon-Delta Proofs


Related: [[Limit Laws and Existence]] · [[Continuity and Discontinuities]]

## Definition

$$\lim_{x \to a} f(x) = L \iff \forall \varepsilon > 0,\ \exists \delta > 0 \text{ s.t. } 0 < |x-a| < \delta \implies |f(x) - L| < \varepsilon$$

## General proof template

1. **State what you need:**
$$0 < |x-a| < \delta \implies |f(x) - L| < \varepsilon$$
2. **Scratch work (working backwards):** Rewrite $|f(x) - L|$ so that it contains a factor of $|x-a|$.
3. **Bound the leftover factor:** If another factor depends on $x$, restrict $\delta \le 1$ (or some other constant) to bound it by a constant $C$.
4. **Solve for $\delta$:** Require $C\delta \le \varepsilon$, i.e. $\delta \le \dfrac{\varepsilon}{C}$.
5. **Choose $\delta$** as the minimum of all the restrictions: $\delta = \min\left(1, \dfrac{\varepsilon}{C}\right)$.
6. **Write the proof forwards:** Let $\varepsilon > 0$. Take $\delta = \dots$ Assume $0 < |x-a| < \delta$. Then $\dots < \varepsilon$.

> [!tip] Key idea
> The factor $|x-a|$ is the one you control through $\delta$. Everything else must be bounded by a constant.

---

## Example 1: $\lim_{x \to 4} (x^2 + 1) = 17$

### Need

$$0 < |x-4| < \delta \implies |(x^2+1) - 17| < \varepsilon$$

### Step 1: Algebra (isolate $|x-4|$)

$$|(x^2+1) - 17| = |x^2 - 16| = |x+4|\,|x-4| \le |x+4|\,\delta$$

- Simplify inside: $x^2 + 1 - 17 = x^2 - 16$.
- Factor the difference of squares: $x^2 - 16 = (x+4)(x-4)$.
- Replace $|x-4|$ with the larger quantity $\delta$ (valid since $|x+4| \ge 0$).

The leftover factor $|x+4|$ depends on $x$, so it must be bounded by a constant $C$.

### Step 2: Bound $|x+4|$

If $|x-4| < C'$ for some number $C'$, then $|x+4|$ is bounded. Choose $\delta \le 1$, so $|x - 4| < 1$:

$$3 < x < 5 \implies 7 < x+4 < 9 \implies |x+4| < 9$$

So $C = 9$.

### Step 3: Combine

With $|x+4| < 9$,

$$|x^2 - 16| < 9\delta$$

and we want $9\delta \le \varepsilon$, i.e. $\delta \le \dfrac{\varepsilon}{9}$.

We need $\delta \le 1$ **and** $\delta \le \dfrac{\varepsilon}{9}$ at the same time:

$$\boxed{\delta = \min\left(1, \frac{\varepsilon}{9}\right)}$$

### Final proof

Let $\varepsilon > 0$ and set $\delta = \min\left(1, \dfrac{\varepsilon}{9}\right)$. Suppose $0 < |x-4| < \delta$.

Since $\delta \le 1$, we have $|x-4| < 1$, so $3 < x < 5$ and $|x+4| < 9$. Then

$$|(x^2+1) - 17| = |x+4|\,|x-4| < 9\delta \le 9 \cdot \frac{\varepsilon}{9} = \varepsilon. \qquad \blacksquare$$

---

## Example 2: Proof of the sum law

**Claim.** If $\lim_{x\to a} f(x) = L$ and $\lim_{x\to a} g(x) = M$, and $h = f + g$, then $\lim_{x\to a} h(x) = L + M$.

### Need

$$0 < |x-a| < \delta \implies |h(x) - (L+M)| < \varepsilon$$

### Triangle inequality

$$|h(x) - (L+M)| = |(f(x) - L) + (g(x) - M)| \le |f(x) - L| + |g(x) - M|$$

### Why $\dfrac{\varepsilon}{2}$?

The right side is a sum of two pieces, and the total "budget" is $\varepsilon$. Give each piece half:

$$|f(x) - L| < \frac{\varepsilon}{2}, \qquad |g(x) - M| < \frac{\varepsilon}{2}$$

so that

$$|f(x) - L| + |g(x) - M| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$$

### Why we are allowed to demand $\dfrac{\varepsilon}{2}$

The definition of $\lim_{x\to a} f(x) = L$ works for **every** positive number $\varepsilon'$. Since $\varepsilon > 0$, the number $\dfrac{\varepsilon}{2}$ is also positive, so we can apply the definition with $\varepsilon' = \dfrac{\varepsilon}{2}$:

$$\exists \delta_1 > 0 \text{ s.t. } 0 < |x-a| < \delta_1 \implies |f(x) - L| < \frac{\varepsilon}{2}$$

Likewise for $g$:

$$\exists \delta_2 > 0 \text{ s.t. } 0 < |x-a| < \delta_2 \implies |g(x) - M| < \frac{\varepsilon}{2}$$

### Choose $\delta$

$$\boxed{\delta = \min(\delta_1, \delta_2)}$$

so both conditions hold at once. Then for $0 < |x-a| < \delta$,

$$|h(x) - (L+M)| \le |f(x) - L| + |g(x) - M| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon. \qquad \blacksquare$$

> [!note] Pattern
> Splitting $\varepsilon$ into pieces ($\frac{\varepsilon}{2}$, etc.) and taking $\delta$ as the **minimum** of the individual $\delta$'s is the standard technique whenever two or more conditions must hold simultaneously.

---

## Other limit definitions

**Right-hand limit:**

$$\lim_{x\to a^+} f(x)=L \iff \forall \varepsilon>0,\ \exists \delta>0,\ \forall x,\ a<x<a+\delta \Rightarrow |f(x)-L|<\varepsilon$$

**Left-hand limit:** same, with $a-\delta<x<a$.

**Infinite limit:**

$$\lim_{x\to a} f(x)=+\infty \iff \forall M,\ \exists \delta>0,\ \forall x,\ 0<|x-a|<\delta \Rightarrow f(x)>M$$

**Limit at infinity:**

$$\lim_{x\to +\infty} f(x)=L \iff \forall \varepsilon>0,\ \exists N,\ \forall x,\ x>N \Rightarrow |f(x)-L|<\varepsilon$$

**Two-sided limit:**

$$\lim_{x\to a} f(x)=L \iff \lim_{x\to a^-} f(x)=L \text{ and } \lim_{x\to a^+} f(x)=L$$

## Negation of the limit statement

$$\lim_{x\to a} f(x)\neq L \iff \exists \varepsilon>0,\ \forall \delta>0,\ \exists x:\ 0<|x-a|<\delta \ \wedge\ |f(x)-L|\ge\varepsilon$$

## Tools

- $|x-y|$ is the distance between $x$ and $y$.
- Triangle inequality:

$$|a+b|\le|a|+|b|$$
$$\big||a|-|b|\big|\le|a-b|$$

- $\delta$ may depend on $\varepsilon$ (and on $a$), but never on $x$.

---

# Exam exemplars: finding $\delta$ (Term Test 1, Q4 and Q6)

## Q4: $f(x)=\frac1x$ and the conditional $|x-2|<\delta\Rightarrow|f(x)-0.5|<0.1$

**(a) Solve the inequality.** Since $\frac1x>0$ here, taking reciprocals reverses the inequalities:

$$\left|\tfrac1x-\tfrac12\right|<\tfrac1{10}\iff\tfrac4{10}<\tfrac1x<\tfrac6{10}\iff\tfrac{10}{6}<x<\tfrac{10}{4}\iff x\in\left(\tfrac53,\tfrac52\right)$$

**(b) Find one $\delta$.** Take $\delta=\frac13$. If $|x-2|<\frac13$ then $\frac53<x<\frac73$, and since $\frac73<\frac52$, we get $\frac53<x<\frac52$. By (a), $|f(x)-0.5|<0.1$.

**(c) Find all $\delta$.** The answer is $\delta\in\left(0,\tfrac13\right]$, and a full solution proves two things:
- **These work:** if $0<\delta\le\frac13$ and $|x-2|<\delta$, then $|x-2|<\frac13$, so $\frac53<x<\frac52$, so $|f(x)-0.5|<0.1$.
- **No others work:** if $\delta>\frac13$, take $x=\frac53$. Then $|x-2|=\frac13<\delta$, but
$$\left|\tfrac35-\tfrac12\right|=\tfrac1{10}\not<\tfrac1{10}$$

so the conditional is false.

> [!important] Structure for "find all"
> Prove "every value in my set works" and "every value outside it fails." For the second, **exhibit one specific $x$** that breaks the conditional. See the quantifier reasoning in [[Logic - Negations and Proof Structure]].

## Q6: prove $\lim_{x\to-1}(2x+2)^2=0$ directly from the definition

Scratch work: $(2x+2)^2=4(x+1)^2$, so we want $4|x+1|^2<\varepsilon$, i.e. $|x+1|<\frac{\sqrt\varepsilon}2$.

**Proof.** Let $\varepsilon>0$. Choose $\delta=\frac{\sqrt\varepsilon}{2}$. Let $x\in\mathbb R$ with $0<|x+1|<\delta$. Then

$$\left|(2x+2)^2-0\right|=4|x+1|^2<4\left(\tfrac{\sqrt\varepsilon}2\right)^2=\varepsilon$$

> [!tip] No bounding trick needed here
> When the expression is just $|x-a|^k$ times a constant, there's no leftover factor to bound, so $\delta$ is a direct root of $\varepsilon/\text{constant}$ and no $\min\{1,\dots\}$ is required.

# Exam exemplars: definitions to state exactly (Term Test 1, Q5)
**Limit, with the assumption on $f$:** let $f$ be defined on an interval centred at $a$, except possibly at $a$ itself. Then

$$\lim_{x\to a}f(x)=L\iff\forall\varepsilon>0,\ \exists\delta>0,\ \forall x\in\mathbb R,\ \big(0<|x-a|<\delta\Rightarrow|f(x)-L|<\varepsilon\big)$$

**Limit equal to $-\infty$** (here at $7$, with $f$ defined on $\mathbb R$):

$$\lim_{x\to7}f(x)=-\infty\iff\forall M\in\mathbb R,\ \exists\delta>0,\ \forall x\in\mathbb R,\ \big(0<|x-7|<\delta\Rightarrow f(x)<M\big)$$

$M$ can range over all reals, or only negatives, or only positives if you write $f(x)<-M$.

---

# Playlist 2 additions: distance, the definition, and DNE proofs

## Distance and absolute value (Video 2.4)

$$|x|=\begin{cases}x&x\ge0\\-x&x<0\end{cases}\qquad|x-a|=\text{distance from }x\text{ to }a$$

$$|xy|=|x|\,|y|\qquad|x+y|\le|x|+|y|\ \text{(triangle inequality)}$$

Learn to move between all of these instantly:

$$|x-a|<\delta\iff-\delta<x-a<\delta\iff a-\delta<x<a+\delta\iff x\in(a-\delta,a+\delta)$$

## Why the definition is $\forall\varepsilon\ \exists\delta$ (Video 2.5)

- "$x$ close to $a$ but not $a$" becomes $0<|x-a|<\delta$. The $0<$ excludes $x=a$.
- "$f(x)$ close to $L$" becomes $|f(x)-L|<\varepsilon$.
- **Small $\varepsilon$ is the hard test.** Shrinking $\delta$ only makes the implication *easier* to satisfy. A function with no limit gets caught when $\varepsilon$ is small enough that **no** $\delta$ works. There's no smallest positive $\varepsilon$, so we require **every** $\varepsilon>0$.
- For each $\varepsilon$ we need just **one** $\delta$, and it may depend on $\varepsilon$.
- **Hidden quantifier:** the implication carries an implicit $\forall x\in\mathbb R$.
- Set-up: $a,L\in\mathbb R$, and $f$ defined on an interval centred at $a$, except possibly at $a$.
- For limits at $\infty$, the video names the cut-off $M$ (it plays the role of $N$ above), and $f$ must be defined on some $(p,\infty)$.

## Simplest example: $\lim_{x\to3}(2x+1)=7$ (Video 2.7)

**Rough work:**

$$|(2x+1)-7|=2|x-3|<2\delta$$

so take $\delta=\frac\varepsilon2$. Any smaller positive $\delta$ also works.

**Proof.** Let $\varepsilon>0$. Take $\delta=\frac\varepsilon2$. Let $x\in\mathbb R$ with $0<|x-3|<\delta$. Then

$$|(2x+1)-7|=2|x-3|<2\delta=\varepsilon$$

$\blacksquare$

> [!warning] Common error (Video 2.8)
> In Example 1, setting $\delta=\frac{\varepsilon}{|x+4|}$ is **wrong**. $\delta$ is chosen **before** $x$ is fixed, so it may depend on $\varepsilon$ only. Bound $|x+4|$ by a constant instead, using $\delta\le1$.

## Proving a limit does not exist (Video 2.9)

Build the definition by negating step by step:

$$\lim_{x\to\infty}h(x)=L\iff\forall\varepsilon>0\ \exists M\ \forall x,\ \big(x>M\Rightarrow|h(x)-L|<\varepsilon\big)$$

$$\lim_{x\to\infty}h(x)\ne L\iff\exists\varepsilon>0\ \forall M\ \exists x,\ \big(x>M\ \wedge\ |h(x)-L|\ge\varepsilon\big)$$

"The limit DNE" means "$\ne L$ for **every** $L$":

$$\forall L\in\mathbb R\ \exists\varepsilon>0\ \forall M\ \exists x:\ x>M\ \wedge\ |h(x)-L|\ge\varepsilon$$

**Proof structure:** fix $L$ $\to$ choose $\varepsilon$ (may depend on $L$) $\to$ fix $M$ $\to$ choose $x$ (may depend on $L,M$) $\to$ verify both inequalities.

**Example: $\lim_{x\to\infty}\cos(\pi x)$ DNE.** At integers, $\cos(\pi x)=1$ for even $x$ and $-1$ for odd $x$.

*Proof.* Let $L\in\mathbb R$. Take $\varepsilon=\frac12$. The open interval $(L-\frac12,L+\frac12)$ has length $1<2$, so it can't contain both $1$ and $-1$. Let $M\in\mathbb R$.
- If $1\notin(L-\frac12,L+\frac12)$: pick an **even** integer $x>M$. Then $h(x)=1$, so $|h(x)-L|\ge\frac12$.
- Otherwise $-1\notin(L-\frac12,L+\frac12)$: pick an **odd** integer $x>M$. Then $h(x)=-1$, so $|h(x)-L|\ge\frac12$.

Either way, $x>M$ and $|h(x)-L|\ge\varepsilon$. $\blacksquare$

> [!tip] Choosing $\varepsilon$
> $\varepsilon$ must be small enough that the band around $L$ can't capture every value the function keeps returning to. Here anything $\le1$ works.


---

# Formula Sheet: Epsilon-Delta Definitions of Every Limit

## $x\to a$ (two-sided)

$$\lim_{x\to a}f(x)=L\iff\forall\varepsilon>0,\ \exists\delta>0,\ \forall x,\ 0<|x-a|<\delta\Rightarrow|f(x)-L|<\varepsilon$$

$$\lim_{x\to a}f(x)=\infty\iff\forall M,\ \exists\delta>0,\ \forall x,\ 0<|x-a|<\delta\Rightarrow f(x)>M$$

$$\lim_{x\to a}f(x)=-\infty\iff\forall M,\ \exists\delta>0,\ \forall x,\ 0<|x-a|<\delta\Rightarrow f(x)<M$$

## $x\to a^+$ (right-hand)

$$\lim_{x\to a^+}f(x)=L\iff\forall\varepsilon>0,\ \exists\delta>0,\ \forall x,\ a<x<a+\delta\Rightarrow|f(x)-L|<\varepsilon$$

$$\lim_{x\to a^+}f(x)=\infty\iff\forall M,\ \exists\delta>0,\ \forall x,\ a<x<a+\delta\Rightarrow f(x)>M$$

$$\lim_{x\to a^+}f(x)=-\infty\iff\forall M,\ \exists\delta>0,\ \forall x,\ a<x<a+\delta\Rightarrow f(x)<M$$

## $x\to a^-$ (left-hand)

$$\lim_{x\to a^-}f(x)=L\iff\forall\varepsilon>0,\ \exists\delta>0,\ \forall x,\ a-\delta<x<a\Rightarrow|f(x)-L|<\varepsilon$$

$$\lim_{x\to a^-}f(x)=\infty\iff\forall M,\ \exists\delta>0,\ \forall x,\ a-\delta<x<a\Rightarrow f(x)>M$$

$$\lim_{x\to a^-}f(x)=-\infty\iff\forall M,\ \exists\delta>0,\ \forall x,\ a-\delta<x<a\Rightarrow f(x)<M$$

## $x\to\infty$

$$\lim_{x\to\infty}f(x)=L\iff\forall\varepsilon>0,\ \exists N,\ \forall x,\ x>N\Rightarrow|f(x)-L|<\varepsilon$$

$$\lim_{x\to\infty}f(x)=\infty\iff\forall M,\ \exists N,\ \forall x,\ x>N\Rightarrow f(x)>M$$

$$\lim_{x\to\infty}f(x)=-\infty\iff\forall M,\ \exists N,\ \forall x,\ x>N\Rightarrow f(x)<M$$

## $x\to-\infty$

$$\lim_{x\to-\infty}f(x)=L\iff\forall\varepsilon>0,\ \exists N,\ \forall x,\ x<N\Rightarrow|f(x)-L|<\varepsilon$$

$$\lim_{x\to-\infty}f(x)=\infty\iff\forall M,\ \exists N,\ \forall x,\ x<N\Rightarrow f(x)>M$$

$$\lim_{x\to-\infty}f(x)=-\infty\iff\forall M,\ \exists N,\ \forall x,\ x<N\Rightarrow f(x)<M$$
