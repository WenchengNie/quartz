---
course: MAT102
tags:
  - MAT102
  - logic
prereq:
  - "[[Sets and Propositional Logic]]"
next: "[[Proof by Contradiction]]"
week: W03
---

# Quantifiers and Implications


## Quantifiers

- $\forall x\in S,\ P(x)$: true iff $P(x)$ holds for **every** $x$. Prove by taking an *arbitrary* $x$.
- $\exists x\in S,\ P(x)$: true iff **at least one** $x$ works. Prove with one example.

### Order matters

Same-type quantifiers can be swapped; mixed types **cannot**.
- $\forall x\in\mathbb{R},\ \exists y\in\mathbb{R},\ x+y=0$ — "every real has a negative" (**true**; $y$ may depend on $x$).
- $\exists y\in\mathbb{R},\ \forall x\in\mathbb{R},\ x+y=0$ — "one number is the negative of everything" (**false**).

- Everyday version: "everyone has a birthday" is $\forall p\ \exists d$ (true), while "there is one day that is everyone's birthday" is $\exists d\ \forall p$ (false).

**Proving and disproving quantified statements**

| Statement | To prove it | To disprove it |
|---|---|---|
| $\forall x,\ P(x)$ | take an **arbitrary** $x$, prove $P(x)$ | give **one** counterexample |
| $\exists x,\ P(x)$ | give **one** specific witness | prove $\forall x,\ \neg P(x)$ |

A quantifier turns a predicate $P(x)$ into a proposition: $P(x)$ alone has no truth value, but $\forall x,\ P(x)$ does.

### Negation

$$\neg(\forall x,\ P(x))\equiv \exists x,\ \neg P(x)\qquad \neg(\exists x,\ P(x))\equiv\forall x,\ \neg P(x)$$

Flip every quantifier, push $\neg$ to the inside. E.g. $\neg(\forall x\in\mathbb{R},\ x<x^2)$ is $\exists x\in\mathbb{R},\ x\geq x^2$ (witness $x=\tfrac12$).

**Longer examples.**
- "$p$ is prime": $p>1\ \wedge\ \forall a\in\mathbb{Z}^+,\ \big(a\mid p\Rightarrow a=1\vee a=p\big)$.
  Negation: $p\le1\ \vee\ \exists a\in\mathbb{Z}^+,\ \big(a\mid p\ \wedge\ a\neq1\ \wedge\ a\neq p\big)$.
- "$f$ is continuous at $a$": $\forall\varepsilon>0\ \exists\delta>0\ \forall x,\ \big(|x-a|<\delta\Rightarrow|f(x)-f(a)|<\varepsilon\big)$.
  Negation: $\exists\varepsilon>0\ \forall\delta>0\ \exists x,\ \big(|x-a|<\delta\ \wedge\ |f(x)-f(a)|\ge\varepsilon\big)$.

## Implications

| $P$ | $Q$ | $P\Rightarrow Q$ |
|---|---|---|
| T | T | T |
| T | F | **F** |
| F | T | T |
| F | F | T |

The only false case is $P$ true, $Q$ false. Rows with $P$ false are **vacuously true**.

- **Contrapositive:** $\neg Q\Rightarrow\neg P$ — logically **equivalent** to $P\Rightarrow Q$.
- **Converse:** $Q\Rightarrow P$ — **not** equivalent in general.
- **Negation:** $\neg(P\Rightarrow Q)\equiv P\wedge\neg Q$ (a counterexample).
- Also useful: $P\Rightarrow Q\equiv\neg P\vee Q$.
- $P\iff Q$ means both $P\Rightarrow Q$ and $Q\Rightarrow P$.
- "$P$ is **sufficient** for $Q$": $P\Rightarrow Q$. "$P$ is **necessary** for $Q$": $Q\Rightarrow P$.

### Proof by contrapositive example

**Claim:** if $n^2$ is even then $n$ is even. Contrapositive: if $n$ odd then $n^2$ odd.

$n = 2k+1\Rightarrow n^2 = 4k^2+4k+1 = 2(2k^2+2k)+1$. $\square$

### More implication facts

- "$P$ **only if** $Q$" also means $P\Rightarrow Q$ ($P$ can't happen without $Q$).
- Implication is **not associative**: $(P\Rightarrow Q)\Rightarrow R\not\equiv P\Rightarrow(Q\Rightarrow R)$. With $P,Q,R$ all false, the left side is $\text{T}\Rightarrow\text{F}=\text{F}$ but the right side is $\text{F}\Rightarrow(\dots)=\text{T}$. Always use brackets.

## Math vs. English

- "or" is inclusive in math.
- $\neg(\forall x, A(x))$ ("not everything is alright") $\neq$ $\forall x,\neg A(x)$ ("nothing is alright").
- English "if" often secretly means "iff"; math implications need not be causal.

Related: [[Sets and Propositional Logic]], [[Proof by Contradiction]], [[Relations]]


---

## Lecture activities (Week 3)

### Translating with mixed quantifiers

- **"There is no smallest positive rational":** $\forall q\in\mathbb{Q},\ \exists r\in\mathbb{Q},\ (q>0)\Rightarrow(0<r<q)$. Whatever positive $q$ you name, some positive rational is smaller.
- $\forall n\in\mathbb{Z},\ \forall m\in\mathbb{Z},\ \exists r\in\mathbb{Q},\ [(n<m)\Rightarrow (n<r)\wedge(r<m)]$ means **there is a rational strictly between any two distinct integers.**
  - **Negation:** $\exists n,m\in\mathbb{Z},\ \forall r\in\mathbb{Q},\ (n<m)\wedge[(r\le n)\vee(m\le r)]$, i.e. $\forall r,\ (r\le n<m)\vee(n<m\le r)$. In English: *some two integers $n<m$ have no rational strictly between them.*
  - Recipe: flip each quantifier, keep the order, then negate the inside using $\neg(P\Rightarrow Q)\equiv P\wedge\neg Q$ and De Morgan.
- **"Every real can be arbitrarily well-approximated by a rational":** $\forall d>0,\ \forall r\in\mathbb{R},\ \exists q\in\mathbb{Q},\ |r-q|<d$. The $q$ comes **last**, so it may depend on both $d$ and $r$. (Putting $\exists q$ before $\forall d$ would force a single $q$ with $|r - q| < d$ for every $d>0$, i.e. $q=r$, which fails for irrational $r$.)

### Contrapositive and vacuous truth

- "I'll go to the party if Jasnah goes" is $J\Rightarrow I$. Contrapositive: $\neg I \Rightarrow \neg J$, i.e. *"If I don't go to the party, then Jasnah doesn't go either."* (Careful: "if" introduces the **hypothesis**, even when it comes second in the sentence.)
- "Every element of the empty set is even" is **true** (vacuously): $\forall x\in\varnothing,\ P(x)$ has no $x$ to fail. Its negation "$\exists x\in\varnothing$ that is not even" is clearly false.

### Guided exercise: roofed vs umbrella'd

> **Definitions.** $A\subseteq\mathbb{R}$ is **roofed** if $\exists r\in\mathbb{R},\ \forall x\in A,\ x\le r$.
> $A$ is **umbrella'd** if $\forall x\in A,\ \exists U\in A,\ x<U$.

- **Roofed** = bounded above (one fixed roof $r$, chosen *before* $x$, works for everything).
- **Umbrella'd** = no largest element: every element has a strictly bigger element **inside $A$** ($U$ is chosen *after* $x$ and may depend on it).

| Property | Example |
|---|---|
| Roofed | $[0,1]$ |
| Umbrella'd | $\mathbb{N}$ |
| Roofed, not umbrella'd | $[0,1]$ ($1$ has nothing above it in $A$) |
| Umbrella'd, not roofed | $\mathbb{N}$ |
| Both | $(0,1)$ (roof $r=1$; for $x\in(0,1)$ take $U = \frac{x+1}{2}$) |
| Neither | **Impossible** |

*Why "neither" is impossible:* if $A$ is not umbrella'd, then $\exists x_0\in A,\ \forall U\in A,\ U\le x_0$. So $x_0$ is a roof, and $A$ is roofed. (Also $\varnothing$ is both, vacuously.)

**Union of roofed sets is roofed.** To show: find one $r$ with $x\le r$ for all $x\in A\cup B$.

*Proof.* Let $r_A$, $r_B$ be roofs for $A$, $B$, and set $r=\max(r_A,r_B)$. Let $x\in A\cup B$. If $x \in A$ then $x\le r_A\le r$; if $x\in B$ then $x\le r_B\le r$. So $r$ is a roof for $A\cup B$. $\blacksquare$

**Union of umbrella'd sets is umbrella'd.** To show: for each $x\in A\cup B$, find $U\in A\cup B$ with $x<U$. **Choose $x$ first.**

*Proof.* Let $x\in A\cup B$. If $x\in A$, since $A$ is umbrella'd there is $U\in A\subseteq A\cup B$ with $x<U$. If $x\in B$, likewise there is $U\in B\subseteq A\cup B$ with $x < U$. $\blacksquare$

> [!tip] Key difference
> Roofed is $\exists\forall$: the roof is built **first** from the hypotheses (take a max), and must work for all $x$. Umbrella'd is $\forall\exists$: fix $x$ **first**, then $U$ can depend on $x$ (and on which set $x$ came from).

### Independent exercise: proving $P\Rightarrow(Q\vee R)$

$$P\Rightarrow(Q\vee R)\ \equiv\ (P\wedge\neg Q)\Rightarrow R.$$

Both are false in exactly one row: $P$ true, $Q$ false, $R$ false. So the strategy "if $Q$ holds we're done; otherwise assume $\neg Q$ and prove $R$" is valid.

**Example.** If $m,n\in\mathbb{Z}$ and $m^3+n^3$ is odd, then $m$ is odd or $n$ is odd.

*Proof.* Suppose $m^3+n^3$ is odd. If $m$ is odd, we're done. Otherwise $m$ is even, $m=2k$, so $m^3 = 8k^3$ is even, and
$$n^3 = (m^3+n^3) - m^3 = \text{odd} - \text{even} = \text{odd}.$$
If $n$ were even, $n=2j$, then $n^3 = 8j^3$ would be even. So $n$ is odd. $\blacksquare$

(Contrapositive version is shorter: if $m,n$ both even, $m^3+n^3 = 8(k^3+j^3)$ is even.)
