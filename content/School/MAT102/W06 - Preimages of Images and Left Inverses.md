---
course: MAT102
type: topic-notes
topics:
  - preimage
  - image
  - injective
  - contrapositive
  - identity function
  - left inverse
  - well-defined
tags:
  - MAT102
  - functions
  - injective
  - proofs
added: 2026-10-22
prereq:
  - "[[W05 - Injectivity, Surjectivity, and Bijectivity|Injectivity, Surjectivity, and Bijectivity]]"
next: "[[W06 - Cardinality|Cardinality]]"
week: W06
---

# Preimages of Images and Left Inverses


See also: [[W05 - Injectivity, Surjectivity, and Bijectivity|Injectivity, Surjectivity, and Bijectivity]] · [[W00 - 102 Course Definitions and Proof Structures|102 Course Definitions and Proof Structures]] · [[W04 - Proof by Contradiction|Proof by Contradiction]]

> [!summary]
> Two results about injective functions: (1) $f^{-1}(f(U)) = U$ for every $U$ exactly when $f$ is injective, and (2) an injective $f$ with non-empty domain has a **left inverse** $g$ with $g \circ f = \mathrm{id}_X$.

## 0. The proof routine (lecture)

Before doing any thinking, plant three flags:

1. **Assume your assumptions.** Write the hypotheses down, so you notice which ones you must use.
2. **Expand your definitions.** Always, literally always.
3. **Write what you want to show**, ideally as an *instruction* ("find…", "show $x \in U$").

If 2 and 3 are done well, the path between them is usually short.

> [!warning] Unused hypothesis = suspicious proof
> If the theorem says "$f$ injective" and your proof never uses injectivity, the proof is almost certainly wrong, because the statement is false for non-injective $f$.

---

## 1. Theorem: $f^{-1}(f(U)) = U$ iff $f$ is injective

Let $f : A \to B$. Then

$$f \text{ is injective} \iff f^{-1}(f(U)) = U \ \text{ for all } U \subseteq A.$$

### Unpacking: three statements in one

"If and only if" is two implications, and set equality is two inclusions:

1. $f$ injective $\Rightarrow U \subseteq f^{-1}(f(U))$
2. $f$ injective $\Rightarrow f^{-1}(f(U)) \subseteq U$
3. both inclusions for all $U$ $\Rightarrow f$ injective

Statement 1 is **always true**, injective or not (proved last class): if $u \in U$ then $f(u) \in f(U)$, so $u \in f^{-1}(f(U))$.

### Definitions used

$$f(U) = \{\, b \in B : \exists y \in U,\ f(y) = b \,\}, \qquad f^{-1}(V) = \{\, x \in A : f(x) \in V \,\}$$

### (⇒) Proof of $f^{-1}(f(U)) \subseteq U$

Let $f$ be injective and $U \subseteq A$. Let $x \in f^{-1}(f(U))$. By definition of preimage, $x \in A$ and $f(x) \in f(U)$.

**Want:** $x \in U$.

By definition of image, there exists $y \in U$ with

$$f(y) = f(x).$$

Since $f$ is injective, $y = x$. Since $y \in U$, we get $x \in U$. $\blacksquare$

> [!important] The tempting wrong step
> "$f(x) \in f(U)$, so $x \in U$" is **false in general**. $f(x) \in f(U)$ only says $f(x)$ is hit by *some* element of $U$, not necessarily by $x$. Injectivity is exactly what forces that element to be $x$.

### (⇐) Proof by contrapositive

Contrapositive of $P \Rightarrow Q$ is $\lnot Q \Rightarrow \lnot P$. So we prove: if $f$ is **not** injective, then there is some $U$ with $f^{-1}(f(U)) \ne U$.

**Negating injectivity.** Injective:

$$\forall x_1, x_2 \in A,\ f(x_1) = f(x_2) \Rightarrow x_1 = x_2.$$

Not injective (negation of $p \Rightarrow q$ is $p \land \lnot q$, not another if-then):

$$\exists x_1, x_2 \in A,\ f(x_1) = f(x_2) \ \land\ x_1 \ne x_2.$$

**Proof.** Suppose $f$ is not injective, so pick $x_1 \ne x_2$ with $f(x_1) = f(x_2)$. Let $U = \{x_1\}$. Then

$$f(U) = \{f(x_1)\}, \qquad f^{-1}(f(U)) = \{x \in A : f(x) = f(x_1)\} \ni x_1, x_2.$$

So $x_2 \in f^{-1}(f(U))$ but $x_2 \notin U$, hence $f^{-1}(f(U)) \not\subseteq U$. $\blacksquare$

> [!tip] Where the idea comes from
> Non-injective means two inputs collide. Put **one inside $U$ and one outside**, and the preimage drags the outside one back in. Standard example: $f(x) = x^2$, $U = [0,2]$: $f(U) = [0,4]$ but $f^{-1}([0,4]) = [-2,2] \supsetneq U$.

---

## 2. Identity function and left inverses

The **identity function** on $X$:

$$\mathrm{id}_X : X \to X, \qquad \mathrm{id}_X(x) = x.$$

$g : Y \to X$ is a **left inverse** of $f : X \to Y$ if

$$g \circ f = \mathrm{id}_X, \quad \text{i.e. } g(f(x)) = x \ \text{ for all } x \in X.$$

### Worked example (independent exercise)

$X = \{1,2,3\}$, $Y = \{a,b,c,d\}$, $f(1) = b$, $f(2) = d$, $f(3) = c$.

Plug in each $x$: $g(f(x)) = x$ forces

$$g(b) = 1, \quad g(d) = 2, \quad g(c) = 3.$$

$a$ is not hit by $f$, but $g$ must still send it somewhere, because a function $Y \to X$ needs an output for **every** element of its domain $Y$. Any choice works: $g(a) \in \{1,2,3\}$.

- So there are **3** different left inverses: left inverses are **not unique** when $f$ is not surjective.
- E.g. with $g(a) = 2$: $g$ is not injective ($g(a) = g(d)$) but is surjective.
- $g(a)$ never matters for $g \circ f$, since $f(x)$ is never $a$.

### Theorem: injective $\Rightarrow$ left inverse exists

Let $f : X \to Y$ be injective and $X \ne \varnothing$. Then there exists $g : Y \to X$ with $g \circ f = \mathrm{id}_X$.

**Want to show, as an instruction:** *construct* a function $g : Y \to X$ (well-defined, correct domain and codomain) with $g(f(x)) = x$ for all $x$.

**Proof.** Since $X \ne \varnothing$, fix some $x_0 \in X$. Let $y \in Y$. Two cases:

- **Case 1: $y \in f(X)$.** Then $y = f(x)$ for some $x \in X$, and this $x$ is **unique** because $f$ is injective. Define $g(y) = x$.
- **Case 2: $y \notin f(X)$.** Define $g(y) = x_0$.

Every $y$ gets exactly one output, so $g : Y \to X$ is a well-defined function. For any $x \in X$, $f(x)$ falls in Case 1 with preimage $x$, so $g(f(x)) = x$. Hence $g \circ f = \mathrm{id}_X$. $\blacksquare$

| Hypothesis | Where it's used |
|---|---|
| $f$ injective | Case 1: the $x$ with $f(x) = y$ is unique, so $g(y)$ is well-defined |
| $X \ne \varnothing$ | Case 2: there must be some $x_0$ to send unhit $y$'s to |

> [!note] Well-defined
> "Same input $\Rightarrow$ same output": $y_1 = y_2 \Rightarrow g(y_1) = g(y_2)$. Equivalently (contrapositive): different outputs must come from different inputs. If $f$ weren't injective, a collision $f(x_1) = f(x_2) = y$ would ask $g(y)$ to be both $x_1$ and $x_2$.

### Related fact (converse)

If $g \circ f = \mathrm{id}_X$ for some $g$, then $f$ is injective: $f(x_1) = f(x_2) \Rightarrow g(f(x_1)) = g(f(x_2)) \Rightarrow x_1 = x_2$.

## Quick self-check

1. Which of the three sub-statements of the theorem is true for every function?

> [!success]- Solution
> Statement 1: $U \subseteq f^{-1}(f(U))$. If $u \in U$, then $f(u) \in f(U)$, so $u \in f^{-1}(f(U))$. Injectivity is never used.

2. Why can't you go straight from $f(x) \in f(U)$ to $x \in U$?

> [!success]- Solution
> $f(x) \in f(U)$ only says $f(x) = f(y)$ for **some** $y \in U$, which need not be $x$. Example: $f(x) = x^2$, $U = [0,2]$, $x = -1$: $f(-1) = 1 \in f(U)$ but $-1 \notin U$. Injectivity is what turns $f(x) = f(y)$ into $x = y$.

3. Write the negation of "$f$ is injective" with quantifiers.

> [!success]- Solution
> $$\exists x_1, x_2 \in A,\ f(x_1) = f(x_2) \ \land\ x_1 \ne x_2.$$

4. In the worked example, why must $g(a)$ be defined at all?

> [!success]- Solution
> $g : Y \to X$ is a function, so it needs an output for **every** element of its domain $Y$, and $a \in Y$. It doesn't matter for $g \circ f$ that $f$ never hits $a$.

5. What breaks in the left-inverse construction if $X = \varnothing$ but $Y \ne \varnothing$?

> [!success]- Solution
> There's no $x_0$ to pick. Every $y \in Y$ is in Case 2 (since $f(X) = \varnothing$) and has nowhere to go. In fact no function $Y \to \varnothing$ exists at all when $Y \ne \varnothing$, so no left inverse exists.


---

## 3. Two-sided inverses (Cardinality reading)

### Identities and inverses in general

For a binary operation, an **identity** leaves inputs unchanged ($x + 0 = x$, $x \cdot 1 = x$), and an **inverse** of $x$ combines with $x$ to give the identity ($-x$ for $+$, $\frac1x$ for $\times$). Inverses need not exist: $0$ has no multiplicative inverse.

For functions, the operation is **composition** and the identity is $\mathrm{id}$:

$$(f \circ g)(x) = f(g(x)) \qquad (g \text{ is applied first}).$$

### Definition

$g : T \to S$ is **the inverse** of $f : S \to T$ if

$$f \circ g = \mathrm{id}_T \quad \text{and} \quad g \circ f = \mathrm{id}_S.$$

Then $f$ is **invertible** and we write $g = f^{-1}$.

> [!warning] Two meanings of $f^{-1}$
> $f^{-1}(V)$ for a **set** $V$ is a preimage and always exists. $f^{-1}$ as a **function** exists only when $f$ is invertible.

### Proposition 5: invertible $\iff$ bijective

*(⇐)* If $f$ is bijective, for each $t \in T$ the preimage $f^{-1}(\{t\})$ is non-empty (surjective) and has exactly one element $s_t$ (injective). Define $g(t) = s_t$. Then $f(g(t)) = t$, and $g(f(s)) = s$ by injectivity. $\blacksquare$

*(⇒)* Uses the converse fact from §2 together with its surjective counterpart.

| Has a… | Equivalent to $f$ being… |
|---|---|
| left inverse ($g \circ f = \mathrm{id}_S$) | injective (domain non-empty) |
| right inverse ($f \circ g = \mathrm{id}_T$) | surjective |
| two-sided inverse | bijective |

### Examples (Example 3)

1. $f : \mathbb{R}^2 \to \mathbb{R}^2$, $f(x,y) = (2x,\ x - y)$ is invertible with
$$f^{-1}(z,w) = \left(\frac z2,\ \frac{z - 2w}{2}\right), \qquad f^{-1}(f(x,y)) = \left(x,\ \frac{2x - 2(x-y)}{2}\right) = (x,y).$$
2. $g : \mathbb{Z}^+ \to \mathbb{Z}^+$, $g(n) = 10^{n+1} + 1$ is **not** invertible: $10^{k+1} + 1 = 11$ forces $k = 0 \notin \mathbb{Z}^+$, so $11$ is never hit (not surjective).
3. $h : \mathbb{Z}^+ \to \mathbb{Z}^+$, $h(n)$ = smallest prime $\ge n$, is **not** invertible: $h(4) = h(5) = 5$ (not injective).


---

## Lecture activities (Weeks 5–6): examples behind the conjecture

Before proving $U\subseteq f^{-1}(f(U))$ (with equality iff $f$ is injective), the worksheet tests examples, all $f:\mathbb{R}\to\mathbb{R}$:

| $f(x)$ | $U$ | $f(U)$ | $f^{-1}(f(U))$ | Equal to $U$? |
|---|---|---|---|---|
| $x$ | $[-1,1]$ | $[-1,1]$ | $[-1,1]$ | ✓ |
| $x^2$ | $[0,2]$ | $[0,4]$ | $[-2,2]$ | ✗ (picks up negatives) |
| $\sin x$ | $[0,\pi]$ | $[0,1]$ | $\bigcup_{k\in\mathbb{Z}}[2k\pi,(2k+1)\pi]$ | ✗ |
| $x^3$ | $[-1,1]$ | $[-1,1]$ | $[-1,1]$ | ✓ |

**Conjecture:** always $U\subseteq f^{-1}(f(U))$; equality when $f$ is injective ($x$ and $x^3$ are injective; $x^2$ and $\sin$ are not). The proof is in §1 above.

**Why not immediately $U = f^{-1}(f(U))$?** $x\in f^{-1}(f(U))$ only says $f(x) = f(u)$ for *some* $u\in U$, not that $x$ itself is in $U$. Injectivity is exactly what turns $f(x) = f(u)$ into $x = u$.

### Additional exercise 3: images and preimages stabilise

For any $f:A\to B$, $U\subseteq A$, $V\subseteq B$:
$$f^{-1}\big(f(f^{-1}(V))\big) = f^{-1}(V), \qquad f\big(f^{-1}(f(U))\big) = f(U).$$

*Proof of the first.* ($\supseteq$) Apply $W\subseteq f^{-1}(f(W))$ with $W = f^{-1}(V)$. ($\subseteq$) We know $f(f^{-1}(V))\subseteq V$, and preimage preserves $\subseteq$, so $f^{-1}(f(f^{-1}(V)))\subseteq f^{-1}(V)$.

*Proof of the second.* ($\subseteq$) Apply $f(f^{-1}(W))\subseteq W$ with $W = f(U)$. ($\supseteq$) $U\subseteq f^{-1}(f(U))$, and image preserves $\subseteq$, so $f(U)\subseteq f(f^{-1}(f(U)))$. $\blacksquare$

So applying $f$ and $f^{-1}$ alternately changes the set at most once.
