---
course: MAT137
topic: differentiability and continuity
date: 2026-10-16
tags:
  - MAT137
  - derivatives
  - continuity
  - proofs
prereq:
  - "[[The Derivative - Definition and Meaning]]"
  - "[[Continuity and Discontinuities]]"
  - "[[Limit Laws and Existence]]"
next: "[[Product and Quotient Rules]]"
week: W06
---

# Differentiability Implies Continuity


Related: [[Continuity and Discontinuities]] · [[Tangent Lines and the Derivative]] · [[Limit Laws and Existence]]

## Theorem

If $f$ is differentiable at $c$, then $f$ is continuous at $c$.

**Goal:** show

$$\lim_{x\to c} f(x) = f(c)$$

which is equivalent to showing

$$\lim_{x\to c}\big[f(x) - f(c)\big] = 0$$


## Summary diagram (lecture, Nov 19)

$$
\begin{array}{ccc}
f\text{ differentiable at }c & \Longrightarrow & f\text{ continuous at }c\\[6pt]
\Big\Updownarrow & \overset{\textbf{False!}}{\not\Longleftarrow} & \Big\Downarrow\quad\overset{\textbf{False!}}{\not\Big\Uparrow}\\[6pt]
f'(c)\text{ exists} & & f(c)\text{ exists}
\end{array}
$$

- **Differentiable at $c$ ⟺ $f'(c)$ exists.** This is just the definition: the limit $\displaystyle\lim_{x\to c}\frac{f(x)-f(c)}{x-c}$ exists.
- **Differentiable ⟹ continuous** (the theorem on this page). The converse is **false**: $\lvert x\rvert$ at $0$ is continuous but has a corner.
- **Continuous at $c$ ⟹ $f(c)$ exists**, since $\displaystyle\lim_{x\to c}f(x)=f(c)$ needs $f(c)$ to be defined. The converse is **false**: a jump function, $f(x)=1$ for $x\ge0$ and $f(x)=-1$ for $x<0$, is defined at $0$ but not continuous there.

The full chart with every converse is in [[137 Course Definitions and Proof Structures#Flowchart: limits, continuity, derivatives]].


## Proof, step by step

**Step 1: multiply and divide by $(x-c)$.** For $x\neq c$:

$$f(x) - f(c) = \frac{f(x)-f(c)}{x-c}\cdot (x-c)$$

This is allowed because a limit $x\to c$ only uses $x\neq c$, so we never divide by $0$. The point is to make the difference quotient (whose limit is $f'(c)$) appear.

**Step 2: product limit law.**

$$\lim_{x\to c}\left[\frac{f(x)-f(c)}{x-c}\cdot (x-c)\right] = \left[\lim_{x\to c}\frac{f(x)-f(c)}{x-c}\right]\left[\lim_{x\to c}(x-c)\right]$$

The product law requires **both limits to exist**:

- The first exists because $f$ is differentiable at $c$; it equals $f'(c)$, a finite number.
- The second exists and equals $0$.

**Step 3: evaluate.**

$$= f'(c)\cdot 0 = 0$$

This needs $f'(c)$ to be **finite**; "$\infty\cdot 0$" would tell us nothing.

**Step 4: conclude.** Since $f(c)$ is a constant, the sum law gives

$$\lim_{x\to c} f(x) = \lim_{x\to c}\big[f(x)-f(c)\big] + f(c) = 0 + f(c) = f(c)$$

so $f$ is continuous at $c$. ∎

> [!note] Intuition
> The difference quotient stays near the finite number $f'(c)$, so $f(x)-f(c)$ shrinks at about the same rate as $x-c\to0$. The graph cannot jump or break at $c$.

## The converse is false

Continuous does **not** imply differentiable. $f(x)=|x|$ is continuous at $0$, but

$$\lim_{x\to0^+}\frac{|x|}{x} = 1, \qquad \lim_{x\to0^-}\frac{|x|}{x} = -1$$

so $f'(0)$ does not exist (corner).

## Contrapositive (useful test)

If $f$ is **not continuous** at $c$, then $f$ is **not differentiable** at $c$.

---

## Quick intuition (Video 3.5)

With $x\to c$ in $\frac{f(x)-f(c)}{x-c}$:
- If $f$ is **not** continuous at $c$, it's like "nonzero over $0$". The limit can't exist, so there's no derivative.
- If $f$ **is** continuous, you get $\frac00$, so the derivative may or may not exist.

## Continuous but not differentiable (Video 3.9)

$f$ continuous at $a$ but $f'(a)$ DNE. Two named cases:
- **Corner:** the one-sided limits of the difference quotient differ, e.g. $|x|$ at $0$ (slopes $1$ and $-1$, above).
- **Vertical tangent line:** the difference quotient goes to $\pm\infty$. Example, $g(x)=x^{1/3}$ at $0$:
$$\lim_{x\to0}\frac{x^{1/3}-0}{x-0}=\lim_{x\to0}\frac1{x^{2/3}}=+\infty$$

Shortcut: showing $\lim_{x\to a}g'(x)=\pm\infty$ (here $g'(x)=\frac1{3x^{2/3}}$) is slightly **stronger**, so it also proves a vertical tangent.

Any other way the limit fails also makes $f$ non-differentiable.

> [!warning] Vertical tangent $\ne$ vertical asymptote
> - **Asymptote:** $f$ itself $\to\pm\infty$, and $f$ is undefined there (e.g. $\frac1x$ at $0$).
> - **Vertical tangent:** $f$ is defined and continuous there. Only $f'\to\pm\infty$ (e.g. $x^{1/3}$ at $0$).


---

## Reading non-differentiability off a graph (lecture, Nov 2026)

On a picture, "differentiable" roughly means **smooth**. Being smooth is not enough, though. Ways a graph can fail at a point:
- **Corner / pointy:** the left and right slopes disagree, so the two one-sided limits of the difference quotient differ.
- **Vertical tangent:** the curve can look smooth, but the slope is "rise over $0$ run", so the limit is $\pm\infty$ and doesn't exist.
- **Discontinuity** (contrapositive above): e.g. a removable discontinuity.

**Removable discontinuity example.** Say $\lim_{x\to4}f(x)=3$, but the hole is filled at $f(4)=7$. Then

$$f'(4)=\lim_{x\to4}\frac{f(x)-7}{x-4}$$

The numerator tends to $3-7=-4$ and the denominator to $0$, so the quotient blows up and $f'(4)$ does not exist.

## True / false: $f:\mathbb R\to\mathbb R$ differentiable everywhere (lecture, Nov 2026)

For every $a\in\mathbb R$:

| Statement | Verdict | Why |
|---|---|---|
| $f(a)$ is defined | True | $f(a)$ appears in the definition $\lim_{x\to a}\frac{f(x)-f(a)}{x-a}$ |
| $\lim_{x\to a}f(x)$ exists | True | It follows from continuity: the limit equals $f(a)$ |
| $f$ is continuous at $a$ | True | This is the theorem above. It is stronger than the previous line |
| $\lim_{x\to a}\frac{f(x)-f(a)}{x-a}$ exists | True | This is the definition of differentiable |
| $f'$ is continuous at $a$ | **False** | Counterexample below |

> [!warning] Rejected counterexample: $\sqrt[3]{x}$
> $f(x)=x^{1/3}$ has $f'(x)=\frac{1}{3x^{2/3}}$, which is undefined at $0$. So $f$ is **not differentiable** at $0$, and it can't be a counterexample. The hypothesis requires $f$ differentiable everywhere.

### Counterexample: differentiable, but $f'$ is not continuous

$$f(x)=\begin{cases}x^2\sin\frac1x & x\ne0\\[4pt] 0 & x=0\end{cases}$$

**$f'(0)$ exists.** From the definition:

$$f'(0)=\lim_{x\to0}\frac{x^2\sin\frac1x-0}{x-0}=\lim_{x\to0}x\sin\frac1x=0$$

That last limit holds by the [[Squeeze Theorem]], since

$$-|x|\le x\sin\tfrac1x\le|x|$$

**$f'$ is not continuous at $0$.** For $x\ne0$, the product and chain rules give

$$f'(x)=2x\sin\frac1x-\cos\frac1x$$

As $x\to0$, $2x\sin\frac1x\to0$ but $\cos\frac1x$ oscillates between $-1$ and $1$. So $\lim_{x\to0}f'(x)$ does not exist, and $f'$ is not continuous at $0$.

The prof will go through this in detail next week.


## True / false: continuity vs. differentiability at a point $c$

Let $f$ have domain $\mathbb R$ and $c\in\mathbb R$.

| Statement | Verdict | Why / counterexample |
|---|---|---|
| $f$ continuous at $c$ $\Rightarrow$ $f$ differentiable at $c$ | False | $\lvert x\rvert$ at $0$ (corner) |
| $f$ differentiable at $c$ $\Rightarrow$ $f$ continuous at $c$ | **True** | The theorem above |
| $f$ differentiable at $c$ $\Rightarrow$ $f'$ continuous at $c$ | False | $x^2\sin\frac1x$ (with $f(0)=0$) at $0$, see above |
| $f'$ continuous at $c$ $\Rightarrow$ $f$ differentiable at $c$ | **True** | For $f'$ to be continuous at $c$, $f'(c)$ has to exist |
| $f$ differentiable at $c$ $\Rightarrow$ $f$ continuous at **and near** $c$ | False | Counterexample below |
| $f$ continuous at and near $c$ $\Rightarrow$ $f$ differentiable at $c$ | False | $\lvert x\rvert$ at $0$ is continuous everywhere |

### Differentiable at one point, continuous nowhere else

$$f(x)=\begin{cases}x^2 & x\in\mathbb Q\\[4pt] 0 & x\notin\mathbb Q\end{cases}$$

**Differentiable at $0$.** We have $f(0)=0$, and for $x\ne0$ the quotient is either $x$ or $0$, so

$$\left|\frac{f(x)-f(0)}{x-0}\right|\le|x|$$

By the [[Squeeze Theorem]],

$$f'(0)=\lim_{x\to0}\frac{f(x)}{x}=0$$

**Not continuous at any $a\ne0$.** Near $a$ there are rationals, where $f\approx a^2\ne0$, and irrationals, where $f=0$. So $\lim_{x\to a}f(x)$ does not exist.

> [!important] Takeaway
> Differentiability at $c$ is a statement about the point $c$ **only**. It gives continuity at $c$, but says nothing about points near $c$.
