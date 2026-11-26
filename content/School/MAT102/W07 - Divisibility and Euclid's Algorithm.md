---
course: MAT102
type: topic-notes
topics:
  - divisibility
  - gcd
  - Euclidean algorithm
  - Bezout's identity
  - linear combination
  - primes
tags:
  - MAT102
  - number-theory
  - gcd
added: 2026-10-22
prereq:
  - "[[W01 - Reading Mathematics|Reading Mathematics]]"
  - "[[W03 - Quantifiers and Implications|Quantifiers and Implications]]"
next: "[[W08 - Linear Diophantine Equations|Linear Diophantine Equations]]"
week: W07
---

# Divisibility and Euclid's Algorithm


See also: [[W01 - Reading Mathematics|Reading Mathematics]] (definition of divides) · [[W04 - Relations|Relations]] (divides as a partial order) · [[W00 - 102 Course Definitions and Proof Structures|102 Course Definitions and Proof Structures]]

> [!summary]
> Euclid's algorithm finds $\gcd(a,b)$ by repeated division with remainder. Running it **backwards** writes the gcd as an integer linear combination of $a$ and $b$ (Bézout's identity). Also: true/false statements about divisibility (with counterexamples for the false ones).

## 1. Divisibility

$$a \mid b \iff \exists k \in \mathbb{Z},\ b = ka.$$

"$a$ divides $b$", "$b$ is a multiple of $a$" and "$b/a$ is an integer" (for $a \ne 0$) mean the same thing. $a$ is the **divisor**, $b$ is the number being divided: $3 \mid 6$.

## 2. Euclid's algorithm

Write $a = bq_1 + r_1$ with $0 \le r_1 < b$. Then shift everything one column left and repeat:

$$
\begin{aligned}
a &= b\,q_1 + r_1\\
b &= r_1\,q_2 + r_2\\
r_1 &= r_2\,q_3 + r_3\\
&\ \,\vdots
\end{aligned}
$$

Stop when a remainder is $0$. The **last non-zero remainder** is $\gcd(a,b)$. The algorithm always reaches $0$ (remainders strictly decrease).

> [!tip] Stay organized
> Each step: divisor moves to the left column, remainder moves to the divisor column. Most errors come from copying the wrong number when shifting.

### Example 1: $\gcd(56, 15)$

$$
\begin{aligned}
56 &= 15 \cdot 3 + 11\\
15 &= 11 \cdot 1 + 4\\
11 &= 4 \cdot 2 + 3\\
4 &= 3 \cdot 1 + 1\\
3 &= 1 \cdot 3 + 0
\end{aligned}
$$

Last non-zero remainder: $\gcd(56,15) = 1$.

Sanity check: $15$'s divisors are $1, 3, 5, 15$, and none except $1$ divides $56$.

## 3. Bézout's identity (running it backwards)

$\gcd(a,b)$ can always be written as

$$\gcd(a,b) = ax + by \quad \text{for some } x, y \in \mathbb{Z}$$

(one of $x, y$ is usually negative).

**Method.** Solve each line for its remainder, start from the second-to-last line, and substitute upward, **simplifying after every substitution** so only the two most recent remainders appear.

### Example 1 continued

Remainders solved: $1 = 4 - 3$, $\ 3 = 11 - 4\cdot 2$, $\ 4 = 15 - 11$, $\ 11 = 56 - 15 \cdot 3$.

$$
\begin{aligned}
1 &= 4 - 3\\
&= 4 - (11 - 4\cdot 2) = 3\cdot 4 - 11\\
&= 3(15 - 11) - 11 = 3\cdot 15 - 4\cdot 11\\
&= 3\cdot 15 - 4(56 - 3\cdot 15) = 15\cdot 15 - 4\cdot 56
\end{aligned}
$$

So $1 = 56\cdot(-4) + 15\cdot 15$, i.e. $x = -4,\ y = 15$.

**Check:** $15 \cdot 15 = 225$, $4 \cdot 56 = 224$, and $225 - 224 = 1$. ✓

### Example 2 (in-class exercise): $\gcd(2079, 825)$

$$
\begin{aligned}
2079 &= 825 \cdot 2 + 429\\
825 &= 429 \cdot 1 + 396\\
429 &= 396 \cdot 1 + 33\\
396 &= 33 \cdot 12 + 0
\end{aligned}
$$

So $\gcd(2079, 825) = 33$. Backwards:

$$
\begin{aligned}
33 &= 429 - 396\\
&= 429 - (825 - 429) = 2\cdot 429 - 825\\
&= 2(2079 - 2\cdot 825) - 825 = 2\cdot 2079 - 5\cdot 825
\end{aligned}
$$

**Check:** $2\cdot 2079 = 4158$, $5 \cdot 825 = 4125$, $4158 - 4125 = 33$. ✓

## 4. True / false: divisibility facts

| Statement | Verdict | Why |
|---|---|---|
| $a, b \ge 0$, $a \mid b$ and $b \mid a$ $\Rightarrow a = b$ | **True** | See proof below. Fails on $\mathbb{Z}$: $3 \mid -3$ and $-3 \mid 3$ |
| $a \mid bc \Rightarrow a \mid b$ or $a \mid c$ | **False** | $4 \mid 2\cdot 10 = 20$, but $4 \nmid 2$ and $4 \nmid 10$ |
| $a, b > 0$, $a \mid b \Rightarrow a \le b$ | **True** | $b = ka$ with $k \ge 1$, so $b \ge a$. Needs positivity: $3 \mid -3$ |
| $a$ prime, $b$ not a multiple of $a$ $\Rightarrow a \nmid b$ | **True** | By definition: "not a multiple" *is* "doesn't divide". "Prime" is a red herring |

**Proof of the first row.** $b = ka$ and $a = lb$ with $k, l \in \mathbb{Z}$. If $a = 0$ then $b = k\cdot 0 = 0 = a$. Otherwise $a = lka$, so $lk = 1$. Since $a, b \ge 0$ and $a \ne 0$, $k, l \ge 0$, so $k = l = 1$ and $a = b$. $\blacksquare$

> [!note] Fixing the second row
> If $a = p$ is **prime**, then $p \mid bc \Rightarrow p \mid b$ or $p \mid c$ (Euclid's lemma). Example: $5 \mid 3 \cdot 10$ and $5 \mid 10$.

> [!note] Divisors of $0$
> Every integer divides $0$ ($0 = 0 \cdot a$), including $0 \mid 0$. But $0 \mid b$ is false for every $b \ne 0$.

## Quick self-check

1. Run Euclid on $(84, 30)$ and write the gcd as $84x + 30y$.

> [!success]- Solution
> $$
> \begin{aligned}
> 84 &= 30 \cdot 2 + 24\\
> 30 &= 24 \cdot 1 + 6\\
> 24 &= 6 \cdot 4 + 0
> \end{aligned}
> $$
> So $\gcd(84,30) = 6$. Backwards:
> $$6 = 30 - 24 = 30 - (84 - 2\cdot 30) = 3\cdot 30 - 84.$$
> So $6 = 84\cdot(-1) + 30\cdot 3$, i.e. $x = -1,\ y = 3$.
> **Check:** $90 - 84 = 6$ ✓

2. Why does the algorithm always terminate?

> [!success]- Solution
> Each remainder is strictly less than the previous divisor, so $b > r_1 > r_2 > \cdots \ge 0$. A strictly decreasing sequence of non-negative integers can't go on forever (Well-Ordering Principle, §6), so some remainder must be $0$.

3. Give a counterexample to "$a \mid b$ and $b \mid a \Rightarrow a = b$" over $\mathbb{Z}$.

> [!success]- Solution
> $a = 3,\ b = -3$: $-3 = (-1)\cdot 3$ so $3 \mid -3$, and $3 = (-1)\cdot(-3)$ so $-3 \mid 3$, but $3 \ne -3$. Over $\mathbb{Z}$ the correct conclusion is $a = \pm b$ (Proposition 3 (iv)).

4. Which hypothesis makes "$a \mid bc \Rightarrow a \mid b$ or $a \mid c$" true?

> [!success]- Solution
> $a$ **prime** (Euclid's lemma). Without it, $4 \mid 2 \cdot 10$ but $4 \nmid 2$ and $4 \nmid 10$.


---

## 5. Basic divisibility properties (Proposition 3)

For $a, b, c \in \mathbb{Z}$:

1. $a \mid b$ and $b \mid c \Rightarrow a \mid c$.
2. $a \mid b$ and $a \mid c \Rightarrow a \mid (mb + nc)$ for all $m, n \in \mathbb{Z}$.
3. $a \mid b$ and $a \mid (b + c) \Rightarrow a \mid c$.
4. $a \mid b$ and $b \mid a \Rightarrow a = \pm b$ (the $\mathbb{Z}$ version of row 1 in §4).
5. $b \ne 0$ and $a \mid b \Rightarrow |a| \le |b|$.

*Proof of (i).* $b = ma$, $c = nb$, so $c = (nm)a$. $\blacksquare$

*Proof of (ii).* $b = k_1 a$, $c = k_2 a$, so $mb + nc = (mk_1 + nk_2)a$. $\blacksquare$

(ii) is the workhorse: "divides both $\Rightarrow$ divides any integer combination".

## 6. Well-Ordering Principle (axiom)

> Every **non-empty** subset of $\mathbb{Z}^+$ has a least element.

Also true for $\mathbb{N}^0$; **false** for $\mathbb{Z}$ ($\mathbb{Z}$ itself has no least element). Used to prove the Division Algorithm, Bézout, and the [[W08 - Primes and the Fundamental Theorem of Arithmetic|FTA]].

## 7. Division Algorithm (Theorem 5)

If $a, b \in \mathbb{Z}$ with $b > 0$, there are **unique** $q, r$ with

$$a = qb + r, \qquad 0 \le r < b.$$

*Proof idea.*
- **Existence.** $\hat S = \{a + kb : k \in \mathbb{Z}\} \cap \mathbb{N}^0$ is non-empty (if $a<0$, take $k=-a$: $a - ab = (-a)(b-1) \ge 0$). Let $r = a - qb$ be its least element (WOP). If $r \ge b$, then $r - b \in \hat S$ is smaller, contradiction. So $0 \le r < b$.
- **Uniqueness.** If also $a = \tilde q b + \tilde r$ with $r > \tilde r$, then $b \mid (r - \tilde r)$ with $0 < r - \tilde r < b$, contradicting property (v). So $r = \tilde r$, then $q = \tilde q$.

### Using it: case analysis by remainder

**Example.** $3 \mid (n^3 - n)$ for all $n \in \mathbb{Z}$. Every $n$ is $3q$, $3q+1$ or $3q+2$:

$$
\begin{aligned}
n = 3q:&\quad n^3 - n = 3(9q^3 - q)\\
n = 3q+1:&\quad n^3 - n = 3(9q^3 + 9q^2 + 2q)\\
n = 3q+2:&\quad n^3 - n = 3(9q^3 + 18q^2 + 11q + 2)
\end{aligned}
$$

All three are multiples of $3$. $\blacksquare$

**Faster version.** $n^3-n=(n-1)n(n+1)$ is a product of three consecutive integers, so one of them is divisible by $3$ and at least one by $2$. Hence $6\mid n^3-n$.

**Example.** If $n$ is odd, then $8\mid n^2-1$. Write $n=2m+1$:
$$n^2-1=4m^2+4m=4m(m+1),$$
and $m(m+1)$ is a product of consecutive integers, so it is even. Hence $8\mid n^2-1$. $\blacksquare$

## 8. Greatest common divisor

$$\gcd(a,b) = \max\{d \in \mathbb{Z} : d \mid a \text{ and } d \mid b\}.$$

- Convention: $\gcd(0,0) = 0$.
- $\gcd(a, 0) = |a|$ (everything divides $0$).
- $a, b$ are **coprime** (relatively prime) if $\gcd(a,b) = 1$. E.g. $\gcd(6, 25) = 1$ though neither is prime.

### Why Euclid works (Proposition 10)

$$a = bq + r \ \Longrightarrow\ \gcd(a,b) = \gcd(b,r).$$

Any $q, r$ work here, not just quotient and remainder.

*Proof.* By property (ii), any common divisor of $a, b$ divides $r = a - qb$, and any common divisor of $b, r$ divides $a = bq + r$. Same common divisors, so same greatest one. $\blacksquare$

**Euclidean Algorithm (Theorem 13).** The remainders strictly decrease, $b > r_1 > r_2 > \cdots \ge 0$, so the process stops, and

$$\gcd(a,b) = \gcd(b, r_1) = \cdots = \gcd(r_n, 0) = r_n.$$

## 9. Bézout's identity: proof and corollaries

**Theorem 14.** For $a, b \in \mathbb{Z}$ there exist $m, n$ with $am + bn = \gcd(a,b)$.

*Proof (a, b not both 0).* Let $S = \{ax + by : x, y \in \mathbb{Z}\}$. It contains a positive element, so by WOP let $d = am + bn$ be the **smallest positive** element. Divide: $a = dq + r$, $0 \le r < d$. Then $r = a(1 - mq) + b(-nq) \in S$ and $r < d$, so $r = 0$ and $d \mid a$. Same for $b$. Any common divisor $c$ of $a, b$ divides $am + bn = d$, so $c \le d$. Hence $d = \gcd(a,b)$. $\blacksquare$

> [!tip] Takeaway
> $\gcd(a,b)$ is the **smallest positive integer combination** of $a$ and $b$. This is exactly why $ax + by = c$ is solvable iff $\gcd(a,b) \mid c$ ([[W08 - Linear Diophantine Equations|Linear Diophantine Equations]]).

- **Corollary 15.** Every common divisor of $a$ and $b$ divides $\gcd(a,b)$.
- **Corollary 16.** If $d > 0$ is a common divisor **and** $d = am + bn$ for some $m, n$, then $d = \gcd(a,b)$.
- **Fact.** If $d = \gcd(a,b) \neq 0$, then $\gcd\!\left(\frac{a}{d}, \frac{b}{d}\right) = 1$. *(Divide $d = am + bn$ by $d$: $1 = \frac{a}{d}m + \frac{b}{d}n$, then Corollary 16.)*

### One more worked example

$\gcd(616, 427)$: $616 = 427\cdot1 + 189$, $427 = 189\cdot2 + 49$, $189 = 49\cdot3 + 42$, $49 = 42\cdot1 + 7$, $42 = 7\cdot 6$. So $\gcd = 7$ and back-substituting gives

$$7 = 427(13) + 616(-9).$$

**Check:** $5551 - 5544 = 7$ ✓


---

**$\gcd(1053,481)$:**
$$
\begin{aligned}
1053&=2\cdot481+91\\
481&=5\cdot91+26\\
91&=3\cdot26+13\\
26&=2\cdot13+0
\end{aligned}
$$
So $\gcd=13$. Backwards:
$$13=91-3\cdot26=91-3(481-5\cdot91)=16\cdot91-3\cdot481=16(1053-2\cdot481)-3\cdot481=16\cdot1053-35\cdot481.$$
**Check:** $16848-16835=13$ ✓ (used again in [[W08 - Linear Diophantine Equations|Linear Diophantine Equations]]).

## Lecture activities (Week 7)

### Bézout coefficients aren't unique

The poll asked which pair solves $2079m+825n = 33$ **by reversing Euclid**. That's $(m,n) = (2,-5)$ (Example 2 above). But the other options $(-23,58)$, $(52,-131)$, $(27,-68)$, $(-48,121)$ **also satisfy the equation**. By [[W08 - Linear Diophantine Equations|Linear Diophantine Equations]], all solutions are
$$m = 2 + 25k,\qquad n = -5 - 63k\qquad\left(\tfrac{825}{33}=25,\ \tfrac{2079}{33}=63\right).$$
E.g. $k=-1$ gives $(-23,58)$: $2079(-23)+825(58) = -47817+47850 = 33$ ✓. Back-substitution produces one particular pair; the poll wanted that one.

### Independent exercise: $\gcd(ad,bd) = d\gcd(a,b)$ for $a,b,d\in\mathbb{Z}^+$

Let $D_1 = \gcd(ad,bd)$ and $D_2 = \gcd(a,b)$. Show $D_1\mid dD_2$ and $dD_2\mid D_1$; since both are positive, they're equal.

*Proof.*
1. **$D_1\mid dD_2$.** Bézout: $D_2 = am+bn$, so $dD_2 = (ad)m + (bd)n$. $D_1$ divides $ad$ and $bd$, so it divides this combination.
2. **$dD_2$ is a common divisor of $ad$, $bd$.** $D_2\mid a$ gives $a = D_2s$, so $ad = (dD_2)s$; likewise $bd = (dD_2)t$.
3. **$dD_2\mid D_1$.** Bézout: $D_1 = (ad)u + (bd)v$. By step 2, $dD_2$ divides both terms, so it divides $D_1$.

Positive integers dividing each other are equal: $D_1 = dD_2$. $\blacksquare$

**Check:** $\gcd(12\cdot5,\ 18\cdot5) = \gcd(60,90) = 30 = 5\cdot\gcd(12,18) = 5\cdot 6$ ✓

> [!tip] Template
> To prove $x = y$ for positive integers, show $x\mid y$ and $y\mid x$. To show something divides a gcd, write the gcd as a Bézout combination.
