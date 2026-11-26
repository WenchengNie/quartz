---
course: MAT102
type: topic-notes
topics:
  - mathematical induction
  - sigma notation
  - strong induction
  - recursion
  - structural induction
tags:
  - MAT102
  - induction
  - proofs
added: 2026-11-25
prereq:
  - "[[Quantifiers and Implications]]"
  - "[[Divisibility and Euclid's Algorithm]]"
week: W11
---
# Mathematical Induction

See also: [[102 Course Definitions and Proof Structures]] · [[Divisibility and Euclid's Algorithm]] · [[Quantifiers and Implications]]

> [!info] Sources
> Reading **10 Induction I** (`10InductionI.pdf`), Week 10 in-class exercises (`10InductionIExercises_Students.pdf`) and the Week 11 tutorial activity (`Week11_Induction.pdf`), all in `Downloads\mat102`.

> [!summary]
> To prove $P(n)$ for all $n \in \mathbb{Z}^+$: prove the **base case** $P(1)$, then prove $P(k) \Rightarrow P(k+1)$ for every $k$. **Strong induction** assumes $P(1) \wedge \dots \wedge P(k)$ instead and may need several base cases. **Structural induction** proves a property for every element of a **recursively defined** set: check the basis elements, then show each constructor preserves the property.

## 1. The principle

> [!important] Mathematical Induction
> Let $P$ be a predicate. If $P(1)$ is true and $P(k) \Rightarrow P(k+1)$ for every $k \in \mathbb{Z}^+$, then $P(n)$ is true for all $n \in \mathbb{Z}^+$.

Domino picture: $P(1) \Rightarrow P(2) \Rightarrow P(3) \Rightarrow \cdots$. Induction is logically equivalent to the Well-Ordering Principle (reading, Exercise 1).

### Template
1. **Base case:** check $P(1)$ (or the smallest $n$ in the claim).
2. **Induction hypothesis (IH):** "Assume $P(k)$ holds for some $k \in \mathbb{Z}^+$."
3. **Induction step:** prove $P(k+1)$, and point out exactly where the IH is used.
4. **Conclude:** "By induction, $P(n)$ holds for all $n \in \mathbb{Z}^+$."

> [!tip] Tutorial advice (Week 11)
> Write the template first (base case + IH + the goal $P(k+1)$), leave the step blank, and do rough work separately before filling it in.

## 2. Worked examples (reading)

**Example 2: $2n + 2 \le 4n$ for all $n \ge 1$.**
- Base: $n=1$: $4 \le 4$ ✓
- Step: assume $2k + 2 \le 4k$. Then
$$4(k+1) = 4k + 4 \;\overset{\text{IH}}{\ge}\; (2k+2) + 4 \;\ge\; 2k + 2 + 2 = 2(k+1) + 2.$$

**Example 4: $5 \mid 6^k - 1$ for all $k \ge 1$.**
- Base: $6 - 1 = 5$ ✓
- Step: assume $5d = 6^k - 1$ for some $d \in \mathbb{Z}$. Then
$$6^{k+1} - 1 = (1+5)6^k - 1 = 5\cdot 6^k + (6^k - 1) = 5(6^k + d).$$

**Example 6 (L-tilings):** a $2^n \times 2^n$ board with one square removed can be tiled by L-shaped trominoes. Base: $2\times2$ minus a square *is* an L. Step: split the $2^{n+1}\times 2^{n+1}$ board into four $2^n\times2^n$ quadrants; place one L at the centre covering one square from each of the three quadrants **without** the missing square. Now every quadrant is a $2^n\times2^n$ board missing one square, so the IH tiles each one.

## 3. Sigma notation

$$\sum_{i=n}^{m} r_i = r_n + r_{n+1} + \cdots + r_m$$
$i$ is the dummy (summation) index, $n,m$ the bounds, $r_i$ the summand. It's a for-loop.

**Example 8:** $\displaystyle\sum_{n=1}^{k}\frac{1}{n(n+1)} = \frac{k}{k+1}$.
- Base $k=1$: $\frac{1}{1\cdot2} = \frac12 = \frac{1}{1+1}$ ✓
- Step: split off the last term, then use the IH:
$$\sum_{n=1}^{k+1}\frac{1}{n(n+1)} = \frac{k}{k+1} + \frac{1}{(k+1)(k+2)} = \frac{k(k+2) + 1}{(k+1)(k+2)} = \frac{(k+1)^2}{(k+1)(k+2)} = \frac{k+1}{(k+1)+1}.$$

> [!tip] Sums: always split off the last term
> $\sum_{i=1}^{k+1} = \sum_{i=1}^{k} + (\text{term } k+1)$, then replace $\sum_{i=1}^k$ using the IH.

**Tutorial Example 1.1:** $\displaystyle\sum_{k=1}^{n}(2k-1) = n^2$ ("the sum of the first $n$ odd numbers is $n^2$"). Intuition: consecutive squares differ by odd numbers, $n^2 - (n-1)^2 = 2n - 1$. Step: $\sum_{k=1}^{n+1}(2k-1) = n^2 + (2n+1) = (n+1)^2$.

## 4. Other starting points

To prove $P(n)$ for all even $n \ge 10$: base $P(10)$, step $P(2n) \Rightarrow P(2n+2)$. Same idea with a different chain.

## 5. Strong induction

> [!important] Theorem 10 (Strong Induction)
> If $P(1)$ is true and $P(1) \wedge P(2) \wedge \cdots \wedge P(k) \Rightarrow P(k+1)$ for every $k$, then $P(n)$ holds for all $n \in \mathbb{Z}^+$.

It is **equivalent** to ordinary induction: apply ordinary induction to $Q(k) = P(1)\wedge\cdots\wedge P(k)$.

**Example 11 (stamps):** every postage $n \ge 8$ can be made from 3¢ and 5¢ stamps.
- Base cases: $8 = 3 + 5$, $\;9 = 3\cdot3$, $\;10 = 5\cdot2$.
- Step ($n \ge 10$): assume it works for all $8 \le k \le n$. Then $n+1 = (n-2) + 3$, and $n - 2 \ge 8$ is covered by the IH, so add one 3¢ stamp.

> [!warning] Why three base cases?
> The step reaches back **3** values ($n+1$ uses $n-2$). With only $P(8)$, the step for $n+1 = 9$ or $10$ would need $P(6)$ or $P(7)$, which are outside the claim (and $7$ is actually false). Rule: the number of base cases matches how far back the step reaches.

**Example 14:** $x_1 = 3$, $x_2 = 7$, $x_k = 5x_{k-1} - 6x_{k-2}$. Claim $x_k = 2^k + 3^{k-1}$.
- Two base cases (the recursion uses two previous terms): $x_1 = 2 + 1 = 3$ ✓, $x_2 = 4 + 3 = 7$ ✓
- Step:
$$x_{n+1} = 5(2^n + 3^{n-1}) - 6(2^{n-1} + 3^{n-2}) = 5\cdot2^n + 5\cdot3^{n-1} - 3\cdot2^n - 2\cdot3^{n-1} = 2\cdot2^n + 3\cdot3^{n-1} = 2^{n+1} + 3^n.$$

## 6. Recursion and structural induction

A **recursively defined set** has
- a **basis**: elements in the set from the start;
- **constructors**: rules that build new elements from existing ones;
- and *nothing else* is in the set.

Example: $0 \in E$, and $e \in E \Rightarrow -e \in E$ and $e + 2 \in E$. Applying the rules gives $\{-2, 0, 2, 4, \dots\}$; $E$ turns out to be the even integers (that needs a proof).

> [!important] Principle of Structural Induction
> Let $S$ be recursively defined with basis $b_1,\dots,b_n$ and constructor $c$. If $P(b_1),\dots,P(b_n)$ are true, and $P(s_1)\wedge\cdots\wedge P(s_k) \Rightarrow P(c(s_1,\dots,s_k))$ for all $s_i \in S$, then $P(s)$ holds for every $s \in S$.

**Example 16:** $3 \in S$, and $a, b \in S \Rightarrow a + b \in S$. Show $3 \mid s$ for all $s \in S$.
- Basis: $3 \mid 3$ ✓
- Constructor: if $a = 3m$ and $b = 3n$ then $a + b = 3(m+n)$ ✓

> [!example]- Week 10 independent exercise: the MIU puzzle
> $H$ is built from $\mathrm{MI}$ with four rules (double what follows M; append U after a final I; delete UU; replace III by U). Let $f(x)$ = number of I's. Structural induction shows $3 \nmid f(x)$ for all $x \in H$: the basis has $f = 1$; doubling sends $f \mapsto 2f$ (and $3 \nmid f \Rightarrow 3 \nmid 2f$); appending U or deleting UU leaves $f$ unchanged; replacing III by U sends $f \mapsto f - 3$. Since $f(\mathrm{MU}) = 0$ and $3 \mid 0$, $\mathrm{MU} \notin H$.

## Practice (from the exercise sheets)

Worked solutions for several of these are in [[MAT102 Final Exam Problem Set]].
- Fibonacci ($f_1 = f_2 = 1$): $\gcd(f_n, f_{n+1}) = 1$; $\;\sum_{i=1}^n f_i^2 = f_n f_{n+1}$; $\;\sum_{i=1}^n f_{2i-1} = f_{2n}$.
- Reading: $2n \le 2^n$ (Exercise 3), Bernoulli's inequality $(1+x)^n \ge 1 + nx$ for $x \ge -1$ (Exercise 5), $\sum_{n=1}^k n^2 = \frac{k(k+1)(2k+1)}{6}$ (Exercise 9), binary representations (Exercise 13), $a \le 2b$ for a recursive set (Exercise 17).
- Tutorial Example 2.1: $a_1 = a_2 = 1$, $a_{n+1} = \frac{a_n^2 + 2}{a_{n-1}}$. Then $a_3 = 3$, $a_4 = 11$, $a_5 = 41$, which fit $a_{n+1} = 4a_n - a_{n-1}$; prove that linear relation by strong induction to conclude every $a_n \in \mathbb{Z}$.
- Tutorial Example 2.2: $S \subseteq \mathbb{Z}^+\times\mathbb{Z}^+$ built from $(1,1)$ by $(a,b)\mapsto(a+b,b)$ and $(a,b)\mapsto(a,b+a)$. Show $S = \{(a,b) : \gcd(a,b) = 1\}$ (structural induction one way, strong induction on $a+b$ the other).

> [!question] Exercise 3 wording
> The PDF text extraction flattens the exponent, so it reads "$2n \le 2n$". It is most likely $2n \le 2^n$; check the PDF.
