---
course: MAT102
type: topic-notes
topics:
  - cardinality
  - one-to-one correspondence
  - bijection
  - finite sets
  - infinite sets
tags:
  - MAT102
  - cardinality
prereq:
  - "[[W05 - Injectivity, Surjectivity, and Bijectivity|Injectivity, Surjectivity, and Bijectivity]]"
  - "[[W04 - Relations|Relations]]"
next: "[[W07 - Divisibility and Euclid's Algorithm|Divisibility and Euclid's Algorithm]]"
week: W06
---

# Cardinality


See also: [[W05 - Injectivity, Surjectivity, and Bijectivity|Functions]] (injective, surjective, bijective), [[W04 - Relations|Relations]]

> [!summary]
> Cardinality is the "size" of a set. Two sets have the same size exactly when their elements can be paired up perfectly, i.e. when there is a one-to-one correspondence (bijection) between them.

## 1. Notation

For a **set** $A$, $|A|$ is its **cardinality**. Bars around a number mean absolute value; bars around a set mean cardinality.

For finite sets, $|A|$ is the number of elements:

$$|\{2,5,9\}| = 3, \qquad |\varnothing| = 0, \qquad |\{a,\{b,c\}\}| = 2.$$

A set inside a set counts as one element.

## 2. One-to-one correspondence

A **one-to-one correspondence** between $A$ and $B$ is another name for a **bijection** $f : A \to B$. It pairs every element of $A$ with exactly one element of $B$, with nothing left over on either side:

- injective: no two elements of $A$ share a partner;
- surjective: every element of $B$ gets a partner.

> [!note] Wording trap
> "One-to-one **function**" usually means only *injective*. "One-to-one **correspondence**" means *bijective*. Read carefully.

## 3. Cardinality is defined by correspondence

$$|A| = |B| \iff \text{there is a one-to-one correspondence (bijection) } A \to B.$$

Correspondence is the **tool**; cardinality is what it **measures**.

- **Finite sets.** Counting *is* a correspondence. Counting $\{a,b,c\}$ as "1, 2, 3" builds the bijection $a\mapsto1,\ b\mapsto2,\ c\mapsto3$, so $|\{a,b,c\}| = |\{1,2,3\}| = 3$.
- **Infinite sets.** You can't finish counting, but you can still pair elements. That is why the definition uses bijections and not numbers.

### Template: proving $|A| = |B|$

1. Write down a specific $f : A \to B$ (check it really lands in $B$).
2. Prove $f$ is injective.
3. Prove $f$ is surjective.
4. Conclude $|A| = |B|$.

One correct bijection is enough. A function that fails to be a bijection proves **nothing** (see §6).

## 4. Different cardinalities

If $|A| \neq |B|$, then **every** function $f : A \to B$ fails to be bijective (contrapositive of the definition).

Without knowing which set is bigger you cannot say more. For finite sets:

- $|A| > |B|$: no $f : A \to B$ is injective (pigeonhole). Example: $A=\{1,2\}$, $B=\{0\}$.
- $|A| < |B|$: no $f : A \to B$ is surjective. Example: $A=\{1\}$, $B=\{0,1\}$.

So "every function is injective but not surjective" and "every function is surjective but not injective" are both false in general.

## 5. Infinite sets: proper subset does not mean smaller

For **finite** sets, $B \subsetneq A$ implies $|B| < |A|$. For **infinite** sets this can fail.

**Example 1: powers of two.** $A = \mathbb{N}^0 = \{0,1,2,\dots\}$, $B = \{2,4,8,16,\dots\}$. $B \subsetneq A$, yet $|A| = |B|$ via

$$f : A \to B,\qquad f(n) = 2^{n+1}.$$

- **Injective:** $2^{n+1} = 2^{m+1} \Rightarrow n = m$.
- **Surjective:** any $y \in B$ is $2^k$ with $k \ge 1$; take $n = k-1 \in \mathbb{N}^0$.

The $+1$ is needed because $B$ starts at $2 = 2^1$, not $1 = 2^0$.

**Example 2: $|\mathbb{N}^0| = |\mathbb{Z}|$.** List the integers by zig-zagging:

$$f(n) = \begin{cases} \dfrac{n}{2} & n \text{ even} \\[4pt] -\dfrac{n+1}{2} & n \text{ odd} \end{cases}
\qquad 0\mapsto0,\ 1\mapsto-1,\ 2\mapsto1,\ 3\mapsto-2,\ 4\mapsto2,\ \dots$$

Evens cover $0,1,2,\dots$ and odds cover $-1,-2,\dots$ with no repeats, so $f$ is a bijection.

## 6. Traps

> [!warning] A non-bijection proves nothing
> The inclusion $g : B \to A$, $g(x) = x$, from powers of two into $\mathbb{N}^0$ is injective but **not surjective** ($0,1,3,5,\dots$ are missed). It does not show $|A| = |B|$, even though that's true. You need **one** correct bijection.

- $B \subsetneq A$ is **not** a valid reason for $|B| < |A|$ when the sets are infinite.
- "We cannot define a bijection" must be proven, not assumed.

## 7. Comparing sizes: $\le$ and Schröder–Bernstein

$$|A| \le |B| \iff \text{there is an injection } A \hookrightarrow B.$$

**Schröder–Bernstein theorem.** If there are injections $A \hookrightarrow B$ and $B \hookrightarrow A$, then $|A| = |B|$. You get a bijection without having to construct it.

**Example: $|(a,b)| = |[a,b]|$ for $a<b$.**

- $(a,b) \hookrightarrow [a,b]$: inclusion $x \mapsto x$.
- $[a,b] \hookrightarrow (a,b)$: shrink into the middle half, $x \mapsto \dfrac{x}{2} + \dfrac{a+b}{4}$, whose image is $\left[\tfrac{3a+b}{4}, \tfrac{a+3b}{4}\right] \subseteq (a,b)$.

Adding or removing finitely many points does not change the size of an infinite set.

**Example: $|(0,1)|=|\mathbb{R}|$.** An explicit bijection:
$$f:(0,1)\to\mathbb{R},\qquad f(x)=\tan\!\Big(\pi\big(x-\tfrac12\big)\Big).$$
$x\mapsto\pi(x-\frac12)$ is a bijection $(0,1)\to(-\frac\pi2,\frac\pi2)$, and $\tan$ is a bijection $(-\frac\pi2,\frac\pi2)\to\mathbb{R}$; a composition of bijections is a bijection. Combined with $|(a,b)|=|[a,b]|$, every interval with more than one point has the same size as $\mathbb{R}$.

## 8. Countable vs uncountable

- **Countable:** finite, or same cardinality as $\mathbb{N}^0$ (the elements can be listed). Examples: $\mathbb{N}^0$, $\mathbb{Z}$, powers of two.
- **Uncountable:** infinite but not listable. Example: $\mathbb{R}$ (Cantor's diagonal argument), so $|\mathbb{N}^0| < |\mathbb{R}|$.

> [!warning] Not every infinite set is the same size
> "Every infinite subset of $\mathbb{R}$ has the same cardinality as $\mathbb{R}$" is **false**: $\mathbb{N}^0 \subseteq \mathbb{R}$ is infinite but countable.

## 9. Practice (from quizzes)

**Q1.** $|A| \neq |B|$. Which is true? → "Every $f : A \to B$ fails to be bijective." (§4)

**Q2.** $A = \mathbb{N}^0$, $B$ = powers of two. Same cardinality? → Only "Yes, $f(n) = 2^{n+1}$ is a bijection." The inclusion map option is wrong because it is not surjective. (§5, §6)

**Q3.** True/false:
- $A$ finite, $B \subseteq A \Rightarrow |B| \le |A|$: **True**.
- $A$ finite has a proper subset $B$ with $|B| = |A|$: **False** (only infinite sets can do this).
- Injections $A \hookrightarrow B$ and $B \hookrightarrow A \Rightarrow |A| = |B|$: **True** (Schröder–Bernstein, §7).
- Every infinite subset of $\mathbb{R}$ has the same cardinality as $\mathbb{R}$: **False** ($\mathbb{N}^0$ is countable, §8).
- $|(a,b)| = |[a,b]|$ for $a<b$: **True** (§7).

## Quick self-check

1. What is $|\{\varnothing, \{\varnothing\}\}|$?

> [!success]- Solution
> $2$. $\varnothing$ and $\{\varnothing\}$ are different elements: the first has no elements, the second has one.

2. What is the difference between a one-to-one function and a one-to-one correspondence?

> [!success]- Solution
> A **one-to-one function** is injective (no collisions). A **one-to-one correspondence** is a bijection (injective **and** surjective). Only the second shows $|A| = |B|$.

3. Give a bijection $\mathbb{N}^0 \to \{1,3,5,7,\dots\}$.

> [!success]- Solution
> $f(n) = 2n + 1$. Injective: $2n_1 + 1 = 2n_2 + 1 \Rightarrow n_1 = n_2$. Surjective: an odd $m$ is hit by $n = \frac{m-1}{2} \in \mathbb{N}^0$.

4. Why doesn't $B \subsetneq A$ prove $|B| < |A|$ for infinite sets?

> [!success]- Solution
> An infinite set can be in bijection with a proper subset of itself. E.g. the evens $\subsetneq \mathbb{N}^0$, yet $n \mapsto 2n$ is a bijection $\mathbb{N}^0 \to$ evens, so they have the same cardinality. (Only finite sets can't do this.)

## 10. Diagonal argument: $\{0,1\}^\omega$ is uncountable

$\{0,1\}^\omega$ = the set of all **infinite** binary strings, e.g. $0101\ldots$, $1111\ldots$.

**Equivalent definition of countable:** $A$ is countable $\iff$ there is an injection $f : A \hookrightarrow \mathbb{N}^0$. Each element gets its own natural-number "ticket", so the elements can be listed $s_1, s_2, s_3, \dots$ (matches §8: finite or same size as $\mathbb{N}^0$).

**Proof (contradiction).**
1. Assume $\{0,1\}^\omega$ is countable, so there is an injection $f : \{0,1\}^\omega \hookrightarrow \mathbb{N}^0$.
2. Write $s_{f(b)} = b$ for each $b \in \{0,1\}^\omega$, giving a list $\{0,1\}^\omega = \{s_1, s_2, \dots\}$ that supposedly contains **every** string.
3. Let $s_j^i$ be the $i$th bit of $s_j$. Build $b$ by **flipping the diagonal**:
$$b^i = \begin{cases} 1 & \text{if } s_i^i = 0 \\ 0 & \text{if } s_i^i = 1 \end{cases}$$
4. Then $b \neq s_i$ for every $i$: they differ at bit $i$.
5. So $b \notin \{s_1, s_2, \dots\}$, yet $b$ is an infinite binary string. Contradiction with the list containing all strings. $\blacksquare$

> [!warning] Why flip?
> Copying the diagonal ($b^i = s_i^i$) proves nothing: that $b$ could already be on the list. Flipping guarantees $b$ disagrees with $s_i$ in position $i$, so it can't equal **any** listed string. Same trick shows $\mathbb{R}$ is uncountable.

> [!note] Careful with the conclusion
> $b$ **is** in $\{0,1\}^\omega$ (it's a binary string). What fails is $b \in \{s_1, s_2, \dots\}$, the list. That's the contradiction.


---

## 11. More on comparing sizes (reading)

- **Finite sets.** $|S| \le |T| \iff n \le m$ for $|S| = n$, $|T| = m$ (pigeonhole for ⇒).
- **Subsets.** $S \subseteq T \Rightarrow |S| \le |T|$ (inclusion map). So $|\mathbb{N}^0| \le |\mathbb{Z}| \le |\mathbb{Q}| \le |\mathbb{R}|$.
- **Surjections (Proposition 10).** If $S, T \ne \varnothing$ and $f : S \to T$ is surjective, then $|T| \le |S|$: $f$ has a right inverse $g$ ($f \circ g = \mathrm{id}_T$), and $g$ is injective.
- **Equality.** $|S| = |T| \iff$ there is a bijection; this is **transitive** since $g \circ f$ of bijections is a bijection.
- **Strict.** $|S| < |T|$: there is an injection $S \to T$ but no surjection $S \to T$.

**Example 12.** $|2\mathbb{N}^0| = |\mathbb{N}^0|$ where $2\mathbb{N}^0 = \{0,2,4,\dots\}$, via $f(n) = 2n$: injective ($2n = 2m \Rightarrow n = m$) and surjective (every even $k = 2m$). An infinite set can have the same size as a proper subset.

**Example 16.** $|(0,1)| = |[0,1]|$ by Cantor–Schröder–Bernstein: inclusion $(0,1) \hookrightarrow [0,1]$, and $f(t) = \frac{1 + 2t}{4}$ maps $[0,1]$ injectively onto $\left[\frac14, \frac34\right] \subseteq (0,1)$.

## 12. Countable sets

**Definition 17.** $S$ is **countable** if $|S| \le |\mathbb{N}^0|$ (an injection $S \hookrightarrow \mathbb{N}^0$ exists), and **countably infinite** if $|S| = |\mathbb{N}^0|$.

**Proposition 18.** A countable union of pairwise disjoint countable sets is countable.

*Proof.* Let $g : I \hookrightarrow \mathbb{N}^0$ index the sets $A_i$ and $f_i : A_i \hookrightarrow \mathbb{N}^0$. Define

$$f : \bigcup_{i \in I} A_i \to \mathbb{N}^0, \qquad a \mapsto 2^{g(i)}\, 3^{f_i(a)} \quad (a \in A_i).$$

Disjointness makes $i$ unique, so $f$ is well-defined. $2^n 3^m = 2^r 3^s \Rightarrow n = r,\ m = s$ by unique prime factorization ([[W08 - Primes and the Fundamental Theorem of Arithmetic|FTA]]), so $f$ is injective. $\blacksquare$

**Consequences.**

- $\mathbb{N}^0 \times \mathbb{N}^0 = \bigcup_{n} \{n\} \times \mathbb{N}^0$ is countable.
- **$|\mathbb{Z}| = |\mathbb{N}^0|$ (Theorem 20).** $n \mapsto (|n|, \operatorname{sgn}(n) + 1)$ is an injection $\mathbb{Z} \hookrightarrow \mathbb{N}^0 \times \mathbb{N}^0$, so $|\mathbb{Z}| \le |\mathbb{N}^0|$; with $\mathbb{N}^0 \subseteq \mathbb{Z}$ and CSB, equality. (Compare the explicit zig-zag bijection in §5.)
- **$|\mathbb{Q}| = |\mathbb{N}^0|$ (Theorem 21).** $\frac{p}{q} \mapsto (p, q) \in \mathbb{Z} \times \mathbb{Z}^+$, using **lowest terms** with the sign on $p$, is injective. Lowest terms is what makes it well-defined (see the fractions example in [[W04 - Relations|Relations]]).

**More countable sets.**
- **Finite products:** if $A,B$ are countable, so is $A\times B$ (inject into $\mathbb{N}^0\times\mathbb{N}^0$, which is countable). By repeating, $A_1\times\cdots\times A_k$ is countable.
- **Algebraic numbers** (roots of non-zero integer polynomials) are countable: for each degree $n$ there are countably many polynomials (tuples in $\mathbb{Z}^{n+1}$), each with at most $n$ roots, and a countable union of countable sets is countable. Since $\mathbb{R}$ is uncountable (§13), "most" reals are not algebraic.

> [!warning] Why the diagonal argument fails for $\mathbb{Q}$
> Given a list of all rationals, the diagonal number $s$ differs from every listed number, but nothing forces $s$ to be **rational**: its decimal expansion need not repeat. So $s\notin$ list is no contradiction. The argument only works when the constructed object is guaranteed to lie in the set ($[0,1]$, binary strings).

## 13. $\mathbb{R}$ is uncountable (Theorem 22, decimal diagonal)

It suffices to show $[0,1]$ is uncountable. Suppose $r_1, r_2, r_3, \dots$ lists all of it, with $r_i = 0.d^i_1 d^i_2 d^i_3\cdots$. Define $s = 0.s_1 s_2 s_3 \cdots$ with

$$s_i = \begin{cases} 2 & d^i_i = 1 \\ 1 & d^i_i \ne 1 \end{cases}$$

Then $s$ differs from $r_i$ in digit $i$ for every $i$, so $s$ is not on the list. Contradiction. Hence $|\mathbb{N}^0| < |\mathbb{R}|$.

> [!tip] Why only digits 1 and 2?
> Some reals have two decimal expansions ($0.0999\ldots = 0.1000\ldots$). Avoiding $0$ and $9$ guarantees "different digits" really means "different number". Same trick as the binary-string argument in §10.

**Intuition:** each natural number is finite data; a real generally needs infinitely many digits.

## 14. Power sets and Cantor's Theorem

**Definition 23.** $\mathcal{P}(S)$ is the set of all subsets of $S$, also written $2^S$.

**Theorem 24 (Cantor).** For every set $S$, $|S| < |\mathcal{P}(S)|$.

*Proof.* $x \mapsto \{x\}$ is an injection $S \hookrightarrow \mathcal{P}(S)$. Suppose $f : S \to \mathcal{P}(S)$ were surjective, and let

$$D = \{x \in S : x \notin f(x)\}.$$

For any $a \in S$: if $a \in f(a)$ then $a \notin D$; if $a \notin f(a)$ then $a \in D$. Either way $f(a) \ne D$, so $D$ is never hit. Contradiction. $\blacksquare$

**Consequences.**

- **No largest cardinal:** $|S| < |\mathcal{P}(S)| < |\mathcal{P}(\mathcal{P}(S))| < \cdots$
- **No set of all sets:** if $V$ were one, $\mathcal{P}(V) \subseteq V$ gives $|\mathcal{P}(V)| \le |V|$, contradicting Cantor. The collection of all sets is a **proper class**.
- **Continuum hypothesis:** whether some cardinal lies strictly between $|\mathbb{N}^0|$ and $|\mathbb{R}|$ can be neither proved nor disproved from the standard axioms.
