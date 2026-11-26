---
course: MAT102
type: topic-notes
topics:
  - primes
  - Euclid's lemma
  - fundamental theorem of arithmetic
  - infinitude of primes
  - prime factorization
tags:
  - MAT102
  - number-theory
  - primes
added: 2026-10-29
prereq:
  - "[[Divisibility and Euclid's Algorithm]]"
  - "[[Linear Diophantine Equations]]"
  - "[[Proof by Contradiction]]"
next: "[[Modular Arithmetic]]"
week: W08
---

# Primes and the Fundamental Theorem of Arithmetic


See also: [[Divisibility and Euclid's Algorithm]] · [[Linear Diophantine Equations]] (Proposition 1) · [[Proof by Contradiction]]

> [!summary]
> A prime can be defined by "no smaller factors" **or** by "if $p \mid ab$ then $p \mid a$ or $p \mid b$". Every integer $>1$ factors into primes uniquely (FTA), and there are infinitely many primes (Euclid).

## 1. Definition (classical)

A **prime** is a positive integer $p > 1$ that cannot be written as a product of two smaller natural numbers.

- **Composite:** $n > 1$ and not prime, so $n = rs$ with $1 < r \le s < n$.
- $1$ is **neither** prime nor composite.
- If $p$ is prime, $\gcd(p, a) = 1$ unless $p \mid a$ (the only positive divisors of $p$ are $1$ and $p$).

## 2. Divisibility characterization (Theorem 13, "Euclid's lemma")

For $p \in \mathbb{Z}^+$ with $p > 1$:

$$p \text{ prime} \iff \forall a, b \in \mathbb{Z},\ \big(p \mid ab \Rightarrow p \mid a \ \lor\ p \mid b\big).$$

*Proof.*

- **(⇒)** Let $p$ be prime with $p \mid ab$. If $p \mid a$, done. Otherwise $\gcd(a,p) = 1$, so by Proposition 1 ([[Linear Diophantine Equations]]), $p \mid b$.
- **(⇐) by contrapositive.** If $p > 1$ is not prime, write $p = rs$ with $1 < r \le s < p$. Then $p \mid rs$, but $0 < r, s < p$, so $p \nmid r$ and $p \nmid s$ (a nonzero multiple of $p$ has absolute value $\ge p$). $\blacksquare$

**Extension:** if $p$ is prime and $p \mid a_1 a_2 \cdots a_n$, then $p \mid a_i$ for some $i$ (apply the theorem repeatedly / induction).

Without primality the property fails: see the $4 \mid 2 \cdot 10$ example in [[Divisibility and Euclid's Algorithm]].

> [!note] In higher mathematics
> This divisibility property is taken as **the definition** of prime; the "no smaller factors" property is called *irreducible*. In $\mathbb{Z}$ the two agree.

## 3. Fundamental Theorem of Arithmetic (Theorem 18)

Every integer $n > 1$ can be written as a product of primes, **uniquely up to the order of the factors**:

$$n = p_1^{a_1} p_2^{a_2} \cdots p_k^{a_k}, \qquad p_i \text{ distinct primes},\ a_i \ge 1.$$

*Proof of existence (Well-Ordering).* Suppose not, and let

$$S = \{ n \in \mathbb{Z} : n > 1,\ n \text{ is not a product of primes} \} \ne \varnothing.$$

By the Well-Ordering Principle, $S$ has a least element $k$. $k$ is not prime (a prime is a one-factor product), so $k = rs$ with $1 < r, s < k$. By minimality of $k$, $r$ and $s$ are products of primes, so $k = rs$ is too. Contradiction.

*Proof of uniqueness.* Suppose $n = p_1 \cdots p_k = q_1 \cdots q_m$. Then $p_1 \mid q_1 \cdots q_m$, so by Theorem 13, $p_1 \mid q_j$ for some $j$; reorder so $j = 1$. Since $q_1$ is prime and $p_1 > 1$, $p_1 = q_1$. Cancel and repeat: $p_i = q_i$ for all $i$, and $k = m$. $\blacksquare$

### Example 19: $\log_{36}(105)$ is irrational

Since $105 > 36 > 1$, $\log_{36}(105) > 1 > 0$. Suppose $\log_{36}(105) = \frac{p}{q}$ with $p, q \in \mathbb{Z}^+$. Then

$$36^{p/q} = 105 \;\Rightarrow\; 36^p = 105^q \;\Rightarrow\; 2^{2p}\, 3^{2p} = 3^q\, 5^q\, 7^q.$$

By FTA the exponents of each prime must match. The exponent of $2$ gives $2p = 0$, so $p = 0$, contradicting $p > 0$. $\blacksquare$

> [!tip] Pattern
> "Is this log / root irrational?" → assume a fraction, clear denominators to get an integer equation, factor both sides into primes, and compare exponents.

## 4. Infinitely many primes (Euclid, Theorem 20)

*Proof.* Suppose the only primes are $p_1, \dots, p_n$, and let

$$x = p_1 p_2 \cdots p_n + 1 > 1.$$

By FTA, some prime $p_k$ divides $x$. It also divides $p_1 \cdots p_n$, so it divides the difference $x - p_1\cdots p_n = 1$. Impossible. $\blacksquare$

> [!warning] $x$ need not be prime
> $2\cdot3\cdot5\cdot7\cdot11\cdot13 + 1 = 30031 = 59 \cdot 509$. The proof only shows $x$ has a prime factor **missing from the list**.

## 5. Using prime factorizations

Write $a = p_1^{a_1}\cdots p_n^{a_n}$ and $b = p_1^{b_1}\cdots p_n^{b_n}$ over a common list of primes (exponents may be $0$). Then:

- $b \mid a \iff$ every $b_i \le a_i$.
- $\gcd(a,b) = p_1^{\min(a_1,b_1)} \cdots p_n^{\min(a_n,b_n)}$.

## Quick self-check

1. Why is $1$ excluded from the primes?

> [!success]- Solution
> So that factorizations are **unique** (FTA). If $1$ were prime, $6 = 2\cdot 3 = 1 \cdot 2 \cdot 3 = 1\cdot 1\cdot 2\cdot 3 = \cdots$ would have infinitely many prime factorizations.

2. In the proof of Theorem 13 (⇒), where is $\gcd(a,p) = 1$ used?

> [!success]- Solution
> In the case $p \nmid a$: since $p$ is prime, $\gcd(a,p) = 1$, and that is the hypothesis Proposition 1 needs ($p \mid ab$ and $\gcd(p,a) = 1 \Rightarrow p \mid b$).

3. Why does the FTA existence proof say "$k$ is not prime"?

> [!success]- Solution
> A prime is a product of primes (with one factor), so if $k$ were prime it couldn't be in $S$. So $k$ is composite, $k = rs$ with $1 < r, s < k$, and minimality of $k$ then gives the contradiction.

4. Is $2\cdot3\cdot5 + 1$ prime? Does the answer matter for Euclid's proof?

> [!success]- Solution
> $31$ is prime. It **doesn't matter**: the proof only needs $x$ to have *some* prime factor missing from the list. That holds whether $x$ is prime or not (e.g. $30031 = 59 \cdot 509$).


---

## Lecture activities (Week 8): proofs of the §5 facts

### Divisors of $36 = 2^2\cdot3^2$

| $d$ | 1 | 2 | 3 | 4 | 6 | 9 | 12 | 18 | 36 |
|---|---|---|---|---|---|---|---|---|---|
| $x$ (power of 2) | 0 | 1 | 0 | 2 | 1 | 0 | 2 | 1 | 2 |
| $y$ (power of 3) | 0 | 0 | 1 | 0 | 1 | 2 | 1 | 2 | 2 |

Every divisor uses only the primes $2,3$, with exponents $0\le x\le2$, $0\le y\le2$. That gives $3\cdot3 = 9$ choices, matching the $9$ divisors. (In general $a = \prod p_i^{a_i}$ has $\prod(a_i+1)$ positive divisors.)

### Proposition 2: $b\mid a \iff b = p_1^{b_1}\cdots p_n^{b_n}$ with $0\le b_i\le a_i$

Let $a = p_1^{a_1}\cdots p_n^{a_n}>1$ with distinct primes $p_i$, and $b\in\mathbb{Z}^+$.

*Proof.* (⇒) Suppose $a = bk$. If a prime $p$ divides $b$, then $p\mid a$, so by Euclid's lemma (applied repeatedly to the product $p_1\cdots p_1 p_2\cdots$) $p$ divides some $p_i$, hence $p = p_i$. So $b$ uses only $p_1,\dots,p_n$: $b = \prod p_i^{b_i}$. Similarly $k = \prod p_i^{k_i}$. Then
$$a = bk = \prod p_i^{\,b_i+k_i},$$
and by **uniqueness** in the FTA, $a_i = b_i + k_i\ge b_i$.

(⇐) If $0\le b_i\le a_i$ for all $i$, set $k = \prod p_i^{a_i-b_i}$, an integer since every exponent is $\ge 0$. Then $bk = \prod p_i^{a_i} = a$, so $b\mid a$. $\blacksquare$

### Proposition 3: $\gcd(a,b) = \prod p_i^{\min(a_i,b_i)}$

**Example: $a=90$, $b=264$.** $90 = 2\cdot3^2\cdot5$ and $264 = 2^3\cdot3\cdot11$. Common prime list $2,3,5,11$:
$$90 = 2^1 3^2 5^1 11^0,\qquad 264 = 2^3 3^1 5^0 11^1.$$
$d = 2^{1}3^{1}5^{0}11^{0} = 6$. It divides both (Prop 2). **Check with Euclid:** $264 = 2\cdot90+84$, $90 = 84 + 6$, $84 = 14\cdot 6$, so $\gcd = 6$ ✓

*Proof (general).* Let $d = \prod p_i^{\min(a_i,b_i)}$. We need: $d$ is a common divisor, and every common divisor $c$ satisfies $c\le d$.
1. **$d$ divides both.** $\min(a_i,b_i)\le a_i$ and $\le b_i$, so $d\mid a$ and $d\mid b$ by Prop 2.
2. **Any positive common divisor $c$ divides $d$.** By Prop 2, $c = \prod p_i^{c_i}$ with $c_i\le a_i$ and $c_i\le b_i$, so $c_i\le\min(a_i,b_i)$. By Prop 2 again, $c\mid d$, hence $c\le d$.

So $d$ is the greatest common divisor. $\blacksquare$ (Bonus: step 2 shows every common divisor divides the gcd, not just $\le$ it.)

### Polls

- **$3^a\cdot9^b = 3^c\cdot9^d$** means $3^{a+2b} = 3^{c+2d}$, so by FTA uniqueness **$a+2b = c+2d$** is the only thing forced. ($a=c$, $b=d$ need not hold: $3^2\cdot9^0 = 3^0\cdot9^1$.)
- **Which is false?** "$6\mid ab\Rightarrow 6\mid a$ or $6\mid b$" ($a=2$, $b=3$). The others are true: $2\mid a^2\Rightarrow2\mid a$ and $7\mid ab\Rightarrow 7\mid a$ or $7\mid b$ (Euclid's lemma, $2,7$ prime); $3\mid a, 3\mid b\Rightarrow 3\mid a+b$.
- "$p\mid ab\Rightarrow p\mid a$ or $p\mid b$" can serve as an alternative **definition** of prime (for $p>1$), as §2 shows.
