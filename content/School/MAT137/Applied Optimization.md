---
course: MAT137
topic: applied optimization
date: 2026-11-25
tags:
  - MAT137
  - optimization
  - extrema
  - derivatives
prereq:
  - "[[Local Extrema and Critical Points]]"
  - "[[EVT Extreme Value Theorem]]"
week: W11
---

# Applied Optimization

Related: [[Local Extrema and Critical Points]] · [[EVT Extreme Value Theorem]] · [[Rolle's Theorem and the Mean Value Theorem]] · [[L'Hôpital's Rule and Indeterminate Forms]]

> [!info] Source
> Week 11 slides (`mat137-f26-slides-w11-12.pdf`) and videos 6.3–6.4 on Playlist 6.

## Method

1. Name the variables and draw a picture.
2. Write the quantity to optimize as a function of **one** variable, using the constraint.
3. Find the **domain** (physical restrictions: lengths $\ge0$, etc.).
4. Find the critical points (see [[Local Extrema and Critical Points]]).
5. Justify that it really is a global max/min: on a closed interval, compare critical points and endpoints ([[EVT Extreme Value Theorem]]); on an open interval, use the sign of $f'$ (increasing then decreasing ⇒ global max).
6. Answer the question that was asked (the area? the point? the speed?).

> [!warning] The step people skip
> Finding $f'(c)=0$ is **not** a proof that $c$ is a global max. You still need step 5.

## Worked examples (slide problems)

### The farmer (300 m of fencing, split down the middle)
Let $x$ be the length of the side that appears **3 times** (two ends + the divider) and $y$ the other side (appears twice). Constraint: $3x+2y=300$, so $y=\frac{300-3x}{2}$.

$$A(x)=xy=\frac{x(300-3x)}{2}=150x-\tfrac32x^2,\qquad 0\le x\le100.$$

$A'(x)=150-3x=0\iff x=50$. Compare: $A(0)=A(100)=0$ and $A(50)=50\cdot75=3750$.

**Largest total area: $3750\ \text{m}^2$** ($50\times75$ m; each pen is $1875\ \text{m}^2$).

### Closest point on $y^2=2x$ to $(1,4)$
Minimize the **squared** distance (same minimizer, easier algebra). Use $y$ as the variable: $x=\frac{y^2}{2}$.

$$D(y)=\Big(\frac{y^2}{2}-1\Big)^2+(y-4)^2,\qquad y\in\mathbb R.$$

$$D'(y)=2\Big(\frac{y^2}2-1\Big)y+2(y-4)=y^3-2y+2y-8=y^3-8.$$

$D'(y)<0$ for $y<2$ and $D'(y)>0$ for $y>2$, so $y=2$ is the global min. **Point: $(2,2)$**, at distance $\sqrt{1^2+2^2}=\sqrt5$.

### The airplane (cost per kilometre)
Fuel cost per hour $=kv^2$ with $1200=k\cdot600^2$, so $k=\frac1{300}$. Inspection: $\$8{,}000{,}000$ per $5000$ h $=\$1600$ per hour.

$$\text{cost per hour}=\frac{v^2}{300}+1600,\qquad C(v)=\text{cost per km}=\frac{v}{300}+\frac{1600}{v},\quad v>0.$$

$C'(v)=\frac1{300}-\frac{1600}{v^2}=0\iff v^2=480000\iff v=400\sqrt3\approx693$ km/h.
$C'<0$ before and $C'>0$ after, so this is the global min. **Fly at $400\sqrt3\approx693$ km/h.**

### Dominion (integer optimization)
With $3N$ gold you buy $a$ Duchies and $N-a$ Dukes. Victory points:
$$V(a)=3a+a(N-a)=a(N+3-a),\qquad a\in\{0,1,\dots,N\}.$$
As a function of real $a$ this parabola peaks at $a=\frac{N+3}{2}$. So buy the **integer closest to $\frac{N+3}2$ Duchies** (if $N$ is even there are two equally good choices), but never more than $N$. Check: $N=1\Rightarrow a=1$ (one Duchy). $N=4\Rightarrow a=3$ or $4$, both giving $12$ VP (the slide's "3 Duchies, 1 Duke").

> [!tip] Integer problems
> Solve the continuous version, then check the integers on either side of the critical point (and the endpoints).
