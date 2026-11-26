---
course: MAT102
type: topic-notes
topics:
  - linear Diophantine equations
  - Bezout's identity
  - general solution
  - coprime
tags:
  - MAT102
  - number-theory
  - diophantine
added: 2026-10-29
prereq:
  - "[[Divisibility and Euclid's Algorithm]]"
next: "[[Primes and the Fundamental Theorem of Arithmetic]]"
week: W08
---
# Linear Diophantine Equations


See also: [[Divisibility and Euclid's Algorithm]] (Euclid + Bézout) · [[Primes and the Fundamental Theorem of Arithmetic]]

> [!summary]
> $ax + by = c$ has integer solutions **iff** $\gcd(a,b) \mid c$. Find one solution by running Euclid backwards (Bézout) and scaling. Then every solution is
> $$x = x_0 + n\frac{b}{d},\qquad y = y_0 - n\frac{a}{d},\qquad n \in \mathbb{Z},\quad d = \gcd(a,b).$$

## 1. Key lemma (Proposition 1)

$$a \mid bc \ \text{ and } \ \gcd(a,b) = 1 \ \Longrightarrow\ a \mid c.$$

*Proof.* By Bézout, $1 = am + bn$ for some $m,n \in \mathbb{Z}$. Multiply by $c$:

$$c = a(cm) + (bc)n.$$

$a$ divides $a(cm)$, and $a \mid bc$, so $a$ divides the sum (divisibility property (ii)). Hence $a \mid c$. $\blacksquare$

> [!warning] The coprime hypothesis is essential
> $4 \mid 2 \cdot 10$ but $4 \nmid 10$. Here $\gcd(4,2) = 2 \ne 1$.

## 2. Definition

Given $a, b, d \in \mathbb{Z}$, a **linear Diophantine equation** (in two variables) is

$$ax + by = d.$$

Rational solutions are easy; we want **integer** solutions.

## 3. When does a solution exist? (Theorem 4)

$$ax + by = c \text{ has an integer solution} \iff \gcd(a,b) \mid c.$$

*Proof.* Let $d = \gcd(a,b)$.

- **(⇒)** If $ax_0 + by_0 = c$: $d \mid a$ and $d \mid b$, so $d \mid ax_0 + by_0 = c$.
- **(⇐)** If $c = dk$: Bézout gives $am + bn = d$. Multiply by $k$: $a(mk) + b(nk) = c$. $\blacksquare$

## 4. Finding one solution: recipe

1. Run Euclid on $a, b$ to get $d = \gcd(a,b)$.
2. Check $d \mid c$. If not, **no solutions**; stop.
3. Back-substitute to write $d = am + bn$.
4. Multiply through by $c/d$.

### Example: $504x + 1155y = 42$

$$
\begin{aligned}
1155 &= 504 \cdot 2 + 147\\
504 &= 147 \cdot 3 + 63\\
147 &= 63 \cdot 2 + 21\\
63 &= 21 \cdot 3 + 0
\end{aligned}
$$

So $d = 21$, and $21 \mid 42$ ✓. Backwards:

$$
\begin{aligned}
21 &= 147 - 2 \cdot 63\\
&= 147 - 2(504 - 3 \cdot 147) = 7 \cdot 147 - 2 \cdot 504\\
&= 7(1155 - 2 \cdot 504) - 2 \cdot 504 = 7 \cdot 1155 - 16 \cdot 504
\end{aligned}
$$

So $504(-16) + 1155(7) = 21$. Multiply by $42/21 = 2$:

$$504(-32) + 1155(14) = 42.$$

**Check:** $1155 \cdot 14 = 16170$, $504 \cdot 32 = 16128$, $16170 - 16128 = 42$ ✓

## 5. All solutions (Proposition 8)

If $ax_0 + by_0 = c$ and $d = \gcd(a,b) \ne 0$, the **general solution** is

$$x = x_0 + n\frac{b}{d}, \qquad y = y_0 - n\frac{a}{d}, \qquad n \in \mathbb{Z}.$$

The minus sign can go on either variable, as long as the two signs are **opposite**.

*Proof.*

**Every solution has this form.** Subtract $ax_0 + by_0 = c$ from $ax + by = c$ and divide by $d$:

$$\frac{a}{d}(x - x_0) = -\frac{b}{d}(y - y_0).$$

Since $\gcd\!\left(\frac{a}{d}, \frac{b}{d}\right) = 1$ and $\frac{b}{d}$ divides the left side, Proposition 1 gives $\frac{b}{d} \mid (x - x_0)$, so $x - x_0 = n\frac{b}{d}$ for some $n$. Substituting and cancelling $\frac{b}{d}$ (assuming $b \ne 0$) gives $y - y_0 = -n\frac{a}{d}$.

**Every such pair works.**

$$a\left(x_0 + n\tfrac{b}{d}\right) + b\left(y_0 - n\tfrac{a}{d}\right) = (ax_0 + by_0) + \tfrac{nab}{d} - \tfrac{nab}{d} = c. \qquad \blacksquare$$

> [!tip] Why $b/d$ and not $b$?
> Stepping $x$ by $b$ would also work, but it skips solutions. $\frac{b}{d}$ is the **smallest** step that keeps $ax + by$ unchanged.

### Example continued

$d = 21$, $\frac{1155}{21} = 55$, $\frac{504}{21} = 24$:

$$x = -32 + 55n, \qquad y = 14 - 24n.$$

**Check $n = 1$:** $(23, -10)$: $504 \cdot 23 - 1155 \cdot 10 = 11592 - 11550 = 42$ ✓

### Shortcut: divide by the gcd first

$504x + 1155y = 42 \;\xrightarrow{\div 21}\; 24x + 55y = 2$, now with $\gcd(24,55) = 1$. Solve $24x + 55y = 1$ (gives $24(-16) + 55(7) = 1$), multiply by $2$: $(-32, 14)$ again, and the general solution reads off directly as $x = -32 + 55n$, $y = 14 - 24n$.

## 6. Restricted solutions (non-negative / positive)

**Recipe:** plug the general solution into the constraints, solve for $n$, list the integers in range.

### Example: non-negative solutions of $504x + 1155y = 42$

$$-32 + 55n \ge 0 \Rightarrow n \ge \tfrac{32}{55} \approx 0.5818, \qquad 14 - 24n \ge 0 \Rightarrow n \le \tfrac{14}{24} \approx 0.5833.$$

No integer lies in $[0.5818,\, 0.5833]$, so there are **no non-negative solutions**.

> [!tip] $\ge$ vs $>$
> Use $\ge 0$ for non-negative and $>0$ for positive. It matters whenever an endpoint is an integer.

## Quick self-check

1. Why does $6x + 9y = 4$ have no integer solutions?

> [!success]- Solution
> $\gcd(6, 9) = 3$ and $3 \nmid 4$ (Theorem 4). Directly: $6x + 9y = 3(2x + 3y)$ is always a multiple of $3$, and $4$ isn't.

2. In the general solution, why must the signs on the $n$-terms be opposite?

> [!success]- Solution
> So the extra terms cancel:
> $$a\cdot n\tfrac{b}{d} + b \cdot\left(-n\tfrac{a}{d}\right) = \tfrac{nab}{d} - \tfrac{nab}{d} = 0.$$
> With equal signs they would add to $\frac{2nab}{d} \ne 0$ (for $n \ne 0$, $a, b \ne 0$), changing the right-hand side away from $c$.

3. What does $\gcd\!\left(\frac{a}{d}, \frac{b}{d}\right) = 1$ get used for in the proof of Proposition 8?

> [!success]- Solution
> To apply **Proposition 1**: $\frac{b}{d}$ divides $\frac{a}{d}(x - x_0)$ and is coprime to $\frac{a}{d}$, so $\frac{b}{d} \mid (x - x_0)$. That's what gives $x - x_0 = n\frac{b}{d}$.

4. How do you find all **positive** solutions once you have the general solution?

> [!success]- Solution
> Set $x > 0$ and $y > 0$ (strict, since positive), solve each inequality for $n$, and list every integer $n$ in both ranges. Plug those $n$ back in. If no integer fits, there are no positive solutions.


---

## Lecture activities (Week 8 polls)

**$38x+34y = 200$, particular solution $(-800, 900)$.** $\gcd(38,34) = 2$, $\frac{34}{2} = 17$, $\frac{38}{2} = 19$. Each variable steps by the **other** coefficient divided by $d$:
$$x = -800 + 17n,\qquad y = 900 - 19n,\qquad n\in\mathbb{Z}.$$
**Check:** $38(17) - 34(19) = 646 - 646 = 0$ ✓ (so the $n$-terms cancel).

**Positive solutions?**
$$-800+17n>0 \Rightarrow n>\tfrac{800}{17}\approx 47.06 \Rightarrow n\ge48,\qquad 900-19n>0\Rightarrow n<\tfrac{900}{19}\approx47.37\Rightarrow n\le47.$$
No integer satisfies both, so there are **no positive solutions**. (At $n=47$: $x=-1$; at $n=48$: $y = -12$.)
