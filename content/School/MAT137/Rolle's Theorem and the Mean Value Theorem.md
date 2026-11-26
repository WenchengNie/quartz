---
course: MAT137
topic: Rolle's theorem, MVT, monotonicity
date: 2026-11-18
tags:
  - MAT137
  - derivatives
  - MVT
  - proofs
prereq:
  - "[[Local Extrema and Critical Points]]"
  - "[[Increasing Functions]]"
  - "[[EVT Extreme Value Theorem]]"
week: W10
---

# Rolle's Theorem and the Mean Value Theorem

Related: [[Local Extrema and Critical Points]] · [[Increasing Functions]] · [[Inverse Functions]] · [[MAT137 Theorems]]

> [!info] Week 10 lecture slides (videos 5.5–5.12). Not on Term Test 2 (Fri Nov 20). 2SA4 Stage 1 is due Sun Nov 29.

## Rolle's Theorem (videos 5.5–5.6)

Let $a<b$ and let $f$ be defined on $[a,b]$. **If**
- $f$ is continuous on $[a,b]$,
- $f$ is differentiable on $(a,b)$, and
- $f(a)=f(b)$,

**then** $\exists c\in(a,b)$ such that $f'(c)=0$.

**Consequence:** between any two roots of $f$ there is a root of $f'$. So if $f'$ has at most $k$ roots, then $f$ has at most $k+1$ roots.

### Example: how many roots does $f(x)=e^x-\sin x+x^2+10x$ have?

**Exactly 2.**

- **At most 2.** $f''(x)=e^x+\sin x+2\ge e^x+1>0$, so $f'$ is increasing and has at most one root. By Rolle, $f$ has at most $2$ roots. (Two roots of $f'$ would need a root of $f''$ between them.)
- **At least 2** (IVT, since $f$ is continuous):
  $$f(-20)\approx 200>0,\qquad f(-1)=e^{-1}+\sin1+1-10\approx-7.8<0,\qquad f(0)=1>0$$
  so there is a root in $(-20,-1)$ and another in $(-1,0)$.

> [!tip] Pattern
> Upper bound on the number of roots: Rolle (count roots of $f'$, or of $f''$). Lower bound: IVT (find sign changes).

## Nonzero derivative ⇒ injective

> [!important] Theorem
> Let $f$ be differentiable on an open interval $I$. If $\forall x\in I,\ f'(x)\ne0$, then $f$ is injective on $I$.

**Contrapositive:** if $f$ is not injective on $I$, then $\exists c\in I,\ f'(c)=0$.

**Not injective:** $\exists x_1,x_2\in I,\ x_1\ne x_2\ \wedge\ f(x_1)=f(x_2)$.

*Proof.* Assume $f$ is not injective on $I$. Then there are $x_1\neq x_2$ in $I$ with $f(x_1)=f(x_2)$; WLOG $x_1<x_2$. Since $I$ is an interval, $[x_1,x_2]\subseteq I$. $f$ is differentiable on $I$, so it is differentiable on $(x_1,x_2)$, and continuous on $[x_1,x_2]$ (differentiable ⇒ continuous). With $f(x_1)=f(x_2)$, Rolle's Theorem gives $c\in(x_1,x_2)\subseteq I$ with $f'(c)=0$. $\blacksquare$

### Bonus variant (weakest hypotheses)

Let $a<b$ and $f$ be defined on $[a,b]$. **If** $f$ is continuous on $[a,b]$, differentiable on $(a,b)$, and **not injective** on $[a,b]$, **then** $\exists c\in(a,b)$ with $f'(c)=0$.

Same proof: take $x_1<x_2$ in $[a,b]$ with $f(x_1)=f(x_2)$ and apply Rolle on $[x_1,x_2]$; then $(x_1,x_2)\subseteq(a,b)$.

Each hypothesis is needed:
- **Continuity:** on $[0,1]$, $f(0)=1$ and $f(x)=x$ for $x>0$. Not injective ($f(0)=f(1)$), $f'=1$ on $(0,1)$.
- **Differentiability:** $f(x)=|x|$ on $[-1,1]$. Not injective, but $f'(x)=\pm1$ wherever it exists.

## Mean Value Theorem (videos 5.7–5.9)

Let $a<b$ and let $f$ be defined on $[a,b]$. **If** $f$ is continuous on $[a,b]$ and differentiable on $(a,b)$, **then**

$$\exists c\in(a,b)\ \text{such that}\ f'(c)=\frac{f(b)-f(a)}{b-a}$$

Some tangent line is parallel to the secant line. Rolle's Theorem is the special case $f(a)=f(b)$.

### Poll: $f(0)=-5$, $f'\le10$ on $(0,7)$. What about $f(7)$?

**$f(7)\le65$.** By the MVT on $[0,7]$ there is $c\in(0,7)$ with

$$f(7)-f(0)=7f'(c)\le70\implies f(7)\le-5+70=65$$

### Race, parts 1–2

- **Part 1:** let $s(t)$ be the position, with the race on $[t_1,t_2]$. The MVT gives $c$ with $s'(c)=\frac{s(t_2)-s(t_1)}{t_2-t_1}$: at time $c$, your velocity equals your average velocity.
- **Part 2: yes.** Let $h(t)=f(t)-g(t)$ be the difference of the two positions. You start together and finish tied, so $h(t_1)=h(t_2)=0$. Rolle gives $c\in(t_1,t_2)$ with $h'(c)=0$, i.e. $f'(c)=g'(c)$, and $c\ne t_1$.

### Part 3: what's wrong with the proof?

It applies the MVT to $f$ and to $g$ separately and calls **both** points $c$. The MVT gives some $c_1$ for $f$ and some $c_2$ for $g$, and nothing says $c_1=c_2$. It only shows the two cars had the same **average** velocity. Fix: apply Rolle (or the MVT) to the single function $h=f-g$, as above.

## Monotonicity (videos 5.10–5.12)

### Poll: where is $f(x)=x^3$ increasing?

Statements 1–9 are **all true**: $x^3$ is increasing on $\mathbb R$, so it's increasing on every interval inside $\mathbb R$, even though $f'(0)=0$. Statements 10–11 ("constant **at** a point") are **false**: increasing or constant are properties **on an interval**, not at a point.

### Poll: $I$ open, $c\in I$

| Statement | Verdict | Why |
|---|---|---|
| $f$ increasing on $I$ ⇒ $f'>0$ on $I$ | False | $x^3$ on $(-1,1)$ has $f'(0)=0$ (and $f$ need not be differentiable) |
| $f'>0$ on $I$ ⇒ $f$ increasing on $I$ | **True** | Theorem below |
| local extremum at $c$ ⇒ $f'(c)=0$ | False | $\lvert x\rvert$ at $0$: $f'(0)$ doesn't exist. Only "$f'(c)=0$ **or** DNE" is true |
| $f'(c)=0$ ⇒ local extremum at $c$ | False | $x^3$ at $0$ |

On a closed interval, local extrema can't be at the endpoints (MAT137 convention), and $f'$ at an endpoint would be one-sided.

### Theorem: positive derivative ⇒ increasing

Let $a<b$ and $f$ be differentiable on $(a,b)$. If $\forall x\in(a,b),\ f'(x)>0$, then $f$ is increasing on $(a,b)$.

**WTS** (definition of increasing): $\forall x_1,x_2\in(a,b),\ x_1<x_2\Rightarrow f(x_1)<f(x_2)$.

*Proof.* Let $x_1,x_2\in(a,b)$ with $x_1<x_2$. $f$ is differentiable on $(a,b)$, so it is differentiable on $(x_1,x_2)$ and continuous on $[x_1,x_2]$. By the MVT there is $c\in(x_1,x_2)$ with

$$f(x_2)-f(x_1)=f'(c)\,(x_2-x_1)$$

Since $c\in(a,b)$, $f'(c)>0$, and $x_2-x_1>0$. So $f(x_2)-f(x_1)>0$, i.e. $f(x_1)<f(x_2)$. $\blacksquare$

### What's wrong with the slide's proof?

It applies the MVT to $[a,b]$ and concludes $f(b)>f(a)$.
1. **Wrong conclusion.** Increasing needs $f(x_1)<f(x_2)$ for **every** pair $x_1<x_2$, not just the endpoints. Start with "Let $x_1<x_2$ in $(a,b)$".
2. **Hypotheses not checked.** $f$ is only defined on $(a,b)$, so $f(a)$ and $f(b)$ may not exist, and nothing says $f$ is continuous on $[a,b]$.
3. **$c$ appears from nowhere.** Say "there exists $c\in\dots$ such that".

## Proving inequalities: $e^x\ge1+x$ for all $x\in\mathbb R$

Let $f(x)=e^x-1-x$, so $f(0)=0$ and $f'(x)=e^x-1$, which is $<0$ for $x<0$ and $>0$ for $x>0$.

*Proof.* Let $x\in\mathbb R$. If $x=0$, then $f(0)=0$.
- If $x>0$: by the MVT on $[0,x]$, $f(x)-f(0)=x\,f'(c)$ for some $c\in(0,x)$. Here $x>0$ and $f'(c)=e^c-1>0$, so $f(x)>0$.
- If $x<0$: by the MVT on $[x,0]$, $f(0)-f(x)=(-x)f'(c)$ for some $c\in(x,0)$. Here $-x>0$ and $f'(c)<0$, so $f(0)-f(x)<0$, i.e. $f(x)>0$.

So $f(x)\ge0$, i.e. $e^x\ge1+x$, with equality only at $x=0$. $\blacksquare$

> [!tip] Pattern
> To prove $g(x)\ge h(x)$: study $f=g-h$, find where $f$ is increasing or decreasing from the sign of $f'$, and compare with a point where $f=0$.
