---
course: MAT137
topic: L'Hôpital's rule
date: 2026-11-25
tags:
  - MAT137
  - limits
  - derivatives
  - lhopital
prereq:
  - "[[Computing Limits]]"
  - "[[Infinite Limits - Sum and Product]]"
  - "[[Exponentials, Logarithms and Logarithmic Differentiation]]"
week: W11
---

# L'Hôpital's Rule and Indeterminate Forms

Related: [[Computing Limits]] · [[Infinite Limits - Sum and Product]] · [[Squeeze Theorem]] · [[Applied Optimization]]

> [!info] Source
> Week 11 slides (`mat137-f26-slides-w11-12.pdf`, Week 11 and 12 combined) and videos 6.5–6.12 on Playlist 6.

## Indeterminate forms

A "form" is indeterminate when knowing the limits of the pieces does **not** determine the limit of the whole: the answer depends on the actual functions.

| Indeterminate | Not indeterminate |
|---|---|
| $\frac00,\ \frac\infty\infty,\ 0\cdot\infty,\ \infty-\infty$ | $\frac0\infty\to0$, $\ \infty\cdot\infty\to\infty$, $\ \infty+\infty\to\infty$ |
| $1^\infty,\ 0^0,\ \infty^0$ | $0^\infty\to0$ (base $\to0^+$), $\ \infty^\infty\to\infty$, $\ 1.01^\infty\to\infty$ |
| | $\frac10$: no finite limit (the limit is $\pm\infty$ or doesn't exist, depending on signs) |

**How to prove $\frac00$ is indeterminate (slide problem):** for every $c\in\mathbb R$, find $f,g$ with $f,g\to0$ but $\frac fg\to c$. Take $f(x)=cx$, $g(x)=x$: then $\frac{f(x)}{g(x)}=c$ for $x\ne0$. Since every $c$ is possible, the form alone tells you nothing.

## The theorem (as stated in the slides)

> [!important] L'Hôpital's rule (part of it)
> Let $f,g$ be functions and $a\in\mathbb R$. **If**
> 1. $f$ and $g$ are differentiable on an interval centred at $a$, except possibly at $a$;
> 2. $g$ and $g'$ are non-zero on an interval centred at $a$, except possibly at $a$;
> 3. $\lim_{x\to a}\frac{f(x)}{g(x)}$ is an indeterminate form of type $\frac00$ or $\frac\infty\infty$;
> 4. $\lim_{x\to a}\frac{f'(x)}{g'(x)}$ exists or is $\pm\infty$;
>
> **then** $$\lim_{x\to a}\frac{f(x)}{g(x)}=\lim_{x\to a}\frac{f'(x)}{g'(x)}.$$
> Also true for $a=\pm\infty$ and for one-sided limits.

It is $\frac{f'}{g'}$ (derivative of top over derivative of bottom), **not** the derivative of the quotient.

> [!warning] Check hypotheses 3 and 4 every time
> - If the limit isn't $\frac00$ or $\frac\infty\infty$, L'Hôpital doesn't apply. Example: $\lim_{x\to2}\frac{x^2+2x-6}{x^2+3x-10}$ has top $\to2$, bottom $\to0$. It is **not** indeterminate, so the limit is not finite (the two one-sided limits are $\pm\infty$).
> - If $\lim\frac{f'}{g'}$ **doesn't exist**, the theorem says **nothing**. It does *not* mean the original limit doesn't exist.

## Converting other forms

| Form | Trick | Becomes |
|---|---|---|
| $0\cdot\infty$ ($f\to\infty$, $g\to0$) | $fg=\dfrac{g}{1/f}$ or $\dfrac{f}{1/g}$ | $\frac00$ or $\frac\infty\infty$ |
| $\infty-\infty$ | common denominator, or combine logs | a quotient |
| $1^\infty,\ 0^0,\ \infty^0$ | $f^g=e^{g\ln f}$, compute $\lim g\ln f$ first | $0\cdot\infty$ |

## Worked examples

**1. Polynomial over exponential.** $\displaystyle\lim_{x\to\infty}\frac{x^5+x^3-12x+\pi}{e^x}$ is $\frac\infty\infty$. Apply L'Hôpital 5 times: the top becomes the constant $120$ and the bottom stays $e^x$, so the limit is $\frac{120}{\infty}=0$.

> [!tip] General result (slide: "state a theorem")
> For any polynomial $p$, $\displaystyle\lim_{x\to\infty}\frac{p(x)}{e^x}=0$: exponentials beat polynomials.

**2. $0\cdot\infty$.** $\displaystyle\lim_{x\to\infty}x^2\sin\frac2x$. Write $x^2\sin\frac2x = x\cdot\dfrac{\sin(2/x)}{1/x}$. With $u=\frac1x\to0^+$: $\frac{\sin 2u}{u}\to2$. So the expression behaves like $2x\to\infty$.

Compare $\displaystyle\lim_{x\to\infty}x^2\cos\frac2x$: here $\cos\frac2x\to1$, so it's $\infty\cdot1=\infty$. **Not indeterminate at all.**

**3. $0\cdot\infty$ with trig.** $\displaystyle\lim_{x\to1}(\ln x)\tan\frac{\pi x}{2}$. Rewrite as $\dfrac{\ln x}{\cot(\pi x/2)}$, type $\frac00$:
$$\lim_{x\to1}\frac{1/x}{-\frac\pi2\csc^2(\pi x/2)}=\frac{1}{-\pi/2}=-\frac2\pi.$$

**4. $\infty-\infty$.**
- $\displaystyle\lim_{x\to\infty}\big[\ln(x+2)-\ln(3x+4)\big]=\lim_{x\to\infty}\ln\frac{x+2}{3x+4}=\ln\frac13=-\ln3$.
- $\displaystyle\lim_{x\to1}\Big[\frac{2}{x^2-1}-\frac1{x-1}\Big]=\lim_{x\to1}\frac{2-(x+1)}{x^2-1}=\lim_{x\to1}\frac{-(x-1)}{(x-1)(x+1)}=-\frac12$.

**5. $1^\infty$.** $\displaystyle\lim_{x\to\infty}\Big(\frac{x+2}{x-2}\Big)^{3x}$. Let $L=\lim 3x\ln\frac{x+2}{x-2}$. Since $\ln\frac{x+2}{x-2}=\ln\!\big(1+\frac4{x-2}\big)$, we get
$$L=\lim_{x\to\infty}\frac{\ln\big(1+\frac{4}{x-2}\big)}{1/(3x)}\overset{\text{L'H}}{=}12,$$
so the limit is $e^{12}$.

**6. $1^\infty$ with trig.** $\displaystyle\lim_{x\to0}(1+2\sin3x)^{4\cot5x}$: exponent of $e$ is $\lim 4\cot(5x)\ln(1+2\sin3x)=\lim\frac{4\ln(1+2\sin3x)}{\tan5x}\overset{\text{L'H}}{=}\frac{4\cdot6}{5}=\frac{24}5$. Answer: $e^{24/5}$.

**7. $0^0$.** $\displaystyle\lim_{x\to0^+}x^x=\lim e^{x\ln x}$, and $x\ln x=\frac{\ln x}{1/x}\overset{\text{L'H}}{\to}\lim\frac{1/x}{-1/x^2}=\lim(-x)=0$. Answer: $e^0=1$.

**8. Challenge.** $\displaystyle\lim_{x\to0}\Big(\frac{\sin x}{x}\Big)^{1/x^2}=e^{-1/6}$ (the exponent $\frac{\ln(\sin x/x)}{x^2}\to-\frac16$, using L'Hôpital twice or more).

## When L'Hôpital goes wrong (slide problems)

> [!warning] Problem 1: $\lim_{x\to\infty}\frac{x+\sin x}{x}$
> "Wrong proof": it's $\frac\infty\infty$, L'Hôpital gives $\lim(1+\cos x)$, which doesn't exist, so the limit doesn't exist. **Wrong**: when $\lim\frac{f'}{g'}$ doesn't exist, the theorem doesn't apply. Correct: $\frac{x+\sin x}{x}=1+\frac{\sin x}{x}\to1$ ([[Squeeze Theorem]] / [[Bounded Times Zero Limit]]).

> [!warning] Problem 2: $\lim_{x\to0}\frac{f(x)}{\sqrt[3]x}$, with $f$ differentiable **at 0** and $f(0)=0$
> The argument "L'H gives $\lim 3x^{2/3}f'(x)=3\cdot0\cdot f'(0)=0$" has two gaps: $f$ is only known to be differentiable *at* 0, not on an interval around it (hypothesis 1), and $\lim f'(x)=f'(0)$ assumes $f'$ is continuous. A correct route: $\frac{f(x)}{x^{1/3}}=\frac{f(x)-f(0)}{x-0}\cdot x^{2/3}\to f'(0)\cdot0=0$.

> [!warning] Problem 3: $\lim_{x\to\infty}\frac{e^x+e^{-x}}{e^x-e^{-x}}$
> L'Hôpital turns it into $\frac{e^x-e^{-x}}{e^x+e^{-x}}$, and again back to the original: it loops forever. Divide top and bottom by $e^x$ instead: $\frac{1+e^{-2x}}{1-e^{-2x}}\to1$.
