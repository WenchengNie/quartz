---
course: MAT137
topic: codes, asymptotically N-regular functions, limits at infinity of counting sequences
date: 2026-10-18
tags:
  - MAT137
  - limits
  - limits-at-infinity
  - proofs
  - negation
prereq:
  - "[[W01 - Logic - Negations and Proof Structure|Logic - Negations and Proof Structure]]"
  - "[[W04 - Epsilon-Delta Proofs|Epsilon-Delta Proofs]]"
next: "[[W04 - Squeeze Theorem|Squeeze Theorem]]"
week: W06
---

# Codes and Asymptotic Regularity


Related: [[W04 - Epsilon-Delta Proofs|Epsilon-Delta Proofs]] · [[W01 - Logic - Negations and Proof Structure|Logic - Negations and Proof Structure]] · [[W00 - 137 Course Definitions and Proof Structures|137 Course Definitions and Proof Structures]]

## Definitions

- $S_{10}=\{0,1,\dots,9\}$ (the digits). $S_n$ = the first $n$ inputs, presumably $\{0,1,\dots,n-1\}$ (check the assignment's definition).
- A **code** $C$ is a finite sequence of elements of $S_{10}$, e.g. $1,2$ or $0,1,\dots,9$.
- $f_C$ outputs $C$ over and over. For $C=1,2$: $1,2,1,2,1,2,\dots$
- $f$ is **asymptotically $N$-regular** if

$$\lim_{n\to\infty}\frac{|\{x\in S_n : f(x)=N\}|}{n}=\frac1{10}$$

- $f$ is **asymptotically regular** if $\forall N\in S_{10}$, $f$ is asymptotically $N$-regular.

### Reading the fraction

- $\{x\in S_n : f(x)=N\}$ = the positions among the first $n$ where the output is $N$.
- $|\cdot|$ counts them.
- Dividing by $n$ gives the **fraction of the first $n$ outputs equal to $N$**.

Example: $C=1,2$, $n=6$, $N=1$: $\{0,2,4\}$, size $3$, fraction $\frac36$.

### $N$-regular vs regular

- $N$-regular: **one** digit appears $\frac1{10}$ of the time.
- Regular: **every** digit does.
- Regular $\Rightarrow$ $N$-regular for all $N$, not conversely. Example: $C=0,0,1,2,3,4,5,6,7,8$ is $1$-regular (also $2$–$8$) but not $0$-regular ($\frac2{10}$) or $9$-regular ($0$), so not regular.
- To show **not** regular: one failing $N$ is enough.

---

## Limit at infinity and its negation

$$\lim_{n\to\infty}h(n)=L \iff \forall\varepsilon>0,\ \exists K,\ \forall n,\ n>K\Rightarrow |h(n)-L|<\varepsilon$$

Negation:

$$\lim_{n\to\infty}h(n)\ne L \iff \exists\varepsilon>0,\ \forall K,\ \exists n,\ n>K \text{ and } |h(n)-L|\ge\varepsilon$$

> [!tip] Proof shape for "not"
> Choose $\varepsilon$. Let $K$ be arbitrary. **Exhibit** one $n>K$ that is bad. You don't need every large $n$ to be bad, just infinitely many (one past any $K$).

> [!warning] Letter clash
> $N$ is already the digit, so don't call the threshold $N$. Use $K$.

---

## Problem: at least two 7s ⇒ not 7-regular

Let $C=a_0,a_1,\dots,a_9$ with at least two $a_i=7$. Prove $f_C$ is not asymptotically 7-regular.

### Rough work

- Let $k$ = number of 7s in $C$, so $k\ge2$.
- $f_C$ has period $10$: $f_C(x)=a_i$ where $i$ is the remainder of $x$ mod $10$.
- At $n=10m$ the first $n$ outputs are exactly $m$ full copies of $C$, so the count is $mk$ and

$$h(10m)=\frac{mk}{10m}=\frac{k}{10}\ge\frac{2}{10}$$

- Distance from $\frac1{10}$ is at least $\frac1{10}$, so take $\varepsilon=\frac1{10}$.
- Multiples of $10$ go past any $K$.

### Proof

Let $h(n)=\dfrac{|\{x\in S_n : f_C(x)=7\}|}{n}$ and $k\ge2$ the number of 7s in $C$. We show

$$\exists\varepsilon>0,\ \forall K,\ \exists n>K,\ \left|h(n)-\tfrac1{10}\right|\ge\varepsilon$$

Let $\varepsilon=\frac1{10}$. Let $K\in\mathbb R$. Choose a positive integer $m>\frac K{10}$ and let $n=10m$, so $n>K$.

$S_{10m}$ splits into $m$ blocks $\{10j,\dots,10j+9\}$, $j=0,\dots,m-1$, and $f_C(10j+i)=a_i$. Each block contains exactly $k$ inputs with output $7$, so

$$|\{x\in S_{10m}: f_C(x)=7\}|=mk\quad\Rightarrow\quad h(10m)=\frac{k}{10}$$

Then

$$\left|h(n)-\frac1{10}\right|=\frac{k-1}{10}\ge\frac{1}{10}=\varepsilon$$

since $k\ge2$. Hence $\lim_{n\to\infty}h(n)\ne\frac1{10}$, so $f_C$ is not asymptotically 7-regular. $\blacksquare$

> [!note] Why this covers both cases
> The negation is true whether the limit doesn't exist or exists but isn't $\frac1{10}$. (Here it actually equals $\frac{k}{10}$, but we never need that.)

---

## Theorem: 7-regular ⟺ exactly one 7

Let $C$ be a 10-digit code with $k$ sevens and $d(n)=\dfrac{|\{x\in S_n : f_C(x)=7\}|}{n}$.

$$f_C \text{ is asymptotically 7-regular} \iff k=1$$

### (⇒) via the contrapositive

Contrapositive: if $k\ne1$, then $f_C$ is not 7-regular. Two cases:

- **$k\ge2$:** this is exactly the previous problem.
- **$k=0$:** $f_C$ never outputs $7$, so the set is empty and $d(n)=0$ for all $n$. The limit of a constant sequence is that constant, so $\lim_{n\to\infty}d(n)=0\ne\frac1{10}$ (limits are unique).

> [!warning] Don't forget $k=0$
> "Not exactly one" means $k=0$ **or** $k\ge2$. The earlier problem only covers $k\ge2$.

### (⇐) via the Squeeze Theorem

Given (for $k=1$, all $n>0$):

$$\frac{n}{10}-1\le |\{x\in S_n : f_C(x)=7\}|\le\frac{n}{10}+1$$

Divide by $n>0$ (inequalities keep direction):

$$\frac1{10}-\frac1n\le d(n)\le\frac1{10}+\frac1n$$

Since $\lim_{n\to\infty}\frac1n=0$, limit laws give both outer sides $\to\frac1{10}$. By the **Squeeze Theorem**, $\lim_{n\to\infty}d(n)=\frac1{10}$. $\blacksquare$

> [!tip] Recognizing a squeeze
> A quantity trapped between two expressions with the same limit → Squeeze Theorem, no ε–δ needed.

---

## Theorem: regular for 9 digits ⇒ regular

If $f$ is asymptotically $N$-regular for all $N\in S_9=\{0,\dots,8\}$, then $f$ is asymptotically regular. (Only digit $9$ is left to check.)

Notation: $d_N(n)=\dfrac{|\{x\in S_n : f(x)=N\}|}{n}$.

### Key fact: the fractions add to 1

Each $x\in S_n$ has exactly one output $f(x)\in S_{10}$, so the sets $A_N=\{x\in S_n : f(x)=N\}$, $N=0,\dots,9$, are **pairwise disjoint** and their **union is $S_n$**. Hence

$$\sum_{N=0}^{9}|A_N|=|S_n|=n \quad\Rightarrow\quad \sum_{N=0}^{9}d_N(n)=1$$

### Finish with limit laws

$$d_9(n)=1-\sum_{N=0}^{8}d_N(n)$$

Each $d_N(n)\to\frac1{10}$ for $N=0,\dots,8$ (finite limits, so the sum law applies):

$$\lim_{n\to\infty}d_9(n)=1-9\cdot\frac1{10}=\frac1{10}$$

So $f$ is also 9-regular, hence regular. $\blacksquare$

> [!tip] Why limit laws are OK here
> All nine limits exist and are **finite**, unlike the $\infty+L$ trap in [[W03 - Infinite Limits - Sum and Product|Infinite Limits - Sum and Product]].
