---
course: MAT102
type: topic-notes
topics:
  - congruence mod n
  - equivalence relations
  - congruence classes
  - integers mod n
  - cancellation
  - Fermat's Little Theorem
  - multiplicative inverses
tags:
  - MAT102
  - number-theory
  - modular-arithmetic
added: 2026-11-08
prereq:
  - "[[Relations]]"
  - "[[Divisibility and Euclid's Algorithm]]"
  - "[[Linear Diophantine Equations]]"
  - "[[Primes and the Fundamental Theorem of Arithmetic]]"
week: W09
---
# Modular Arithmetic

See also: [[Relations]] (equivalence relations and classes) · [[Divisibility and Euclid's Algorithm]] · [[Linear Diophantine Equations]] (Proposition 1, Bézout)

> [!summary]
> $a \equiv b \pmod n$ means $n \mid (b-a)$. This is an **equivalence relation**, and it respects $+$ and $\times$, so we can do arithmetic on the $n$ classes $\mathbb{Z}_n = \{[0],[1],\dots,[n-1]\}$. When $n = p$ is prime, we can cancel non-zero factors, **Fermat's Little Theorem** holds ($a^{p-1} \equiv 1$ when $p \nmid a$), and every non-zero class has a multiplicative inverse.

## 1. Congruence mod $n$ (Definition 1)

For $n \in \mathbb{Z}^+$ and $a,b \in \mathbb{Z}$:

$$a \equiv b \pmod n \iff n \mid (b-a).$$

**Example:** $1 \equiv 29 \pmod 4$ since $4 \mid 28$.

Equivalent ways to say it: $b - a = nk$ for some $k\in\mathbb{Z}$; or $a$ and $b$ leave the same remainder when divided by $n$.

## 2. Congruence is an equivalence relation (Proposition 2)

Recall that a relation $\sim$ on $A$ is an equivalence relation if it is reflexive, symmetric and transitive (see [[Relations]]).

*Proof.*
- **Reflexive.** $a - a = 0$ and $n \mid 0$, so $a \equiv a \pmod n$.
- **Symmetric.** If $n \mid (b-a)$ then $n \mid -(b-a) = (a-b)$, so $b \equiv a \pmod n$.
- **Transitive.** If $n \mid (b-a)$ and $n \mid (c-b)$, then
  $$c - a = (c-b) + (b-a),$$
  and $n$ divides a sum of multiples of $n$, so $n \mid (c-a)$, i.e. $a \equiv c \pmod n$. $\blacksquare$

## 3. Addition and multiplication are well-defined (Proposition 3)

If $a \equiv r \pmod n$ and $b \equiv s \pmod n$, then

$$a + b \equiv r + s \pmod n, \qquad ab \equiv rs \pmod n.$$

*Proof.* Write $r - a = nk$ and $s - b = n\ell$.

1. Adding: $(r+s) - (a+b) = n(k+\ell)$, so $n \mid (r+s)-(a+b)$.
2. Add and subtract $rb$:
$$rs - ab = rs - rb + rb - ab = r(s-b) + (r-a)b = n\ell r + nkb = n(\ell r + kb). \qquad \blacksquare$$

> [!tip] Why this matters
> You may replace any number by anything congruent to it **before** adding or multiplying. This is what makes "reduce as you go" legal.

> [!warning] Exponents are not well-defined (end-of-reading Exercise 1)
> $a \equiv b$ and $c \equiv d \pmod n$ do **not** give $a^c \equiv b^d$. Counterexample mod $3$: $1 \equiv 4$, but $2^1 = 2$ while $2^4 = 16 \equiv 1 \pmod 3$.
> You **can** reduce the base ($a \equiv b \Rightarrow a^c \equiv b^c$, by repeated multiplication), but not the exponent mod $n$.

## 4. Congruence classes and $\mathbb{Z}_n$

The **congruence class** of $a$ mod $n$ is its equivalence class

$$[a]_n = \{x \in \mathbb{Z} : x \equiv a \pmod n\}.$$

There are exactly $n$ classes, $[0]_n, [1]_n, \dots, [n-1]_n$. *Why:* by the division algorithm every $x = qn + r$ with $0 \le r < n$, so $x \in [r]_n$; and two different remainders $0 \le r < r' < n$ are not congruent because $0 < r' - r < n$.

$$\mathbb{Z}_n = \mathbb{Z}/n\mathbb{Z} = \{[0]_n, [1]_n, \dots, [n-1]_n\}.$$

Define $[a]_n + [b]_n = [a+b]_n$ and $[a]_n \cdot [b]_n = [ab]_n$; Proposition 3 says the answer doesn't depend on which representatives you pick.

**Example ($n = 4$):** $[3]+[2] = [5] = [1]$, $\;[3]\cdot[2] = [6] = [2]$.

### Tables for $\mathbb{Z}_4$

| $+$ | $[0]$ | $[1]$ | $[2]$ | $[3]$ |
|---|---|---|---|---|
| $[0]$ | $[0]$ | $[1]$ | $[2]$ | $[3]$ |
| $[1]$ | $[1]$ | $[2]$ | $[3]$ | $[0]$ |
| $[2]$ | $[2]$ | $[3]$ | $[0]$ | $[1]$ |
| $[3]$ | $[3]$ | $[0]$ | $[1]$ | $[2]$ |

| $\times$ | $[0]$ | $[1]$ | $[2]$ | $[3]$ |
|---|---|---|---|---|
| $[0]$ | $[0]$ | $[0]$ | $[0]$ | $[0]$ |
| $[1]$ | $[0]$ | $[1]$ | $[2]$ | $[3]$ |
| $[2]$ | $[0]$ | $[2]$ | $[0]$ | $[2]$ |
| $[3]$ | $[0]$ | $[3]$ | $[2]$ | $[1]$ |

$[3]\cdot[3] = [1]$, so $[3]$ has an inverse in $\mathbb{Z}_4$. But $[2]$ has none: row $[2]$ never hits $[1]$. (Also $[2]\cdot[2] = [0]$: non-zero classes can multiply to zero when $n$ isn't prime.)

## 5. Worked example: last digits (Example 4)

**Last digit of $4^{441}$.** The last digit $d$ satisfies $d \equiv 4^{441} \pmod{10}$. Key trick: $4^3 = 64 \equiv 4$, and $4^2 = 16 \equiv 6$, $6^2 = 36 \equiv 6$.

$$
\begin{aligned}
4^{441} &= (4^3)^{147} = 64^{147} \equiv 4^{147} \pmod{10}\\
4^{147} &= (4^3)^{49} = 64^{49} \equiv 4^{49} \pmod{10}\\
4^{49} &= 4 \cdot 4^{48} = 4 \cdot (4^2)^{24} \equiv 4 \cdot 6^{24} \equiv 4 \cdot 6 = 24 \equiv 4 \pmod{10}
\end{aligned}
$$

(using $6^k \equiv 6 \pmod{10}$ for all $k \ge 1$). So the last digit is $\mathbf{4}$. The reading takes a longer route through $64^{16}$, $256^4$, $36^2$ to reach the same answer.

> [!example]- Exercise 5: if $7 \nmid a^2 - 2$, then $7 \nmid a - 4$
> Prove the **contrapositive**: suppose $7 \mid a - 4$, i.e. $a \equiv 4 \pmod 7$. Then by Proposition 3,
> $$a^2 - 2 \equiv 4^2 - 2 = 14 \equiv 0 \pmod 7,$$
> so $7 \mid a^2 - 2$. $\blacksquare$

## 6. Cancellation (Lemma 6)

If $\gcd(p, x) = 1$ and $mx \equiv nx \pmod p$, then $m \equiv n \pmod p$.

*Proof.* $p \mid mx - nx = (m-n)x$. Since $\gcd(p,x) = 1$, Proposition 1 of [[Linear Diophantine Equations]] ($a \mid bc,\ \gcd(a,b)=1 \Rightarrow a \mid c$) gives $p \mid (m-n)$. $\blacksquare$

> [!warning] The coprime condition is necessary
> $3 \cdot 2 \equiv 1 \cdot 2 \pmod 4$ (both $\equiv 2$), but $3 \not\equiv 1 \pmod 4$. Here $\gcd(4,2) = 2$.

When $p$ is **prime**, $\gcd(p,x) = 1$ just means $x \not\equiv 0 \pmod p$, so you can cancel any non-multiple of $p$.

## 7. Fermat's Little Theorem (Theorem 7)

If $p$ is prime and $p \nmid a$, then

$$a^{p-1} \equiv 1 \pmod p.$$

*Proof.* Multiply every class of $\mathbb{Z}_p$ by $a$:

$$S = \{[0\cdot a], [1\cdot a], [2a], \dots, [(p-1)a]\}.$$

**These are all distinct:** $[ma] = [na]$ means $ma \equiv na \pmod p$; since $p \nmid a$ and $p$ is prime, $\gcd(p,a) = 1$, so Lemma 6 gives $m \equiv n$. So $S$ has $p$ distinct classes mod $p$, hence $S = \mathbb{Z}_p$ (just in a different order).

Drop the zero class ($[0\cdot a] = [0]$) from both sets. The remaining classes are the same, so their products agree:

$$[1a][2a]\cdots[(p-1)a] = [1][2]\cdots[p-1] \quad\Longrightarrow\quad (p-1)!\, a^{p-1} \equiv (p-1)! \pmod p.$$

$\gcd(p, (p-1)!) = 1$, because $p$ is prime and doesn't divide any of $1, 2, \dots, p-1$, so (by Euclid's lemma) it doesn't divide their product. Cancel $(p-1)!$ with Lemma 6:

$$a^{p-1} \equiv 1 \pmod p. \qquad \blacksquare$$

**Check:** $p = 5$, $a = 2$: $2^4 = 16 = 3\cdot 5 + 1 \equiv 1$ ✓

### Corollary 8

For **any** integer $a$ and prime $p$: $\; a^p \equiv a \pmod p$.

> [!example]- Exercise 9: proof of Corollary 8
> - If $p \nmid a$: multiply FLT by $a$: $a^p = a \cdot a^{p-1} \equiv a \cdot 1 = a$.
> - If $p \mid a$: $a \equiv 0$, so $a^p \equiv 0^p = 0 \equiv a$. $\blacksquare$
>
> **Fails for composite $n$:** $2^4 = 16 \equiv 0 \not\equiv 2 \pmod 4$.

> [!tip] Using FLT to shrink exponents
> If $p \nmid a$, exponents of $a$ may be reduced mod $p-1$: $a^{k} \equiv a^{k \bmod (p-1)} \pmod p$. E.g. $3^{100} \pmod 7$: $100 = 6\cdot 16 + 4$, so $3^{100} \equiv 3^4 = 81 \equiv 4$.

## 8. Inverses in $\mathbb{Z}_p$ (Theorem 10)

If $p$ is prime, every non-zero $[a] \in \mathbb{Z}_p$ has a multiplicative inverse.

*Proof via FLT.* $[a] \ne [0]$ means $p \nmid a$, so
$$a \cdot a^{p-2} = a^{p-1} \equiv 1 \pmod p,$$
and $[a]^{-1} = [a^{p-2}]$. $\blacksquare$

*Easier proof via Bézout.* $p \nmid a$ and $p$ prime give $\gcd(a,p) = 1$, so $ax + py = 1$ for some integers $x, y$. Reduce mod $p$: $ax \equiv 1$, so $[a]^{-1} = [x]$. This is also the practical way to **compute** inverses (Euclid backwards).

> [!example]- Exercise 11: inverse of $[22]$ in $\mathbb{Z}_{41}$
> Euclid:
> $$41 = 1\cdot 22 + 19,\qquad 22 = 1\cdot 19 + 3,\qquad 19 = 6\cdot 3 + 1.$$
> Backwards:
> $$1 = 19 - 6\cdot 3 = 19 - 6(22 - 19) = 7\cdot 19 - 6\cdot 22 = 7(41 - 22) - 6\cdot 22 = 7\cdot 41 - 13\cdot 22.$$
> So $22\cdot(-13) \equiv 1 \pmod{41}$, and $-13 \equiv 28$. **Answer:** $[22]^{-1} = [28]$.
> **Check:** $22 \cdot 28 = 616 = 15\cdot 41 + 1$ ✓

> [!note] Prime vs composite modulus
> In $\mathbb{Z}_n$, $[a]$ has an inverse **iff** $\gcd(a,n) = 1$ (same Bézout argument; if $d = \gcd(a,n) > 1$ then $ax - 1$ can't be a multiple of $n$, since $d$ divides $ax$ and $n$ but not $1$). When $n$ is prime, that's every non-zero class.

## End-of-reading exercises

1. Is exponentiation well-defined mod $n$? (Answered above: no.)
2. Last digit of $7^{100}$, $3^{1111}$, $4^{223}$, $8^{400}$.
3. The **root** $r(n)$ of $n$ is the single digit obtained by repeatedly summing digits (e.g. $15993 \mapsto 27 \mapsto 9$). Show $r(n) = 1 + [(n-1) \bmod 9]$.
4. Show $9 \mid (10^n - 1)$ for all $n \in \mathbb{Z}^+$.
5. Show $n^2 \equiv 0$ or $1 \pmod 4$ for every $n \in \mathbb{Z}^+$.
6. Does $7 \mid 3^{2001} + 4^{2001}$?
7. Let $p$ be prime. (a) Show $a^2 \equiv b^2 \pmod p \Rightarrow a \equiv \pm b \pmod p$. (b) Show this fails when $p$ is not prime.

## Quick self-check

1. Why are there exactly $n$ congruence classes mod $n$?

> [!success]- Solution
> By the division algorithm, every $x = qn + r$ with $0 \le r < n$, so $x \equiv r$ and $x \in [r]_n$: there are **at most** $n$ classes. Two different remainders $0 \le r < r' < n$ satisfy $0 < r' - r < n$, so $n \nmid (r' - r)$ and $[r] \ne [r']$: there are **at least** $n$ classes.

2. Which step of Proposition 3's proof uses the "add and subtract $rb$" trick, and why is it needed?

> [!success]- Solution
> The **multiplication** step. We only know $r - a$ and $s - b$ are multiples of $n$, but $rs - ab$ isn't written in terms of those differences. Adding $0 = -rb + rb$ splits it as
> $$rs - ab = r(s - b) + (r - a)b,$$
> a sum of multiples of $n$.

3. Where does the proof of FLT use that $p$ is prime? (Two places.)

> [!success]- Solution
> 1. **The classes $[ma]$ are distinct:** $p \nmid a$ and $p$ prime give $\gcd(p,a) = 1$, so Lemma 6 lets us cancel $a$.
> 2. **Cancelling $(p-1)!$:** $p$ prime doesn't divide any of $1, \dots, p-1$, so by Euclid's lemma $p \nmid (p-1)!$, giving $\gcd(p, (p-1)!) = 1$.

4. Why does $[2]$ have no inverse in $\mathbb{Z}_4$?

> [!success]- Solution
> $[2][x] = [2x]$, and $2x$ is even, so $2x - 1$ is odd and $4 \nmid 2x - 1$. Hence $[2][x] \ne [1]$ for every $x$ (the $\times$ table row for $[2]$ is only $[0], [2]$). In general: $\gcd(2, 4) = 2 \ne 1$.
