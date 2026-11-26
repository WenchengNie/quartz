---
course: MAT102
tags:
  - MAT102
  - sets
  - logic
prereq:
  - "[[W01 - Reading Mathematics|Reading Mathematics]]"
next: "[[W03 - Quantifiers and Implications|Quantifiers and Implications]]"
week: W02
---

# Sets and Propositional Logic


## Sets

A **set** is an unordered collection of well-defined, distinct objects. Empty set: $\emptyset$.
- Order and repetition don't matter: $\{1,2,2,3,3,3\} = \{3,1,2\}$.
- But $\{\{1,2\},\{3\}\} \neq \{1,2,3\}$ — its elements are *sets*.
- **Set-builder:** $\{a : a \text{ satisfies } P\}$.

Standard sets: $\mathbb{Z}^+ = \{1,2,3,\dots\}$, $\mathbb{N}^0 = \{0,1,2,\dots\}$, $\mathbb{Z}$, $\mathbb{Q} = \{\tfrac{a}{b} : a,b\in\mathbb{Z}, b\neq 0\}$, $\mathbb{R}$.

## Operations

$$S\cup T = \{x : x\in S \text{ or } x\in T\},\quad S\cap T = \{x : x\in S \text{ and } x\in T\},\quad S\setminus T = \{x : x\in S,\ x\notin T\}$$

- **Complement** (in universe $U$): $A^c = \{x\in U : x\notin A\}$.
- **Cartesian product:** $A\times B = \{(a,b) : a\in A, b\in B\}$. Note $A\times\emptyset = \emptyset$, and generally $A\times B\neq B\times A$. Also not associative: $(A\times B)\times A \neq A\times(B\times A)$ in general, since $((a,b),a')$ is a pair whose first entry is a pair, while $(a,(b,a'))$ is a pair whose second entry is a pair (both sides are empty if $A$ or $B$ is $\emptyset$).
- **Power set:** $\mathcal{P}(S) = \{A : A\subseteq S\}$; if $|S| = n$ then $|\mathcal{P}(S)| = 2^n$.

## Subsets and equality

- $S\subseteq T$ means every element of $S$ is in $T$. To prove it: "Let $x\in S$ be arbitrary… so $x\in T$."
- $S = T \iff S\subseteq T$ **and** $T\subseteq S$ (double inclusion).
- Facts: $A\subseteq A\cup B$, $A\cap B\subseteq A$, and $A\subseteq B \Rightarrow A\cup B = B$.

- More generally $A\subseteq B\iff A\cup B=B\iff A\cap B=A$.
- Set-builder also comes in an "image" form: $\{f(x) : x\in S\}$, e.g. $\{2k+1 : k\in\mathbb{Z}\}$ is the odd integers.
- Cartesian products: $A\times(B\cup C)=(A\times B)\cup(A\times C)$, and for finite sets $|A\times B|=|A|\cdot|B|$.
- De Morgan for sets: $(A\cup B)^c=A^c\cap B^c$ and $(A\cap B)^c=A^c\cup B^c$.

## Propositions and predicates

- **Proposition:** statement that is definitely true or false (e.g. $2+2=5$).
- **Predicate:** has a variable, e.g. $P(x): x^2>\pi$ — becomes a proposition once $x$ is fixed.
- Questions/commands ("Let $x=\pi$") are neither.

## Connectives

| $P$ | $Q$ | $P\wedge Q$ | $P\vee Q$ | $\neg P$ |
|---|---|---|---|---|
| T | T | T | T | F |
| T | F | F | T | F |
| F | T | F | T | T |
| F | F | F | F | T |

- $\vee$ is **inclusive** or.
- Two statements are **logically equivalent** ($\equiv$) if they have identical truth tables.
- **De Morgan:** $\neg(P\wedge Q)\equiv \neg P\vee\neg Q$ and $\neg(P\vee Q)\equiv\neg P\wedge\neg Q$.

Related: [[W03 - Quantifiers and Implications|Quantifiers and Implications]], [[W04 - Relations|Relations]]


---

## Lecture activities (Week 2)

### Set identity: $A \setminus (B \setminus C) = (A\setminus B) \cup (A \cap C)$

Rewrite set difference as intersection with a complement, then use De Morgan:

$$A \setminus (B\setminus C) = A \cap (B \cap C^c)^c = A \cap (B^c \cup C) = (A \cap B^c) \cup (A \cap C) = (A \setminus B) \cup (A\cap C).$$

Intuition: $x$ survives if it's in $A$ and either avoids $B$ entirely, or is in $B$ but also in $C$ (so it was removed from $B$ first).

### Cartesian product membership

$A = \{n \in \mathbb{Z} : n^2 < 30\} = \{-5,-4,\dots,4,5\}$ and $B = \{q\in\mathbb{Q} : 2q \in \mathbb{Z}\}$ (the integers and half-integers).

$(x,y) \in A\times B \iff x\in A$ **and** $y \in B$. So $(3, \tfrac52)$, $(0,0)$, $(1,1)$ are in $A\times B$, but $(-5, \tfrac23)\notin A\times B$ because $2\cdot\tfrac23 = \tfrac43 \notin \mathbb{Z}$.

### Truth values of compound statements

$P$: "17 is prime" (**T**). $Q$: "1.234 is not rational" (**F**, since $1.234 = \tfrac{1234}{1000}$). $R$: "$\forall x\in\mathbb{R},\ x^2 \ge 0$" (**T**).

| Statement | Value |
|---|---|
| $P \vee (Q\wedge R)$ | T $\vee$ F $=$ **T** |
| $(P\vee Q)\wedge R$ | T $\wedge$ T $=$ **T** |
| $(\neg P \vee Q)\wedge R$ | (F $\vee$ F) $\wedge$ T $=$ **F** |
| $(P \vee \neg Q)\wedge R$ | (T $\vee$ T) $\wedge$ T $=$ **T** |

### Truth table: $\neg(\neg A \vee B) \equiv A \wedge \neg B$

| $A$ | $B$ | $\neg A\vee B$ | $\neg(\neg A\vee B)$ |
|---|---|---|---|
| T | T | T | F |
| T | F | F | **T** |
| F | T | T | F |
| F | F | T | F |

(De Morgan: $\neg(\neg A \vee B) \equiv A \wedge \neg B$. Also note $\neg A \vee B \equiv A \Rightarrow B$, so this is the negation of an implication.)

### Guided exercise: $A\cap(B\cup C) = (A\cap B)\cup(A\cap C)$

Prove two inclusions ("double subset inclusion"). To show $X\subseteq Y$: **choose an arbitrary $x\in X$ first**, then show $x \in Y$.

*Proof.* ($\subseteq$) Let $x \in A\cap(B\cup C)$. Then $x\in A$ and $x\in B\cup C$, so $x\in B$ or $x \in C$.
- If $x\in B$: $x \in A\cap B$.
- If $x \in C$: $x \in A\cap C$.

Either way $x\in (A\cap B)\cup(A\cap C)$.

($\supseteq$) Let $x \in (A\cap B)\cup(A\cap C)$. If $x\in A\cap B$, then $x\in A$ and $x\in B\subseteq B\cup C$. If $x \in A\cap C$, then $x\in A$ and $x \in C \subseteq B\cup C$. Either way $x \in A \cap (B\cup C)$. $\blacksquare$

### Independent exercise: NAND does everything

Define $A \otimes B = \neg(A\wedge B)$ ("NAND").

| $A$ | $B$ | $A\otimes B$ |
|---|---|---|
| T | T | F |
| T | F | T |
| F | T | T |
| F | F | T |

- **Negation:** $A\otimes A = \neg(A\wedge A) = \neg A$.
- **AND:** $(A\otimes B)\otimes(A\otimes B) = \neg(A\otimes B) = A\wedge B$.
- **OR:** by De Morgan, $A\vee B = \neg(\neg A \wedge \neg B) = (\neg A)\otimes(\neg B)$, so
$$A \vee B \equiv (A\otimes A)\otimes(B\otimes B).$$

**Check (last row, $A=B=$ F):** $A\otimes A = $ T, $B\otimes B = $ T, T $\otimes$ T $=$ F $= A\vee B$ ✓
