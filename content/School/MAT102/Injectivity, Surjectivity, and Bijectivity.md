---
course: MAT102
date: 2026-10-07
type: topic-notes
topics:
  - functions
  - graph
  - image
  - preimage
  - injective
  - surjective
  - bijective
  - counterexamples
tags:
  - MAT102
  - functions
  - injective
  - surjective
source_audio: Mat102-2026-10-07.mp3
prereq:
  - "[[Sets and Propositional Logic]]"
  - "[[Quantifiers and Implications]]"
next: "[[Preimages of Images and Left Inverses]]"
week: W05
---

# Functions


See also: [[Relations]] (a function is a special kind of relation), [[Proof by Contradiction]]

> [!summary]
> Reading function notation and type-checking, graphs, images and preimages, injective / surjective / bijective, counterexample strategy, and worked practice problems.

## 1. Notation and type-checking

**The arrow.** $f : A \to B$ means $f$ takes inputs from the **domain** $A$ and its outputs live in the **codomain** $B$. It describes the "types" of input and output; the rule is given separately, e.g. $f(x) = x^2$ or $x \mapsto x^2$. (This is not the if-then arrow $\Rightarrow$.)

A function has:

- **domain** $A$: allowed inputs;
- **codomain** $B$: where outputs must live;
- a rule assigning **exactly one** output to every input.

**Well-defined.** Each input has exactly one output: $f(a) = b_1$ and $f(a) = b_2 \Rightarrow b_1 = b_2$. Different inputs *may* share an output.

**Equality of functions.** $f = g$ iff same domain, same codomain, and $f(x) = g(x)$ for every $x$ in the domain. Same rule but different codomain means **different functions**.

**Type-checking.** Always check both the input and the output. Lecture example: $F(n,x)=(nx,\,n+x)$, where an input $(n,x)$ has an integer component and a real component. To check a proposed graph element:

1. verify $(n,x)$ belongs to the domain;
2. calculate $F(n,x)$;
3. compare with the proposed output.

For example, $F(2,\pi)=(2\pi,\,2+\pi)$.

## 2. Graph

$$\Gamma(f) = \{(a, f(a)) : a \in A\} \subseteq A \times B.$$

## 3. Images and preimages

For $S\subseteq A$ and $T\subseteq B$,

$$f(S)=\{f(x):x\in S\}, \qquad f^{-1}(T)=\{x\in A:f(x)\in T\}.$$

Here $f^{-1}(T)$ means the **preimage of a set**. The function does not need to be invertible. A preimage may be empty.

Key facts:

- $f^{-1}(B)=A$, because every output lies in the codomain.
- $f(A)\subseteq B$, with equality only if $f$ is surjective.
- $f(f^{-1}(T))\subseteq T$, with equality exactly when $T \subseteq f(A)$ (every element of $T$ is actually hit).

**Lecture counterexample.** Let $f:\{1\}\to\{0,1\}$, $f(1)=1$, and $T=\{0\}$. Nothing maps to $0$, so $f^{-1}(T)=\varnothing$ and

$$f(f^{-1}(T))=f(\varnothing)=\varnothing\ne T.$$

The failure happens because $0$ is in the codomain but not in the range.

**Images and preimages with $\cup$ and $\cap$.**

| Image | Preimage |
|---|---|
| $f(U_1\cup U_2)=f(U_1)\cup f(U_2)$ | $f^{-1}(V_1\cup V_2)=f^{-1}(V_1)\cup f^{-1}(V_2)$ |
| $f(U_1\cap U_2)\subseteq f(U_1)\cap f(U_2)$ (equality if $f$ injective) | $f^{-1}(V_1\cap V_2)=f^{-1}(V_1)\cap f^{-1}(V_2)$ |
| | $f^{-1}(V^c)=\big(f^{-1}(V)\big)^c$ |

Preimages respect every set operation exactly; images can lose information at $\cap$. Example: $f(x)=x^2$, $U_1=\{-1\}$, $U_2=\{1\}$: $f(U_1\cap U_2)=f(\varnothing)=\varnothing$ but $f(U_1)\cap f(U_2)=\{1\}$.

## 4. Injective, surjective, bijective

**Injective (one-to-one).**

$$f(x_1)=f(x_2)\implies x_1=x_2.$$

At most one input hits each output; no collisions.

**Surjective (onto).**

$$\forall y\in B,\ \exists x\in A \text{ such that } f(x)=y.$$

Every codomain element is hit at least once, so $f(A) = B$.

**Bijective.** Both injective and surjective: every codomain element is hit exactly once.

| Property | Main question | How to disprove |
|---|---|---|
| Injective | Can different inputs collide? | Find $x_1 \ne x_2$ with $f(x_1)=f(x_2)$ |
| Surjective | Is every codomain element hit? | Find one $y \in B$ with no preimage |
| Bijective | Is every output hit exactly once? | Show injectivity or surjectivity fails |

Injectivity and surjectivity are **independent**, and both depend on the chosen domain and codomain.

### Standard examples

| Example | Injective? | Surjective? |
|---|---|---|
| $\mathbb{Z}\to\mathbb{Z},\ x \mapsto x+1$ | yes | yes |
| $\mathbb{Z}\to\mathbb{Z},\ x \mapsto 2x$ | yes | no (odds missed) |
| $\mathbb{Z}\to\mathbb{Z},\ x \mapsto x^2$ | no ($f(-1)=f(1)$) | no |
| $\mathbb{Z}\to\{0,1\},\ x \mapsto x \bmod 2$ | no | yes |
| $\mathbb{R}\to\mathbb{R},\ x \mapsto x^2$ | no | no (negatives missed) |
| $[0,\infty)\to[0,\infty),\ x \mapsto x^2$ | yes | yes |

### A map into a product codomain (lecture)

$$g:\mathbb R\to\mathbb R^2,\qquad g(a)=(a^2,a^3).$$

- **Injective.** If $g(a)=g(b)$, equality of ordered pairs gives $a^2=b^2$ and $a^3=b^3$. The cube coordinate forces $a=b$. The square alone loses the sign, but the cube keeps it: $g(2)=(4,8)$, $g(-2)=(4,-8)$.
- **Not surjective.** Every first coordinate is $\ge 0$, so e.g. $(-1,0)$ is never hit.

Judge a product-valued function using the **entire ordered pair**, not one coordinate in isolation.

## 5. Proof templates

**Prove injective.** Choose arbitrary $x_1,x_2\in A$. Assume $f(x_1)=f(x_2)$. Deduce $x_1=x_2$.

**Prove surjective.** Choose arbitrary $y\in B$. Construct $x\in A$. Verify $f(x)=y$.

**Disprove injective.** Exhibit $x_1\ne x_2$ with $f(x_1)=f(x_2)$.

**Disprove surjective.** Exhibit $y\in B$ and prove no $x\in A$ satisfies $f(x)=y$.

## 6. Counterexample strategy

One counterexample disproves a universal claim; proving it true needs a general argument. Keep a toolkit:

- **Identity** $f(x)=x$: simplest first test; bijective when domain = codomain.
- **Squaring** $x \mapsto x^2$: classic collision ($f(-1)=f(1)$) and missed negatives. Restricting domain/codomain changes the answer.
- **Tiny finite sets** like $\{0\}$, $\{1\}$, $\{0,1\}$: easy to build a deliberate collision or a missed element.
- **Numerical tests**: try $0,\ 1,\ -1,\ 2$, then a rational and an irrational if the claim cares about number systems.

Examples can produce a counterexample, reveal which assumption matters, or suggest the general proof.

## 7. Practice problems

### 7.1 Elements of a graph

$f : \mathbb{Z}\times\mathbb{Z} \to \mathbb{Z}$, $f(n,m) = 2n - m$. Then $((n,m),k) \in \Gamma(f)$ iff $k = 2n - m$.

- $((-1,-3),1)$: $-2 + 3 = 1$ ✓
- $((4,2),6)$: $8 - 2 = 6$ ✓
- $((1,1),3)$: $1 \neq 3$ ✗
- $((0,0),-1)$: $0 \neq -1$ ✗
- $((10,-4),16)$: $24 \neq 16$ ✗

### 7.2 Does it define a function?

1. $f_1$: student $\mapsto$ student number: **function**.
2. $f_2 : \mathbb{Q}\to\mathbb{Z}$, $f_2(a/b) = a$: **not a function**. Depends on the representation: $f_2(1/2) = 1$ but $f_2(2/4) = 2$.
3. $f_3 : \mathbb{N}\to\mathbb{N}$, nearest prime to $n$: **not a function**. $n = 4$ has two nearest primes, $3$ and $5$.
4. $f_4$: book $\mapsto$ word count: **function**.
5. $f_5 : \mathbb{R}\to\mathbb{N}$, $n \mapsto n!$: **not a function**. $n!$ is undefined for most reals (e.g. $\tfrac12$, $-1$).
6. $f_6 : \mathbb{N}\to\mathbb{R}$, $n \mapsto n!$: **function**.

### 7.3 Equality of functions

$f_1, f_2, f_3 : \{-1,0,1\}\to\{-1,0,1\}$ with $x,\ x^2,\ x^3$; and $f_4 : \{-1,0,1\}\to\mathbb{Z}$ with $x^3$.

- $f_1 = f_3$ ✓ since $x = x^3$ on $\{-1,0,1\}$.
- $f_1 \neq f_4$ and $f_3 \neq f_4$: same rule, **different codomain**.
- $f_2$ differs from the others at $x = -1$ ($f_2(-1) = 1$).

Only $f_1 = f_3$ is correct.

### 7.4 True/false about $f : A \to B$

1. If $f(a) = b_1$ and $f(a) = b_2$ then $b_1 = b_2$: **True** (well-defined).
2. There exist $f$ with $f(a_1) = f(a_2)$ for $a_1 \neq a_2$: **True** (e.g. $x^2$).
3. $f(A) = B$: **False** in general; only if $f$ is surjective.
4. $f^{-1}(B) = A$: **True**, since every $f(a) \in B$.
5. $A \subseteq B$, $g : A \to A$ with $g(a) = f(a)$ is the same function as $f$: **False**. Different codomains (and $f(a)$ need not even lie in $A$).

### 7.5 Image and preimage

$f : \mathbb{N}\times\mathbb{N}\to\mathbb{N}$, $f(m,n) = m+n$, $A = \{1,2,3\}$, with $0 \notin \mathbb{N}$.

- $f(A\times A) = \{2,3,4,5,6\}$.
- $f^{-1}(A) = \{(m,n) : m+n \in \{1,2,3\}\}$. Sum $1$ is impossible (min sum is $2$), so $f^{-1}(A) = \{(1,1),(1,2),(2,1)\}$.
- Not $A \times A$: e.g. $f(3,3) = 6 \notin A$.

### 7.6 Proof: combining two surjections

**Theorem.** $A, B$ disjoint, $f : \mathbb{N}\to A$ and $g : \mathbb{N}\to B$ **surjections**. Then $h : \mathbb{N}\to A\cup B$,

$$h(n) = \begin{cases} f\!\left(\frac{n+1}{2}\right) & n \text{ odd} \\[2pt] g\!\left(\frac{n}{2}\right) & n \text{ even} \end{cases}$$

is surjective.

*Proof.* Fix $y \in A \cup B$. Need $n$ with $h(n) = y$.

- If $y \in A$: because $f$ is **surjective**, there is $m$ with $f(m) = y$. Let $n = 2m - 1$ (odd). Then $h(n) = f\!\left(\frac{2m}{2}\right) = f(m) = y$.
- If $y \in B$: because $g$ is **surjective**, there is $k$ with $g(k) = y$. Let $n = 2k$ (even). Then $h(n) = g(k) = y$.

Hence $h$ is surjective. $\square$

**Key point:** the proof needs *existence* of a preimage, which is exactly surjectivity. Injectivity says nothing about existence, and $f, g$ cannot be injective when $A$ or $B$ is finite. Disjointness is not needed for surjectivity.

### 7.7 Surjective or not?

- $c : K\to C$, country $\mapsto$ capital: **not surjective** (most cities are not capitals).
- $p : [0,1]\to[0,2]$, $p(x) = x+1$: **not surjective** (image is $[1,2]$).
- $d : \mathbb{N}\times\mathbb{N}\to\mathbb{N}$, $d(a,b) = \gcd(a,b)$: **surjective** since $\gcd(n,n) = n$.
- $z : F(\mathbb{R})\to\mathbb{R}$, $z(f) = f(0)$: **surjective**; use the constant function $f(x) = r$.

### 7.8 Injective or not?

- $b : T\to Y$, student $\mapsto$ birthday: **not injective** (pigeonhole: more students than dates, or just two share a birthday).
- $s : T\to\mathbb{N}$, student $\mapsto$ student number: **injective**.
- $v : \mathbb{Z}^2\to\mathbb{Z}^2$, $v(a,b) = (a^2, b^3)$: **not injective**, $v(1,0) = v(-1,0)$.
- $c : \mathbb{Z}\to P_1(\mathbb{Z})$, $c(n) = (n+1)x + n$: **injective**. Equal polynomials have equal coefficients, so the constant terms give $n_1 = n_2$.

### 7.9 $f(a,b) = 2^a 3^b$ on $\mathbb{N}\times\mathbb{N}$

- **Injective:** $2^{a_1}3^{b_1} = 2^{a_2}3^{b_2}$ forces $a_1 = a_2$, $b_1 = b_2$ by unique prime factorization.
- **Not surjective:** e.g. $5$ is never hit (needs only primes $2$ and $3$).
- Hence not bijective.

## 8. Takeaways

- Injective = **inputs don't collide**; surjective = **codomain fully covered**. Independent properties.
- Domain and codomain are part of the function; changing either can change injectivity or surjectivity.
- A rule that depends on how an element is written (like $a/b \mapsto a$) is not well-defined.
- A preimage may be empty, and $f(f^{-1}(T))=T$ is not automatic.
- For ordered-pair outputs, compare all coordinates.
- One counterexample disproves a universal claim; a proof needs a general argument.

## Quick self-check

1. Why is $x\mapsto x^2$ not injective on $\mathbb R$?

> [!success]- Solution
> $(-1)^2 = 1^2 = 1$ but $-1 \ne 1$: two inputs collide.

2. Why is it not surjective as a map $\mathbb R\to\mathbb R$?

> [!success]- Solution
> $x^2 \ge 0$ for all real $x$, so negative numbers like $-1$ are never hit.

3. Give a codomain restriction that makes it surjective.

> [!success]- Solution
> $\mathbb{R} \to [0, \infty)$. Every $y \ge 0$ is hit by $x = \sqrt{y}$.

4. Give a domain restriction that makes it injective.

> [!success]- Solution
> $[0, \infty) \to \mathbb{R}$. If $x_1^2 = x_2^2$ with $x_1, x_2 \ge 0$, then $x_1 = x_2$. ($(-\infty, 0]$ also works.)

5. For what sets $T\subseteq B$ does $f(f^{-1}(T))=T$ hold?

> [!success]- Solution
> Exactly when $T \subseteq f(A)$ (every element of $T$ is actually hit). In general $f(f^{-1}(T)) = T \cap f(A)$. So it holds for **all** $T$ iff $f$ is surjective.

6. Why is $a\mapsto(a^2,a^3)$ injective even though $a\mapsto a^2$ is not?

> [!success]- Solution
> Equal ordered pairs need **both** coordinates equal. If $(a^2, a^3) = (b^2, b^3)$, then $a^3 = b^3$, and cubing is injective, so $a = b$. The second coordinate separates $a$ and $-a$, which the first can't.


---

## 9. Compositions (Functions reading)

For $g : A \to B$ and $f : B \to C$, $(f \circ g)(x) = f(g(x))$.

**Proposition 13.** $f, g$ injective $\Rightarrow f \circ g$ injective.

*Proof.* If $f(g(x)) = f(g(y))$, injectivity of $f$ gives $g(x) = g(y)$, then injectivity of $g$ gives $x = y$. $\blacksquare$

**Proposition 17.** $f, g$ surjective $\Rightarrow f \circ g$ surjective.

*Proof.* Let $c \in C$. $f$ surjective: pick $b$ with $f(b) = c$. $g$ surjective: pick $a$ with $g(a) = b$. Then $f(g(a)) = c$. $\blacksquare$

**Corollary.** A composition of bijections is a bijection.

> [!tip] Arrow picture
> Injective: each codomain element has **at most one** arrow in. Surjective: **at least one**. Bijective: **exactly one**.

### Reading examples (Example 12 / 16)

- $f : \{0,1,2,3,4\} \to \{0,1,2,3,4\}$, $n \mapsto$ remainder of $n^3$ mod $5$: outputs $0, 1, 3, 2, 4$, all different and all hit, so **bijective**.
- $g : \mathcal{P}(\mathbb{Z}^+) \to \mathbb{Z}^+$, $S \mapsto \min S$ (with $\varnothing \mapsto 1$): **surjective** ($g(\{n\}) = n$), **not injective** ($g(\{1\}) = g(\{1,2\}) = 1$).
- $h : (0,\infty) \to \mathbb{R}$, $x \mapsto x^2$: **injective** (positivity kills the $\pm$), **not surjective** (no negatives).


---

### Partial converses and a useful fact

- If $f\circ g$ is **injective**, then $g$ (the first map applied) is injective: $g(x)=g(y)\Rightarrow f(g(x))=f(g(y))\Rightarrow x=y$. $f$ need not be.
- If $f\circ g$ is **surjective**, then $f$ (the last map applied) is surjective (see the Week 5 polls below).
- A **strictly increasing** $f:\mathbb{R}\to\mathbb{R}$ is injective: if $x\neq y$, say $x<y$, then $f(x)<f(y)$, so $f(x)\ne f(y)$.

## Lecture activities (Week 5 polls)

**$f:\mathbb{Z}\to\mathbb{R}$, $f(x)=x^2$.**
- $f(\{-1,0,1\}) = \{0,1\}$ ✓ true.
- Range is $\mathbb{R}$: false (range $=\{0,1,4,9,\dots\}$).
- Bijective: false (not injective: $f(-1)=f(1)$; not surjective).
- $f^{-1}([0,1]) = [-1,1]$: **false**. The preimage lives in the **domain** $\mathbb{Z}$: $f^{-1}([0,1]) = \{-1,0,1\}$.

**Graph of $f:\mathbb{Z}\times\mathbb{R}\to\mathbb{R}\times\mathbb{R}$, $f(n,x) = (nx,\ n+x)$.** An element of $\Gamma(f)$ has the form $\big((n,x),\ f(n,x)\big)$.
- $((-1,0),(0,-1))$: $f(-1,0) = (0,-1)$ ✓ **in the graph.**
- $((2,\pi),(2\pi,\pi/2))$: second coordinate should be $2+\pi$ ✗.
- $((10,\sqrt2),(\sqrt{400},10+\sqrt2))$: first coordinate should be $10\sqrt2\neq 20$ ✗.
- $((0,0),(0,1))$: $f(0,0)=(0,0)$ ✗.

**Which is NOT always true for $f:A\to B$?** $f(f^{-1}(V)) = V$ for every $V\subseteq B$. It fails unless $f$ is surjective; only $\subseteq$ holds in general. The others are always true: $U\subseteq f^{-1}(f(U))$; $f^{-1}(U\cup V) = f^{-1}(U)\cup f^{-1}(V)$; $U\subseteq V\Rightarrow f(U)\subseteq f(V)$.

**$f:\mathbb{Z}\to\mathbb{Z}\times\mathbb{Z}$, $f(k) = (k^2,k^3)$:** injective but not surjective. *Injective:* $k^3$ alone determines $k$. *Not surjective:* $(0,1)$ is never hit (first coordinate $0$ forces $k=0$, so the second is $0$).

**If $f\circ g$ is surjective (with $g:A\to B$, $f:B\to C$), then $f$ is surjective.** For $c\in C$, some $a$ has $f(g(a)) = c$, so $b = g(a)$ works. $g$ need not be surjective: $A=C=\{1\}$, $B=\{1,2\}$, $g(1)=1$, $f\equiv1$.

**$h(x) = (f(x), g(x))$ for $f,g:A\to B$:**
- If $f$ is injective then $h$ is injective ✓: $h(x)=h(y)\Rightarrow f(x)=f(y)\Rightarrow x=y$.
- $f,g$ surjective $\Rightarrow h$ surjective ✗: $f=g=\mathrm{id}$ on $\{1,2\}$; $h(x) = (x,x)$ misses $(1,2)$.
- $h$ injective $\Rightarrow f,g$ injective ✗: $f$ constant, $g=\mathrm{id}$; $h$ is injective but $f$ isn't.
