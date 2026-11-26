---
course: MAT137
topic: intermediate value theorem
date: 2026-10-28
tags:
  - MAT137
  - continuity
  - IVT
prereq:
  - "[[Continuity and Discontinuities]]"
next: "[[The Derivative - Definition and Meaning]]"
week: W06
---

# Intermediate Value Theorem

Related: [[Continuity and Discontinuities]] · [[EVT Extreme Value Theorem]]

## Statement (Video 2.22)

If $f$ is **continuous on $[a,b]$**, then $f$ takes **every value between $f(a)$ and $f(b)$**:

$$\forall M\text{ between }f(a)\text{ and }f(b),\ \exists c\in[a,b],\ f(c)=M$$

Most common use: if $f(a)<0<f(b)$ (or the reverse), then $f$ has a root in $[a,b]$.
- It only says **existence**. There could be several such $c$.
- Continuity is essential. Without it, the graph can jump over $M$.
- The proof is hard (real analysis), so in MAT137 we take it as given.

## Example: $x^5+9x-6=0$ has a solution in $(0,1)$

This quintic can't be solved with a formula (Galois theory), but the IVT shows a solution exists. Let

$$f(x)=x^5+9x-6$$

$f$ is a polynomial, so it is continuous on $[0,1]$, and

$$f(0)=-6<0\qquad f(1)=4>0$$

By the IVT there is $c\in(0,1)$ with $f(c)=0$.

**Bisection** narrows it down. $f(0.5)<0$, so $c\in(0.5,1)$, and so on. In the end $c\approx0.6534$. (This method is slow, but it shows how the IVT works.)


## Example: limits at infinity + IVT (2SA3 Q1a)

$f$ continuous on $\mathbb R$, $\lim_{x\to\infty}f(x)=137$, $\lim_{x\to-\infty}f(x)=4$, $f(0)=0$. Show $f(x)=\pi$ has two solutions.

The IVT needs **specific points**, so first turn each limit into one. With $\varepsilon=137-\pi$ there is $M$ with

$$x>M\implies f(x)>137-\varepsilon=\pi$$

Pick $a=\max(M,0)+1>0$. Then $f(0)=0<\pi<f(a)$, and the IVT gives $c_1\in(0,a)$ with $f(c_1)=\pi$.

Same on the left with $\varepsilon=4-\pi>0$ (note $\pi<4$): get $b<0$ with $f(b)>\pi$, and then $c_2\in(b,0)$. Since $c_2<0<c_1$, the solutions are different.


## Example: two solutions of $5x^2=2\cos x$ (Week 8 tutorial Q3)

**Move everything to one side** so the question becomes "find roots":

$$g(x)=5x^2-2\cos x$$

$g$ is continuous on $\mathbb R$ (polynomial minus cosine). Look for sign changes:

$$g(0)=-2<0\qquad g(1)=5-2\cos1\ge5-2=3>0\qquad g(-1)=5-2\cos1>0$$

IVT on $[0,1]$ gives $c_1\in(0,1)$ with $g(c_1)=0$. IVT on $[-1,0]$ gives $c_2\in(-1,0)$ with $g(c_2)=0$. Since $c_2<0<c_1$, they are different. $\blacksquare$

> [!tip] "At least two solutions" = two disjoint intervals
> Find two intervals that don't overlap, each with a sign change. Disjointness is what guarantees "different".

## Example: infinite limits + IVT give surjectivity (Week 8 tutorial Q4)

$f$ continuous on $\mathbb R$, $\lim_{x\to\infty}f(x)=\infty$, $\lim_{x\to-\infty}f(x)=-\infty$. Prove: for every $v\in\mathbb R$ there is $c$ with $f(c)=v$.

**Definitions** (with the bound playing the role of $\varepsilon$):

$$\lim_{x\to\infty}f(x)=\infty\iff\forall M\ \exists N\ \forall x,\ x>N\Rightarrow f(x)>M$$

$$\lim_{x\to-\infty}f(x)=-\infty\iff\forall M\ \exists N\ \forall x,\ x<N\Rightarrow f(x)<M$$

**Proof.** Let $v\in\mathbb R$.

Apply the first definition with $M=v$: there is $N_1$ such that $x>N_1\Rightarrow f(x)>v$. Let $b=\max(N_1,0)+1$. Then $b>N_1$, so $f(b)>v$.

Apply the second definition with $M=v$: there is $N_2$ such that $x<N_2\Rightarrow f(x)<v$. Let $a=\min(N_2,0)-1$. Then $a<N_2$, so $f(a)<v$.

Now $a<0<b$, $f$ is continuous on $[a,b]$, and $f(a)<v<f(b)$. By the IVT there is $c\in(a,b)$ with $f(c)=v$. $\blacksquare$

> [!important] The key move
> The IVT needs **two actual points**. A limit hypothesis only gives you "eventually". So: feed the limit definition the number you care about ($M=v$), get an $N$, then **pick a specific point past $N$**. Same move as the 2SA3 example above.
