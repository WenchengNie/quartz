---
course: MAT137
topic: techniques for computing limits
date: 2026-10-28
tags:
  - MAT137
  - limits
  - techniques
prereq:
  - "[[W04 - Limit Laws and Existence|Limit Laws and Existence]]"
  - "[[W05 - Continuity and Discontinuities|Continuity and Discontinuities]]"
  - "[[W04 - Squeeze Theorem|Squeeze Theorem]]"
next: "[[W06 - EVT Extreme Value Theorem|EVT Extreme Value Theorem]]"
week: W05
---

# Computing Limits

Related: [[W05 - Continuity and Discontinuities|Continuity and Discontinuities]] · [[W04 - Squeeze Theorem|Squeeze Theorem]] · [[W04 - Limit Laws and Existence|Limit Laws and Existence]] · [[W03 - The Idea of a Limit|The Idea of a Limit]]

## Checklist at a point (Video 2.19)

1. **Continuous at the point?** Then plug in.
2. **Otherwise ($\frac00$ etc.), manipulate algebraically** into a function that is continuous at the point. Manipulations only need to be valid **near** $a$, not **at** $a$, so you may cancel a factor that is $0$ only at $a$.
3. **Reduce to a known limit**, e.g. $\lim_{x\to0}\frac{\sin x}x=1$.
4. Other tools: [[W04 - Squeeze Theorem|Squeeze Theorem]], [[W04 - Bounded Times Zero Limit|Bounded Times Zero Limit]]. L'Hôpital and Taylor series come later.

## Factoring

$$\lim_{x\to1}\frac{x^2-1}{x-1}=\lim_{x\to1}(x+1)=2$$

## Conjugates

$$\lim_{x\to0}\frac{1-\sqrt{1+x}}{x}=\lim_{x\to0}\frac{-1}{1+\sqrt{1+x}}=-\frac12$$

## Reducing to $\frac{\sin u}{u}$

For any constant $a\ne0$, substituting $u=ax$ gives

$$\lim_{x\to0}\frac{\sin(ax)}{ax}=1$$

$$\lim_{x\to0}\frac{\sin 2x}{x}=\lim_{x\to0}2\cdot\frac{\sin2x}{2x}=2$$

$$\lim_{x\to0}\frac{\sin2x}{\sin3x}=\lim_{x\to0}\frac{\sin2x}{2x}\cdot\frac{3x}{\sin3x}\cdot\frac23=\frac23$$

Multiply by the "sort-of conjugate" $1+\cos x$:

$$\lim_{x\to0}\frac{1-\cos x}{x^2}=\lim_{x\to0}\frac{1-\cos^2x}{x^2(1+\cos x)}=\lim_{x\to0}\left(\frac{\sin x}{x}\right)^2\cdot\frac1{1+\cos x}=1\cdot\frac12=\frac12$$

Similarly, the limit used in [[W07 - Trigonometric Derivatives|Trigonometric Derivatives]]:

$$\lim_{h\to0}\frac{\cos h-1}{h}=\lim_{h\to0}-\frac{\sin h}{h}\cdot\frac{\sin h}{1+\cos h}=-1\cdot0=0$$

## Rational functions at $\pm\infty$ (Video 2.20)

Building blocks:

$$\lim_{x\to\infty}x=\infty\qquad\lim_{x\to\infty}\frac1x=0$$

**Rule:** only the highest power in the numerator and in the denominator matters. **Justify it** by factoring that power out:

$$2x^3-5x^2+1=x^3\left(2-\frac5x+\frac1{x^3}\right)\to\infty$$

$$\frac{2x^2+x-1}{3x^2-4}=\frac{x^2\left(2+\frac1x-\frac1{x^2}\right)}{x^2\left(3-\frac4{x^2}\right)}\to\frac23$$

The same method works with roots, if you read $\sqrt{x^4}$ as $x^2$:

$$\frac{x^2+\sqrt{x^4+3x}}{\sqrt{2x^4+1}+x}=\frac{x^2\left(1+\sqrt{1+\frac3{x^3}}\right)}{x^2\left(\sqrt{2+\frac1{x^4}}+\frac1x\right)}\to\frac{1+1}{\sqrt2}=\sqrt2$$

(This example is my own, built to illustrate the video's method.)


## Example: conjugate at a point (Week 8 tutorial Q2a)

$$\lim_{u\to2}\frac1{2-u}\left(\sqrt{\frac{u+2}{u-1}}-2\right)$$

Plugging in gives $\frac00$. Multiply top and bottom by the conjugate $\sqrt{\frac{u+2}{u-1}}+2$:

$$\sqrt{\frac{u+2}{u-1}}-2=\frac{\frac{u+2}{u-1}-4}{\sqrt{\frac{u+2}{u-1}}+2}=\frac{\frac{6-3u}{u-1}}{\sqrt{\frac{u+2}{u-1}}+2}=\frac{3(2-u)}{(u-1)\left(\sqrt{\frac{u+2}{u-1}}+2\right)}$$

The $(2-u)$ cancels (valid since $u\ne2$ near $2$):

$$\lim_{u\to2}\frac{3}{(u-1)\left(\sqrt{\frac{u+2}{u-1}}+2\right)}=\frac{3}{1\cdot(2+2)}=\frac34$$

## Conjugates at $\pm\infty$ and the $\sqrt{x^2}=|x|$ trap (Week 8 tutorial Q2b, c)

> [!warning] $\sqrt{x^2}=|x|$, not $x$
> When $x\to-\infty$, $x<0$, so $\sqrt{x^2}=-x$. Factoring $x^2$ out of a root gives $\sqrt{x^2\,(\dots)}=|x|\sqrt{\dots}$.

**(b)** $x\to\infty$: both $x\to\infty$ and $\sqrt{x^2-x}\to\infty$, so the sum goes to $\infty$. No indeterminate form.

$$\lim_{x\to\infty}\left[x+\sqrt{x^2-x}\right]=\infty$$

**(c)** $x\to-\infty$: now $x\to-\infty$ and $\sqrt{x^2-x}\to\infty$, which is $\infty-\infty$ (indeterminate). Multiply by the conjugate:

$$x+\sqrt{x^2-x}=\frac{x^2-(x^2-x)}{x-\sqrt{x^2-x}}=\frac{x}{x-\sqrt{x^2-x}}$$

For $x<0$:

$$\sqrt{x^2-x}=|x|\sqrt{1-\tfrac1x}=-x\sqrt{1-\tfrac1x}$$

so the denominator is $x+x\sqrt{1-\frac1x}=x\left(1+\sqrt{1-\frac1x}\right)$ and

$$\lim_{x\to-\infty}\frac{x}{x\left(1+\sqrt{1-\frac1x}\right)}=\frac1{1+1}=\frac12$$

Same expression, different answers at $\pm\infty$. The sign of $x$ is the whole story.

## Floor function limits (Week 3 slides)

$\lfloor x\rfloor$ is the largest integer $\le x$. For example $\lfloor\pi\rfloor=3$, $\lfloor7\rfloor=7$, $\lfloor-0.5\rfloor=-1$.

$$\lim_{x\to0^+}\lfloor x\rfloor=0\qquad\lim_{x\to0^-}\lfloor x\rfloor=-1\qquad\lim_{x\to0}\lfloor x\rfloor\ \text{DNE}\qquad\lim_{x\to0}\lfloor x^2\rfloor=0$$

The last one is 0 because $0\le x^2<1$ near 0, so $\lfloor x^2 \rfloor = 0$ there.

## More practice from the Week 5/6 slides

1. $\displaystyle\lim_{x\to0}\frac{x}{3-\sqrt{x+9}}=\lim\frac{x(3+\sqrt{x+9})}{-x}=-6$
2. $\displaystyle\lim_{x\to\infty}\frac{\sqrt{x^2+1}+2x}{5x}=\frac35$
3. $\displaystyle\lim_{x\to0}\frac{\sin(e^x)}{e^x}=\sin1$
4. $\displaystyle\lim_{x\to0}\frac{\sin(x^2)}{\cos(3x)\sin^2(7x)}=\frac1{49}$
