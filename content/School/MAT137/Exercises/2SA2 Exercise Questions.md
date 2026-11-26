---
course: MAT137
topic: 2SA2 exercises, infinite limits, codes and asymptotic regularity
date: 2026-10-18
tags:
  - MAT137
  - exercises
  - 2SA2
  - limits
  - infinite-limits
  - proofs
prereq:
  - "[[Infinite Limits - Sum and Product]]"
  - "[[Codes and Asymptotic Regularity]]"
week: W06
---

# 2SA2 Exercise Questions


Concept notes: [[Infinite Limits - Sum and Product]] · [[Codes and Asymptotic Regularity]] · [[Epsilon-Delta Proofs]] · [[Logic - Negations and Proof Structure]]

> [!tip] How to use
> Try each question first. Solutions are folded; click the callout to open.

---

## Q1. Infinite limits (6 pts)

**Theorem.** Let $a\in\mathbb R$, and let $f,g$ be **positive** functions with domain $\mathbb R$. Define $S(x)=f(x)+g(x)$ and $P(x)=f(x)g(x)$.

- **(i)** If $\lim_{x\to a}f(x)=\infty$ and $\lim_{x\to a}g(x)$ exists, then $\lim_{x\to a}S(x)=\infty$.
- **(ii)** If $\lim_{x\to a}f(x)=\infty$ and $\lim_{x\to a}g(x)=L$ where $L>0$, then $\lim_{x\to a}P(x)=\infty$.

**(a) (2 pts)** Proof attempt:
- (i) Assume $\lim f=\infty$, let $L=\lim g$. Then $\lim S=\infty+L=\infty$.
- (ii) Assume $\lim f=\infty$, $\lim g=L>0$. Then $\lim P=\infty\cdot L=\infty$.

Find and explain at least two different types of mistakes.

> [!success]- Solution (a)
> 1. **Limit laws used outside their hypotheses.** The sum and product laws only apply when both individual limits exist as real numbers. Since $\lim_{x\to a}f(x)=\infty$, the limit of $f$ does not exist as a real number, so the laws cannot be used.
> 2. **$\infty$ is not a real number**, so $\infty+L$ (for $S$) and $\infty\cdot L$ (for $P$) are not valid arithmetic operations and have no meaning.
>
> (Also acceptable: circular, since "$\infty\cdot L=\infty$" restates the conclusion; never uses $L>0$.)
>
> Not a valid answer: "$L$ was never defined." $L$ is defined in both parts.

**(b) (4 pts)** Prove (ii) directly from the definitions of the limits.

> [!example]- Rough work (b)
> - Need $g$ bounded **below by a positive number** near $a$, otherwise a huge $f$ could be cancelled by a tiny $g$.
> - $\varepsilon=\frac L2$ in $\lim g=L$ gives $g(x)>L-\frac L2=\frac L2$. (Any $0<\varepsilon<L$ works.)
> - Want $M_1\cdot\frac L2=M$, so ask $\lim f=\infty$ for $M_1=\frac{2M}{L}$.
> - $f,g$ unknown, so $\delta$ can't be computed: take $\delta=\min(\delta_1,\delta_2)$.

> [!success]- Solution (b)
> **Hypotheses.**
> (1) $\forall M_1,\ \exists\delta_1>0,\ \forall x,\ 0<|x-a|<\delta_1\Rightarrow f(x)>M_1$
> (2) $\forall\varepsilon>0,\ \exists\delta_2>0,\ \forall x,\ 0<|x-a|<\delta_2\Rightarrow|g(x)-L|<\varepsilon$
>
> **Goal.** $\forall M,\ \exists\delta>0,\ \forall x,\ 0<|x-a|<\delta\Rightarrow f(x)g(x)>M$
>
> **Proof.** Let $M\in\mathbb R$; WLOG $M>0$.
> - Let $\varepsilon=\frac L2>0$ (since $L>0$).
> - Let $M_1=\frac{2M}{L}>0$.
> - By (2), let $\delta_2>0$ with $0<|x-a|<\delta_2\Rightarrow|g(x)-L|<\frac L2$.
> - By (1), let $\delta_1>0$ with $0<|x-a|<\delta_1\Rightarrow f(x)>\frac{2M}{L}$.
> - Let $\delta=\min(\delta_1,\delta_2)>0$.
>
> Let $x$ satisfy $0<|x-a|<\delta$. Then $g(x)>L-\frac L2=\frac L2>0$ and $f(x)>\frac{2M}{L}>0$. Both lower bounds are positive, so
> $$f(x)g(x)>\frac{2M}{L}\cdot\frac L2=M.$$
> Hence $\lim_{x\to a}P(x)=\infty$. $\blacksquare$

> [!warning] Common mistakes
> - Writing "Let $x$ satisfy…" before $\delta$ is chosen: order is $M\to\delta\to x$.
> - Dropping the absolute value: $0<x-a<\delta$ is only one-sided.
> - Multiplying inequalities without checking both sides are positive.

---

## Definitions for Q2–Q4

- A **code** is a finite sequence of elements of $S_{10}=\{0,\dots,9\}$.
- $f_C$ outputs $C$ over and over.
- $f$ is **asymptotically $N$-regular** if $\displaystyle\lim_{n\to\infty}\frac{|\{x\in S_n : f(x)=N\}|}{n}=\frac1{10}$.
- $f$ is **asymptotically regular** if it is asymptotically $N$-regular for all $N\in S_{10}$.

Notation: $d_N(n)=\dfrac{|\{x\in S_n : f(x)=N\}|}{n}$, the fraction of the first $n$ outputs equal to $N$.

---

## Q2. At least two 7s (5 pts)

Let $C=a_0,a_1,\dots,a_9$ be a 10-digit code with at least two 7s. Prove, directly from the definition of the limit, that $f_C$ is **not** asymptotically 7-regular.

> [!example]- Rough work Q2
> - Negate the limit definition: $\exists\varepsilon>0,\ \forall K,\ \exists n,\ n>K$ **and** $|d(n)-\frac1{10}|\ge\varepsilon$. (Hypothesis $n>K$ stays; $\Rightarrow$ becomes "and".)
> - Example $C=7,7,0,1,2,3,4,5,6,8$: $d(10)=\frac2{10}$, $d(20)=\frac4{20}=\frac2{10}$, $d(3)=\frac23$.
> - First $10m$ outputs of $f_C$ = exactly $m$ copies of $C$, each with $k$ sevens, so $d(10m)=\frac{mk}{10m}=\frac k{10}\ge\frac2{10}$.
> - $|\frac k{10}-\frac1{10}|=\frac{k-1}{10}\ge\frac1{10}$, so $\varepsilon=\frac1{10}$; choose $m>\frac K{10}$.

> [!success]- Solution Q2
> Let $k\ge2$ be the number of 7s in $C$ and $d(n)=\frac{|\{x\in S_n: f_C(x)=7\}|}{n}$. We prove
> $$\exists\varepsilon>0,\ \forall K\in\mathbb R,\ \exists n,\ n>K\text{ and }\left|d(n)-\tfrac1{10}\right|\ge\varepsilon.$$
> Let $\varepsilon=\frac1{10}$. Let $K\in\mathbb R$. Choose a positive integer $m>\frac K{10}$ and let $n=10m>K$.
>
> Since $f_C(10j+i)=a_i$, the set $S_{10m}$ splits into $m$ blocks $\{10j,\dots,10j+9\}$, each containing exactly $k$ inputs with output $7$. So the count is $mk$ and
> $$d(10m)=\frac{mk}{10m}=\frac k{10},\qquad \left|d(n)-\frac1{10}\right|=\frac{k-1}{10}\ge\frac1{10}=\varepsilon.$$
> Since $K$ was arbitrary, $\lim_{n\to\infty}d(n)\ne\frac1{10}$, so $f_C$ is not asymptotically 7-regular. $\blacksquare$

> [!warning] Common mistakes
> - Keeping $\Rightarrow$ in the negation (makes it vacuously true by picking $n\le K$).
> - Not saying **how** $m$ is chosen to get $n>K$.
> - Concluding "not 7-regular for some $\varepsilon$": regularity isn't per-$\varepsilon$.
> - Using $N$ as the threshold when $N$ is already the digit.

---

## Q3. Exactly one 7 (5 pts)

**Theorem.** Let $C$ be a 10-digit code. $f_C$ is asymptotically 7-regular $\iff$ $C$ contains exactly one 7.

**(a) (2 pts)** Prove $\Rightarrow$. *Hint: contrapositive.*

> [!success]- Solution (a)
> Contrapositive: if $C$ does not contain exactly one 7, then $f_C$ is not 7-regular. Then $k\ge2$ or $k=0$.
> - **$k\ge2$:** by Q2.
> - **$k=0$:** $f_C$ never outputs 7, so the set is empty and $d(n)=0$ for all $n>0$. Thus $\lim d(n)=0\ne\frac1{10}$ (limits are unique).
>
> So $f_C$ is not 7-regular in both cases. $\blacksquare$
>
> The "not all" in the hint is the $k=0$ case.

**(b) (3 pts)** Assume: if $C$ has exactly one 7, then for all $n>0$,

$$\frac n{10}-1\le|\{x\in S_n : f_C(x)=7\}|\le\frac n{10}+1.$$

Prove $\Leftarrow$. *Hint: another theorem does most of the work.*

> [!success]- Solution (b)
> Divide by $n>0$:
> $$\frac1{10}-\frac1n\le d(n)\le\frac1{10}+\frac1n.$$
> Since $\lim\frac1n=0$, limit laws give both outer sides $\to\frac1{10}$. By the **Squeeze Theorem**, $\lim_{n\to\infty}d(n)=\frac1{10}$. $\blacksquare$

---

## Q4. Nine digits ⇒ all ten (4 pts)

Prove: if $f$ is asymptotically $N$-regular for all $N\in S_9$, then $f$ is asymptotically regular.

*Hint: first show $\sum_{N=0}^{9}\frac{|\{x\in S_n: f(x)=N\}|}{n}=1$ for all $n>0$.*

> [!example]- Rough work Q4
> - $S_9=\{0,\dots,8\}$, so only digit $9$ is missing. "Regular" includes 9-regular, so 9 must be proved.
> - Can't do "one case, similarly for the rest": 9 is the only case and it's not symmetric with the given ones.
> - Fractions sum to 1, so $d_9=1-\frac9{10}$ in the limit.

> [!success]- Solution Q4
> Let $n>0$ and $A_N=\{x\in S_n : f(x)=N\}$ for $N\in S_{10}$. Since each $x\in S_n$ has exactly one output $f(x)\in S_{10}$, the sets $A_0,\dots,A_9$ are pairwise disjoint with union $S_n$. Hence
> $$\sum_{N=0}^{9}|A_N|=n,\qquad\text{so}\qquad d_9(n)=1-\sum_{N=0}^{8}d_N(n).$$
> By hypothesis, each of the nine finite limits $\lim d_N(n)$, $N\in S_9$, equals $\frac1{10}$. By the limit laws,
> $$\lim_{n\to\infty}d_9(n)=1-9\cdot\frac1{10}=\frac1{10}.$$
> Combined with the hypothesis, $\lim d_N(n)=\frac1{10}$ for every $N\in S_{10}$, so $f$ is asymptotically regular. $\blacksquare$

> [!note] Why the name
> "Regular" = every digit gets an equal share $\frac1{10}$. "Asymptotically" = only in the long run ($n\to\infty$); at any finite $n$ the counts can be uneven. Same idea as a **normal number** in number theory.
