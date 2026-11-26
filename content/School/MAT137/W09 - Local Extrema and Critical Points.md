---
course: MAT137
topic: local extrema
date: 2026-11-09
tags:
  - MAT137
  - extrema
  - derivatives
prereq:
  - "[[W06 - EVT Extreme Value Theorem|EVT Extreme Value Theorem]]"
  - "[[W06 - The Derivative - Definition and Meaning|The Derivative - Definition and Meaning]]"
week: W09
---

# Local Extrema and Critical Points

Related: [[W06 - EVT Extreme Value Theorem|EVT Extreme Value Theorem]] · [[W07 - Reading the Graph of f from f'|Reading the Graph of f from f']]

## Definitions (MAT137 convention)

- $f$ has a **local maximum** at $c$ if $\exists\delta>0$ such that $|x-c|<\delta\implies f(x)\le f(c)$. A local minimum is the same with $\ge$.
- Since $f$ must be defined on the whole interval $(c-\delta,c+\delta)$, **local extrema only happen at interior points**. Endpoints never count in MAT137, though some textbooks allow them.
- A **critical point** is an interior point $c$ of the domain where $f'(c)=0$ **or** $f$ is not differentiable at $c$.
- A **global (absolute) max** on $D$: $\forall x\in D,\ f(x)\le f(c)$. This *can* happen at an endpoint.

## Local EVT (Fermat's theorem)

> [!important] Theorem
> If $f$ has a local extremum at $c$, then $f'(c)=0$ or $f$ is not differentiable at $c$. In other words, every local extremum is a critical point.

**The converse is false:** $f(x)=x^3$ has $f'(0)=0$, but there's no extremum at 0.

## Where can a global max be?

On a closed interval $[a,b]$ with $f$ continuous, the [[W06 - EVT Extreme Value Theorem|EVT Extreme Value Theorem]] guarantees a max exists. It is at a critical point or at an endpoint, so compare $f$ at all of them.

> [!example]- Week 9 poll: $h$ on $(-4,4)$, continuous, not differentiable at 0, $h'(x)=0\iff x=\pm1$
> **None of the given options.** The domain is open, so EVT doesn't apply and $h$ might **have no maximum at all**. All we can say is that *if* $h$ has a max, it is at $-1$, $0$ or $1$. The points $\pm4$ aren't even in the domain.

> [!example]- Week 9 poll: $f$ differentiable on $\mathbb R$, $a<b$. Which must be true?
> - $f'(x)\ne0$ on $(a,b)$ $\Rightarrow f(a)\ne f(b)$: **true** (contrapositive of Rolle's theorem)
> - $f(a)\ne f(b)\Rightarrow f'(x)\ne0$ on $(a,b)$: **false**
> - $f'(c)=0\Rightarrow$ local max or min at $c$: **false** ($x^3$)
> - $f(a)=f(b)\Rightarrow f'(x)=0$ has a solution in $(a,b)$: **true** (Rolle's theorem)
> - $f'$ can't have more roots than $f$: **false** ($x^2+1$ has none, $f'=2x$ has one)
>
> What Rolle's theorem actually gives: between any two roots of $f$ there is a root of $f'$. So $f'$ has *at least* (number of roots of $f$) $-1$ roots.
