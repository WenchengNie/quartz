---
course: MAT102
type: topic-notes
topics:
  - relations
  - reflexive
  - symmetric
  - antisymmetric
  - transitive
  - equivalence relations
  - equivalence classes
  - partitions
  - partial orders
tags:
  - MAT102
  - relations
prereq:
  - "[[Sets and Propositional Logic]]"
  - "[[Quantifiers and Implications]]"
next: "[[Injectivity, Surjectivity, and Bijectivity]]"
week: W04
---

# Relations


See also: [[Injectivity, Surjectivity, and Bijectivity]] (a function is a special relation), [[Proof by Contradiction]]

> [!summary]
> What a relation is, the four properties (reflexive, symmetric, antisymmetric, transitive), how to prove and disprove each, equivalence relations and classes, and partial orders.

## 1. Definition

A **relation from $A$ to $B$** is any subset

$$R \subseteq A \times B.$$

We write $a \mathrel{R} b$ to mean $(a,b) \in R$.

A **relation on $A$** is a subset $R \subseteq A \times A$.

**Link to functions.** A function $f : A \to B$ is a relation from $A$ to $B$ (its graph $\Gamma(f)$) in which every $a \in A$ is related to **exactly one** $b \in B$.

For a relation $R\subseteq A\times B$:

- **Left-total:** every $a\in A$ is related to **at least one** $b$: $\forall a\ \exists b,\ a\mathrel{R}b$.
- **Functional:** every $a$ is related to **at most one** $b$: $a\mathrel{R}b_1\wedge a\mathrel{R}b_2\Rightarrow b_1=b_2$.

A function is exactly a relation that is **left-total and functional** ("exactly one" = "at least one" + "at most one").

## 2. The four properties (for $R$ on $A$)

| Property | Definition | To disprove, find… |
|---|---|---|
| **Reflexive** | $\forall a \in A,\ a \mathrel{R} a$ | some $a$ with $\neg(a \mathrel{R} a)$ |
| **Symmetric** | $\forall a,b \in A,\ a \mathrel{R} b \Rightarrow b \mathrel{R} a$ | $a,b$ with $a \mathrel{R} b$ but $\neg(b \mathrel{R} a)$ |
| **Antisymmetric** | $\forall a,b \in A,\ (a \mathrel{R} b \wedge b \mathrel{R} a) \Rightarrow a=b$ | $a \neq b$ with $a \mathrel{R} b$ and $b \mathrel{R} a$ |
| **Transitive** | $\forall a,b,c \in A,\ (a \mathrel{R} b \wedge b \mathrel{R} c) \Rightarrow a \mathrel{R} c$ | $a,b,c$ with $a \mathrel{R} b$, $b \mathrel{R} c$, but $\neg(a \mathrel{R} c)$ |

The "to disprove" column is just the negation of each definition (negate $\forall$ to $\exists$, and $P \Rightarrow Q$ to $P \wedge \neg Q$).

### Common pitfalls

> [!tip] Antisymmetry, read another way
> The contrapositive of the definition is: for $a \neq b$, it is **not** the case that both $a \mathrel{R} b$ and $b \mathrel{R} a$. Two *different* elements can be related in at most one direction; only $a \mathrel{R} a$ may "go both ways". In a graph of the relation, this means no two-way arrows between distinct points (loops are allowed).

- **Symmetric and antisymmetric are not opposites.** Equality $=$ is both. A relation can also be neither: on $\{1,2,3\}$, $R=\{(1,2),(2,1),(1,3)\}$ is not symmetric ($1R3$ but not $3R1$) and not antisymmetric ($1R2$, $2R1$, $1\neq 2$).
- **Reflexive needs every element.** On $A=\{1,2\}$, $\{(1,1)\}$ is not reflexive because $(2,2)$ is missing.
- **Vacuous truth.** The empty relation on a nonempty $A$ is symmetric, antisymmetric and transitive (no pair ever triggers the hypothesis), but not reflexive.
- **The set matters.** "Divides" is antisymmetric on $\mathbb{N}$ but not on $\mathbb{Z}$: $2 \mid -2$ and $-2 \mid 2$ with $2 \neq -2$.

## 3. Example table

| Relation | Refl. | Symm. | Antisymm. | Trans. |
|---|---|---|---|---|
| $a = b$ on $\mathbb{Z}$ | ✓ | ✓ | ✓ | ✓ |
| $a \le b$ on $\mathbb{Z}$ | ✓ | ✗ | ✓ | ✓ |
| $a < b$ on $\mathbb{Z}$ | ✗ | ✗ | ✓ (vacuous) | ✓ |
| $a \mid b$ on $\mathbb{N}$ | ✓ | ✗ | ✓ | ✓ |
| $a \mid b$ on $\mathbb{Z}$ | ✓ (see note) | ✗ | ✗ | ✓ |
| $a \equiv b \pmod n$ on $\mathbb{Z}$ | ✓ | ✓ | ✗ | ✓ |
| $a \neq b$ on $\mathbb{Z}$ | ✗ | ✓ | ✗ | ✗ ($1\neq2$, $2\neq1$, but $1=1$) |
| $\lvert a-b\rvert \le 1$ on $\mathbb{Z}$ | ✓ | ✓ | ✗ | ✗ ($0R1$, $1R2$, not $0R2$) |
| $A \subseteq B$ on $\mathcal{P}(X)$ | ✓ | ✗ (if $X\ne\varnothing$) | ✓ | ✓ |

> [!note] Divisibility by $0$
> With the course definition $a \mid b \iff \exists k \in \mathbb{Z},\ b = ak$, we get $0 \mid 0$ (take $k=0$), so "divides" is reflexive on $\mathbb{Z}$ too.

## 4. Equivalence relations

$R$ on $A$ is an **equivalence relation** if it is reflexive, symmetric, and transitive. It formalizes "same in some respect".

**Equivalence class** of $a \in A$:

$$[a] = \{x \in A : x \mathrel{R} a\}.$$

Key facts (for an equivalence relation):

1. $a \in [a]$ (by reflexivity), so no class is empty.
2. $[a] = [b] \iff a \mathrel{R} b$.
3. Two classes are either **equal or disjoint**.
4. The classes **partition** $A$: they are nonempty, pairwise disjoint, and their union is $A$.

Conversely, every partition of $A$ defines an equivalence relation: "$a \sim b$ iff $a$ and $b$ are in the same piece".

**Example.** Congruence mod $3$ on $\mathbb{Z}$ has three classes:

$$[0]=\{\dots,-3,0,3,6,\dots\},\quad [1]=\{\dots,-2,1,4,\dots\},\quad [2]=\{\dots,-1,2,5,\dots\}.$$

### Worked proof: parity

**Claim.** $a \sim b \iff a-b$ is even defines an equivalence relation on $\mathbb{Z}$.

*Proof.*

- **Reflexive.** $a-a = 0 = 2\cdot 0$ is even.
- **Symmetric.** If $a-b=2k$, then $b-a = 2(-k)$ is even.
- **Transitive.** If $a-b=2k$ and $b-c=2m$, then $a-c = (a-b)+(b-c) = 2(k+m)$ is even. $\square$

The classes are the evens and the odds.

### Worked proof: fractions

**Claim.** On $\mathbb{Z} \times (\mathbb{Z}\setminus\{0\})$, $(a,b) \sim (c,d) \iff ad = bc$ is an equivalence relation. (Its classes are exactly the rational numbers, which is why $a/b \mapsto a$ in [[Injectivity, Surjectivity, and Bijectivity]] is not well-defined: it depends on the representative.)

- **Reflexive.** $ab = ba$.
- **Symmetric.** $ad = bc \Rightarrow cb = da$.
- **Transitive.** Assume $ad = bc$ and $cf = de$, with $b,d,f \neq 0$. Multiplying, $adcf = bcde$, so $cd(af - be) = 0$. Since $d \ne 0$:
  - if $c \neq 0$, then $af = be$;
  - if $c = 0$, then $ad = 0$ gives $a = 0$, and $de = 0$ gives $e = 0$, so $af = 0 = be$.

  Either way $(a,b) \sim (e,f)$. $\square$

## 5. Partial orders

$R$ on $A$ is a **partial order** if it is reflexive, **antisymmetric**, and transitive. Examples: $\le$ on $\mathbb{R}$, $\subseteq$ on $\mathcal{P}(X)$, $\mid$ on $\mathbb{N}$.

It is a **total order** if additionally any two elements are comparable: $\forall a,b,\ a \mathrel{R} b \vee b \mathrel{R} a$. $\le$ is total; $\subseteq$ and $\mid$ are not ($\{1\}$ vs $\{2\}$; $2$ vs $3$).

Compare: equivalence relation uses **symmetric**, partial order uses **antisymmetric**.

### Weak vs strong (strict) orders

Orders come in two flavours, like $\le$ vs $<$.

| | **Weak (non-strict)** order, e.g. $\le$, $\subseteq$ | **Strong (strict)** order, e.g. $<$, $\subsetneq$ |
|---|---|---|
| Reflexivity | **Reflexive**: $\forall a,\ a \mathrel{R} a$ | **Irreflexive**: $\forall a,\ \neg(a \mathrel{R} a)$ |
| "Two-way" condition | **Antisymmetric**: $a \mathrel{R} b \wedge b \mathrel{R} a \Rightarrow a=b$ | **Asymmetric**: $a \mathrel{R} b \Rightarrow \neg(b \mathrel{R} a)$ |
| Transitive | ✓ | ✓ |

A weak partial order is exactly the "partial order" defined above.

**Converting between them** (same underlying ordering):

$$a < b \iff (a \le b \ \wedge\ a \neq b), \qquad a \le b \iff (a < b \ \vee\ a = b).$$

So strict = weak with the diagonal $\{(a,a): a\in A\}$ removed; weak = strict with the diagonal added.

**Fact.** Irreflexive + transitive $\Rightarrow$ asymmetric.

*Proof.* Suppose $a \mathrel{R} b$ and $b \mathrel{R} a$. Transitivity gives $a \mathrel{R} a$, contradicting irreflexivity. $\square$

(Asymmetric also implies antisymmetric, vacuously, which is why $<$ gets ✓ in the table in §3.)

> [!warning] Pitfalls
> - **Irreflexive $\ne$ not reflexive.** "Not reflexive" means *some* $a$ has $\neg(a\mathrel{R}a)$; "irreflexive" means *every* $a$ does. On $\{1,2\}$, $\{(1,1)\}$ is neither reflexive nor irreflexive.
> - A strict order on a nonempty set is **never** a partial order in the reflexive sense, since it fails reflexivity.
> - Totality for strict orders is **trichotomy**: exactly one of $a<b$, $a=b$, $b<a$.

#### Where does $=$ fit?

$=$ is **weak**: it is reflexive, antisymmetric and transitive, so it is a partial order (the "trivial" one, in which no two distinct elements are comparable). It is not strict, since $a = a$ always holds.

- It is **not total** once $A$ has two or more elements: for $1 \ne 2$, neither $1 = 2$ nor $2 = 1$.
- Its strict version is $\{(a,b) : a = b \wedge a \ne b\} = \varnothing$, the **empty relation**.
- It is also symmetric, so it is an equivalence relation too (every class is a singleton $\{a\}$).

**Fact.** $=$ is the **only** relation on $A$ that is both an equivalence relation and a partial order.

*Proof.* If $R$ is symmetric and antisymmetric, then $a \mathrel{R} b$ gives $b \mathrel{R} a$, so $a = b$. Hence $R \subseteq \{(a,a) : a \in A\}$. Reflexivity gives $\{(a,a) : a \in A\} \subseteq R$. So $R$ is exactly equality. $\square$

## 6. Proof templates

- **Reflexive:** let $a \in A$ be arbitrary; show $a \mathrel{R} a$.
- **Symmetric:** let $a,b \in A$ with $a \mathrel{R} b$; show $b \mathrel{R} a$.
- **Antisymmetric:** let $a,b \in A$ with $a \mathrel{R} b$ and $b \mathrel{R} a$; show $a=b$.
- **Transitive:** let $a,b,c \in A$ with $a \mathrel{R} b$ and $b \mathrel{R} c$; show $a \mathrel{R} c$.
- **Disproving any of them:** one concrete counterexample (see the table in §2).

## Quick self-check

1. Give a relation on $\{1,2,3\}$ that is symmetric and transitive but not reflexive.

> [!success]- Solution
> $R = \{(1,1)\}$. Symmetric and transitive (the only pair is $(1,1)$), but not reflexive since $(2,2) \notin R$. The empty relation also works.

2. Why is the empty relation on $\{1\}$ transitive?

> [!success]- Solution
> **Vacuously.** Transitivity says "if $a R b$ and $b R c$ then $a R c$". No pairs are related, so the hypothesis is never true and the implication never fails.

3. Is $a \mathrel{R} b \iff ab > 0$ on $\mathbb{Z}$ an equivalence relation? (Hint: check $a=0$.)

> [!success]- Solution
> **No.** Not reflexive: $0 \cdot 0 = 0 \not> 0$, so $0 \not\mathrel{R} 0$. It is symmetric ($ab = ba$) and transitive ($ab > 0$ and $bc > 0$ mean $a, b, c$ all have the same sign, so $ac > 0$). On $\mathbb{Z}\setminus\{0\}$ it *is* an equivalence relation, with classes "positives" and "negatives".

4. What are the equivalence classes of congruence mod $4$?

> [!success]- Solution
> $$
> \begin{aligned}
> [0] &= \{\dots,-8,-4,0,4,8,\dots\}, & [1] &= \{\dots,-7,-3,1,5,9,\dots\},\\
> [2] &= \{\dots,-6,-2,2,6,10,\dots\}, & [3] &= \{\dots,-5,-1,3,7,11,\dots\}.
> \end{aligned}
> $$
> Four classes, one per remainder $0,1,2,3$.

5. Why can a relation be both symmetric and antisymmetric?

> [!success]- Solution
> They don't contradict each other. If $a R b$, symmetry gives $b R a$, and then antisymmetry forces $a = b$. So the relation can only contain pairs $(a,a)$, e.g. equality or the empty relation.


---

## 7. Quotient sets

For an equivalence relation $\cong$ on $A$, the set of all equivalence classes is the **quotient**

$$A/{\cong} = \{[a] : a \in A\}.$$

E.g. $\mathbb{Z}/(\text{mod } 3) = \{[0], [1], [2]\}$. Example 14 of the reading: on $\mathbb{R}$, $a \sim b \iff b - a = 2\pi k$ ($k \in \mathbb{Z}$); the class $[1.5] = \{1.5 + 2\pi k : k \in \mathbb{Z}\}$ is $[0]$ shifted right by $1.5$.

> [!note] "Total" in the reading
> The reading defines total as: for all $a, b$, $a = b$ or $aRb$ or $bRa$. For reflexive relations this is the same as $aRb \lor bRa$ (§5).

## 8. Maximal elements, bounds, sup and inf (examples)

Full definitions are in [[102 Course Definitions and Proof Structures]]. Here are the reading's worked examples, using divisibility $a \preceq b \iff a \mid b$ as the order.

### Example 23: $A = \{1,2,3,5,6,10,15\}$

- **Maximal:** $6, 10, 15$ (nothing else in $A$ is a multiple of them). *Proof for 6:* if $6 \preceq x$ then $x$ is a multiple of $6$; the only one in $A$ is $6$.
- **Minimum:** $1$ (divides everything). **No maximum:** no element is divisible by all of $A$.
- Maximal $\ne$ maximum: there are three maximal elements but no maximum.
- $\{2,3\}$ has upper bound $6$ and lower bound $1$; $\{2,3,5\}$ has **no** upper bound in $A$.

### Example 28: $(\mathbb{Z}^+, \mid)$, $S = \{8, 12, 36\}$

- **Lower bounds** (common divisors): $1, 2, 4$. $\inf S = 4$.
- **Upper bounds** (common multiples): $72, 144, 216, \dots$ (all multiples of $72$). $\sup S = 72$.

> [!tip] Pattern
> In $(\mathbb{Z}^+, \mid)$: $\inf = \gcd$ and $\sup = \operatorname{lcm}$. "Greatest" here means greatest **in the divisibility order**, e.g. $4$ is the greatest lower bound because every lower bound divides $4$.


---

### Example: $(\mathbb{R},\le)$, $S=(0,1)$

- Upper bounds: every $u\ge1$. $\sup S = 1$, but $1\notin S$, so $S$ has **no maximum** (and no maximal element: for any $x\in S$, $\frac{x+1}{2}\in S$ is bigger).
- Likewise $\inf S = 0$ with no minimum.

So the supremum can exist even when the maximum doesn't. If the maximum exists, it equals the supremum.

## Lecture activities (Week 4)

### $x\sim y \iff x^2+y = y^2+x$ on $\mathbb{R}$

Rearrange: $x^2 - x = y^2 - y$. So $x\sim y \iff f(x)=f(y)$ where $f(t) = t^2-t$.

> [!tip] Pattern
> Any relation of the form "$x\sim y \iff f(x)=f(y)$" is automatically an **equivalence relation**, because $=$ is reflexive, symmetric and transitive.

**Equivalence class of $\frac13$:** $f(\frac13) = \frac19-\frac13 = -\frac29$. Solve $t^2-t = -\frac29$, i.e. $9t^2 - 9t + 2 = 0$, i.e. $(3t-1)(3t-2)=0$:
$$\left[\tfrac13\right] = \left\{\tfrac13, \tfrac23\right\}.$$
(In general $[x] = \{x, 1-x\}$, since $t^2-t$ is symmetric about $t=\frac12$.)

### Can $S_1=\{0,1,2,\dots\}$ and $S_2=\{0,-1,-2,\dots\}$ both be equivalence classes?

**No.** Distinct equivalence classes are **disjoint**, but $0\in S_1\cap S_2$. (Covering $\mathbb{Z}$ isn't enough; infinite classes are fine.)

### Divisibility order: $a\preceq b \iff a\mid b$, $S=\{3,4,9,12\}$

- **Minimal elements:** $3$ and $4$. Nothing else in $S$ divides them. ($9$ and $12$ are not minimal: $3\mid 9$, $3\mid 12$. And $1\notin S$.)
- **$\sup S$:** upper bounds are common multiples of $3,4,9,12$, i.e. multiples of $\operatorname{lcm} = 36$. The least of these under $\mid$ is $\mathbf{36}$ (it divides every other upper bound). So $\sup S = 36$, which is **not in $S$**.

> [!note] Fine print
> On all of $\mathbb{Z}$, divisibility is not antisymmetric ($36\mid-36$ and $-36\mid36$), so it is only a true partial order on $\mathbb{Z}^+$ (or $\mathbb{N}$). Working in $\mathbb{Z}^+$, $\sup S=36$ is unique.

### Independent exercise: "popular" sets and $\vdash$

> **Definition.** $P\subseteq\mathbb{R}$ is **popular** if
> (P1) $0\notin P$;
> (P2) for all $x,y\in P$: $\frac1x\in P$, $x+y\in P$, $xy\in P$;
> (P3) for every $x\neq0$, exactly one of $x\in P$, $-x\in P$.
>
> Define $x\vdash y \iff y-x\in P$.

**(a) Transitive, not reflexive, not symmetric.**
- *Transitive:* $x\vdash y$, $y\vdash z$ give $y-x,\ z-y\in P$, so $z - x = (z-y)+(y-x)\in P$ by (P2).
- *Not reflexive:* $x - x = 0\notin P$ by (P1), so $x\not\vdash x$.
- *Not symmetric:* take any $p\in P$ (a non-empty one exists). Then $0\vdash p$. But $0 - p = -p\notin P$ by (P3), so $p\not\vdash 0$.

**(b) Multiplying.** If $c\in P$ and $y - x\in P$, then $cy - cx = c(y-x)\in P$, so $cx\vdash cy$. If $c\neq0$, $c\notin P$, then $-c\in P$ by (P3), so $(-c)(y-x) = cx - cy\in P$, i.e. $cy\vdash cx$ (the order **flips**).

**(c) Adding.** $(y+v)-(x+u) = (y-x)+(v-u)\in P$, so $x+u\vdash y+v$.

**(d) Squaring.** For $x,y\in P$ with $x\vdash y$: $y^2-x^2 = (y-x)(y+x)$, and $y+x\in P$, so the product is in $P$. Hence $x^2\vdash y^2$.

**(e) Reciprocals.** For $x,y\in P$ with $x\vdash y$:
$$\frac1x - \frac1y = \frac{y-x}{xy} = (y-x)\cdot\frac1x\cdot\frac1y \in P,$$
so $\frac1y\vdash\frac1x$. If instead $x,y\notin P$ (both non-zero), then $-x,-y\in P$, so $xy = (-x)(-y)\in P$ and $\frac1{xy}\in P$; the same computation works.

**(f) What is $\vdash$?** These are exactly the properties of the positive reals, with $P = (0,\infty)$ and $x\vdash y \iff x<y$. So $\vdash$ is the **strict order $<$**, and (b)–(e) are the familiar inequality rules (multiplying by a negative flips the inequality, etc.).
