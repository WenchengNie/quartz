---
course: MAT102
type: test-prep
test: Term Test 2
date: 2026-11-24
tags: [mat102, tt2, study-guide]
---
# MAT102 Term Test 2 — Study Guide

## Logistics (Quercus "Term Test 2 Information")
- **When:** Tuesday, **Nov 24, 2026**, 7:10–9:00 PM.
- **Rooms changed** from the original plan. By family name:

| Room | Family name |
|---|---|
| IB 120 | A–J |
| IB 110 | K–S, no surname |
| IB 245 | T–X |
| IB 150 | Y–Z |

- **No calculators** (not allowed and not needed).
- **Bring:** your T-Card. Phones fully off; valuables under your chair or at the front.
- You can't leave during the first hour. If you finish in the last 10 minutes, stay seated and silent until papers are collected.
- **Sick or hurt:** stay home and fill in the absence form within **24 hours** after the test ends; make-up Tue Dec 1. Missing the test without telling them on time means a zero.
- Accessibility accommodations go through Accessibility Services, not the instructors.

## Format
- **10 multiple choice** questions in a separate booklet. It is printed single-sided and not handed in, so use the backs for rough work.
- **5 long answer** questions, answered only in the space given (no extra paper). Write in pencil or erasable pen.

## Coverage: Readings 07, 08, 09
Earlier material is assumed known even if not tested directly.

| ✅ On the test | Note |
|---|---|
| Divisibility, its basic properties, proofs using it | [[Divisibility and Euclid's Algorithm]] §1, §4, §5 |
| Well-Ordering Principle, Division Algorithm | [[Divisibility and Euclid's Algorithm]] §6, §7 |
| $\gcd$, Euclidean Algorithm, Bézout's identity | [[Divisibility and Euclid's Algorithm]] §2, §3, §8, §9 |
| Linear Diophantine equations: existence and **all** solutions | [[Linear Diophantine Equations]] |
| Primes, Euclid's lemma (both definitions equivalent) | [[Primes and the Fundamental Theorem of Arithmetic]] §1, §2 |
| Fundamental Theorem of Arithmetic, infinitely many primes, gcd/divisors from factorizations | [[Primes and the Fundamental Theorem of Arithmetic]] §3–§5 |
| Congruence mod $n$ is an equivalence relation | [[Modular Arithmetic]] §1, §2 · [[Relations]] |
| $+$ and $\times$ well-defined, $\mathbb{Z}_n$ | [[Modular Arithmetic]] §3, §4 |
| Cancellation, Fermat's Little Theorem, inverses in $\mathbb{Z}_p$ | [[Modular Arithmetic]] §6–§8 |

Earlier tools used everywhere: [[Quantifiers and Implications]] (contrapositive, "for all / there exists" structure), [[Proof by Contradiction]] (FTA, infinitely many primes, irrationality), [[102 Course Definitions and Proof Structures]].

## Definitions to state word-for-word
- **Divides:** $a \mid b \iff \exists k \in \mathbb{Z},\ b = ka$.
- **Well-Ordering Principle:** every non-empty subset of $\mathbb{Z}^+$ has a least element.
- **gcd:** $\gcd(a,b) = \max\{d : d \mid a \text{ and } d \mid b\}$, with $\gcd(0,0) = 0$. **Coprime:** $\gcd(a,b) = 1$.
- **Linear Diophantine equation:** $ax + by = c$ with $a,b,c \in \mathbb{Z}$, looking for **integer** $x, y$.
- **Prime:** an integer $p > 1$ that is not a product of two smaller natural numbers (only positive divisors $1$ and $p$). $1$ is not prime.
- **Congruence:** $a \equiv b \pmod n \iff n \mid (b - a)$.
- **Congruence class:** $[a]_n = \{x \in \mathbb{Z} : x \equiv a \pmod n\}$, and $\mathbb{Z}_n = \{[0], [1], \dots, [n-1]\}$ with $[a]+[b] = [a+b]$, $[a][b] = [ab]$.
- **Equivalence relation:** reflexive, symmetric, transitive.

## Theorems and formulas
**Divisibility (Prop 3).** For $a,b,c \in \mathbb{Z}$:

$$
a \mid b,\ b \mid c \Rightarrow a \mid c, \qquad a \mid b,\ a \mid c \Rightarrow a \mid (mb + nc)\ \ \forall m,n \in \mathbb{Z}
$$

$$
a \mid b,\ b \mid a \Rightarrow a = \pm b, \qquad b \neq 0,\ a \mid b \Rightarrow |a| \le |b|
$$

**Division Algorithm.** For $b > 0$ there are **unique** $q, r$ with

$$
a = qb + r, \qquad 0 \le r < b.
$$

**Why Euclid works (Prop 10).**

$$
a = bq + r \ \Longrightarrow\ \gcd(a,b) = \gcd(b,r)
$$

**Bézout.** There exist $m, n \in \mathbb{Z}$ with

$$
am + bn = \gcd(a,b),
$$

and $\gcd(a,b)$ is the **smallest positive** integer combination of $a$ and $b$. Consequences:
- Every common divisor of $a, b$ divides $\gcd(a,b)$.
- If $d > 0$ divides both **and** $d = am + bn$, then $d = \gcd(a,b)$.
- If $d = \gcd(a,b) \ne 0$, then $\gcd\!\left(\frac{a}{d}, \frac{b}{d}\right) = 1$.

**Coprime lemma (Prop 1).**

$$
a \mid bc \ \text{ and } \ \gcd(a,b) = 1 \ \Longrightarrow\ a \mid c
$$

**Linear Diophantine equations.** $ax + by = c$ has integer solutions $\iff \gcd(a,b) \mid c$. If $(x_0, y_0)$ is one solution and $d = \gcd(a,b)$, **all** solutions are

$$
x = x_0 + n\frac{b}{d}, \qquad y = y_0 - n\frac{a}{d}, \qquad n \in \mathbb{Z}.
$$

**Euclid's lemma (Thm 13).** For $p > 1$:

$$
p \text{ prime} \iff \forall a,b \in \mathbb{Z}\ \big(p \mid ab \Rightarrow p \mid a \ \lor\ p \mid b\big)
$$

**Fundamental Theorem of Arithmetic.** Every $n > 1$ is a product of primes, unique up to order:

$$
n = p_1^{a_1} p_2^{a_2} \cdots p_k^{a_k}
$$

With $a = \prod p_i^{a_i}$ and $b = \prod p_i^{b_i}$ over a common list of primes:

$$
b \mid a \iff b_i \le a_i\ \forall i, \qquad \gcd(a,b) = \prod p_i^{\min(a_i, b_i)}, \qquad \#\{\text{positive divisors of } a\} = \prod (a_i + 1)
$$

**Infinitely many primes (Euclid).** Given primes $p_1, \dots, p_n$, the number $p_1 \cdots p_n + 1$ has a prime factor not on the list.

**Congruence is well-defined.** If $a \equiv r$ and $b \equiv s \pmod n$:

$$
a + b \equiv r + s, \qquad ab \equiv rs, \qquad a^k \equiv r^k \pmod n
$$

**Cancellation (Lemma 6).** If $\gcd(n, x) = 1$ and $mx \equiv m'x \pmod n$, then $m \equiv m' \pmod n$.

**Fermat's Little Theorem.** If $p$ is prime and $p \nmid a$:

$$
a^{p-1} \equiv 1 \pmod p, \qquad \text{and for every } a:\ \ a^p \equiv a \pmod p.
$$

So exponents can be reduced mod $p - 1$ when $p \nmid a$: $a^k \equiv a^{k \bmod (p-1)} \pmod p$.

**Inverses.** $[a]$ has an inverse in $\mathbb{Z}_n$ $\iff \gcd(a,n) = 1$. For $p$ prime, every non-zero class has one:

$$
[a]^{-1} = [a^{p-2}] \quad \text{(by FLT)}, \qquad \text{or } ax + py = 1 \Rightarrow [a]^{-1} = [x] \quad \text{(by Bézout)}.
$$

## Proof skeletons to know cold
1. **Congruence is an equivalence relation.** Reflexive: $n \mid 0 = a - a$. Symmetric: $n \mid (b-a) \Rightarrow n \mid (a-b)$. Transitive: $c - a = (c - b) + (b - a)$.
2. **Multiplication is well-defined.** Write $r - a = nk$, $s - b = n\ell$, then add and subtract $rb$:

$$
rs - ab = r(s - b) + (r - a)b = n(\ell r + kb).
$$

3. **Euclid's lemma.** (⇒) If $p \nmid a$ then $\gcd(a,p) = 1$, so $p \mid b$ by Prop 1. (⇐) Contrapositive: $p = rs$ with $1 < r, s < p$ gives $p \mid rs$ but $p \nmid r$, $p \nmid s$.
4. **All Diophantine solutions.** Subtract the two equations, divide by $d$: $\frac{a}{d}(x - x_0) = -\frac{b}{d}(y - y_0)$. Coprime lemma gives $\frac{b}{d} \mid (x - x_0)$.
5. **FLT.** The classes $[a], [2a], \dots, [(p-1)a]$ are distinct (cancellation), so they are $[1], \dots, [p-1]$ in some order. Multiply all of them: $(p-1)!\,a^{p-1} \equiv (p-1)!$, then cancel $(p-1)!$.
6. **FTA existence / anything "every $n > 1$…".** Assume the set of counterexamples is non-empty, take its least element by WOP, and derive a contradiction.
7. **Showing $x = y$ for positive integers:** show $x \mid y$ and $y \mid x$. **Showing something divides a gcd:** write the gcd as a Bézout combination.

## Top traps
1. **$a \mid bc$ does not give $a \mid b$ or $a \mid c$** unless $a$ is prime (or $\gcd(a,b) = 1$ gives $a \mid c$). Counterexample: $4 \mid 2 \cdot 10$.
2. **Divides is not division.** $a \mid b$ is a statement (true/false), not a number. Always go back to $b = ka$.
3. **Euclid bookkeeping:** divisor moves left, remainder becomes the new divisor. Always **check** the Bézout combination by multiplying out.
4. **Bézout coefficients aren't unique.** Any pair on the general solution line works.
5. **General solution:** step by $\frac{b}{d}$ and $\frac{a}{d}$ (not $b$ and $a$), each variable uses the **other** coefficient, and the signs are **opposite**.
6. **Positive vs non-negative solutions:** $> 0$ vs $\ge 0$; then list the integers $n$ in the range (it may be empty).
7. **Check $\gcd(a,b) \mid c$ first.** If it fails, the answer is "no solutions".
8. **Cancel only coprime factors.** $3 \cdot 2 \equiv 1 \cdot 2 \pmod 4$ but $3 \not\equiv 1$.
9. **Never reduce an exponent mod $n$.** Reduce the base mod $n$; reduce the exponent mod $p - 1$ only with FLT ($p$ prime, $p \nmid a$).
10. **FLT needs both:** $p$ prime **and** $p \nmid a$. For composite $n$ it fails ($2^4 \equiv 0 \not\equiv 2 \pmod 4$).
11. **$\mathbb{Z}_n$ for composite $n$ has zero divisors:** $[2][2] = [0]$ in $\mathbb{Z}_4$, so $[2]$ has no inverse.
12. **Euclid's $p_1 \cdots p_n + 1$ need not be prime** ($30031 = 59 \cdot 509$); it only has a prime factor off the list.
13. **Give inverses as a class in range:** $[-13]_{41} = [28]_{41}$.

## Mixed practice
1. Find all integer solutions of $15x + 21y = 9$.

> [!success]- Solution
> $21 = 15 \cdot 1 + 6$, $15 = 6 \cdot 2 + 3$, $6 = 3 \cdot 2$, so $d = 3$ and $3 \mid 9$ ✓.
> Backwards: $3 = 15 - 2 \cdot 6 = 15 - 2(21 - 15) = 3 \cdot 15 - 2 \cdot 21$. Multiply by $3$:
> $$15(9) + 21(-6) = 9.$$
> **Check:** $135 - 126 = 9$ ✓. With $\frac{21}{3} = 7$, $\frac{15}{3} = 5$:
> $$x = 9 + 7n, \qquad y = -6 - 5n, \qquad n \in \mathbb{Z}.$$

2. Find $[5]^{-1}$ in $\mathbb{Z}_{17}$.

> [!success]- Solution
> $17 = 3 \cdot 5 + 2$, $5 = 2 \cdot 2 + 1$. Backwards: $1 = 5 - 2 \cdot 2 = 5 - 2(17 - 3 \cdot 5) = 7 \cdot 5 - 2 \cdot 17$.
> So $[5]^{-1} = [7]$. **Check:** $35 = 2 \cdot 17 + 1$ ✓

3. Find the remainder of $2^{100}$ when divided by $13$.

> [!success]- Solution
> $13$ is prime and $13 \nmid 2$, so FLT gives $2^{12} \equiv 1 \pmod{13}$. $100 = 12 \cdot 8 + 4$, so
> $$2^{100} = (2^{12})^8 \cdot 2^4 \equiv 1 \cdot 16 \equiv 3 \pmod{13}.$$

4. Prove: if $p$ is prime and $p \mid a^2$, then $p \mid a$.

> [!success]- Solution
> $a^2 = a \cdot a$. By Euclid's lemma, $p \mid a$ or $p \mid a$, so $p \mid a$. $\blacksquare$

5. True or false: if $a^2 \equiv b^2 \pmod 8$, then $a \equiv \pm b \pmod 8$.

> [!success]- Solution
> **False.** $a = 3$, $b = 1$: $9 \equiv 1 \pmod 8$, but $3 - 1 = 2$ and $3 + 1 = 4$ are not multiples of $8$. (It is true mod a prime $p$: $p \mid (a-b)(a+b)$, then Euclid's lemma.)

## Practice materials (Quercus)
**Everything below is in one place, with collapsible solutions: [[MAT102 Test 2 Problem Set]].**

- Readings exercises (end of each reading), pre-class quizzes, in-class worksheets and polls, tutorial exercises for Weeks 7–9.
- **Winter 2026 Test 2** (blank script, blank MC, solutions). Its coverage was Readings 06–09, so use it for timing and test-taking practice, not to guess question styles.
- Unanswered end-of-reading exercises in [[Modular Arithmetic]] (last digits, $9 \mid 10^n - 1$, $n^2 \equiv 0$ or $1 \pmod 4$, $7 \mid 3^{2001} + 4^{2001}$).
