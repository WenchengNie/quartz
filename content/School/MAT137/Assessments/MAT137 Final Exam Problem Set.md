---
course: MAT137
type: test-prep
test: Final Exam
date: 2026-12-13
tags: [mat137, final, problem-set]
---
# MAT137 Final Exam — Problem Set

Study mash for the final. Coverage is **TBA** (see [[MAT137 Final Exam Study Guide]]), so this starts with post–Test 2 material and will grow as the exam info page and new practice appear.

- [ ] Part A: Week 11 lecture problems (optimization, L'Hôpital)
- [ ] Part B: Week 11 tutorial (inverse trig)
- [ ] Past tests (PDF)

---

## Part A: Week 11 lecture problems

Full worked solutions are in [[Applied Optimization]] and [[L'Hôpital's Rule and Indeterminate Forms]]; try them first here.

### A1. The farmer
300 m of fencing, a rectangle split down the middle into two equal pens. Largest total area?

> [!success]- Solution
> Side used 3 times $x$, other side $y$: $3x+2y=300$, $A=\frac{x(300-3x)}2$ on $[0,100]$. $A'=150-3x=0\iff x=50$; $A(0)=A(100)=0$. Max area $\boxed{3750\text{ m}^2}$.

### A2. Closest point
Point on $y^2=2x$ closest to $(1,4)$.

> [!success]- Solution
> $D(y)=(\frac{y^2}2-1)^2+(y-4)^2$, $D'(y)=y^3-8$, negative for $y<2$ and positive for $y>2$. Point $\boxed{(2,2)}$.

### A3. Airplane
Fuel cost per hour $\propto v^2$, $\$1200$/h at $600$ km/h; an $\$8$M inspection every $5000$ h. Speed minimizing cost per km?

> [!success]- Solution
> $C(v)=\frac v{300}+\frac{1600}v$, $C'(v)=0\iff v^2=480000$. $\boxed{v=400\sqrt3\approx693\text{ km/h}}$ (sign of $C'$ confirms a global min).

### ⭐ A4. Which are indeterminate?
$\frac00,\ \frac0\infty,\ \frac10,\ \frac\infty\infty,\ 1\cdot\infty,\ \infty\cdot\infty,\ 0\cdot\infty,\ 0^0,\ 1^\infty,\ \infty^0,\ 0^\infty,\ \infty^\infty$

> [!success]- Solution
> Indeterminate: $\frac00,\frac\infty\infty,0\cdot\infty,0^0,1^\infty,\infty^0$. The rest: $\frac0\infty\to0$; $\frac10$ has no finite limit; $1\cdot\infty$, $\infty\cdot\infty$, $\infty^\infty\to\infty$; $0^\infty\to0$ (base $\to0^+$).

### A5. Limits
(a) $\displaystyle\lim_{x\to2}\frac{x^2+2x-6}{x^2+3x-10}$ (b) $\displaystyle\lim_{x\to\infty}x^2\cos\frac2x$ (c) $\displaystyle\lim_{x\to1}(\ln x)\tan\frac{\pi x}2$ (d) $\displaystyle\lim_{x\to1}\Big[\frac2{x^2-1}-\frac1{x-1}\Big]$

> [!success]- Solution
> (a) Top $\to2$, bottom $\to0$: **not** indeterminate; one-sided limits are $\pm\infty$, so no limit. (b) $\infty\cdot1=\infty$, not indeterminate. (c) $\frac{\ln x}{\cot(\pi x/2)}$, L'H: $\boxed{-\frac2\pi}$. (d) Combine: $\frac{-(x-1)}{(x-1)(x+1)}\to\boxed{-\frac12}$.

### ⭐ A6. Exponential forms
(a) $\displaystyle\lim_{x\to\infty}\Big(\frac{x+2}{x-2}\Big)^{3x}$ (b) $\displaystyle\lim_{x\to0^+}x^x$ (c) $\displaystyle\lim_{x\to0}(1+2\sin3x)^{4\cot5x}$

> [!success]- Solution
> Take $\ln$ first. (a) $3x\ln\frac{x+2}{x-2}\to12$, answer $\boxed{e^{12}}$. (b) $x\ln x\to0$, answer $\boxed1$. (c) $\frac{4\ln(1+2\sin3x)}{\tan5x}\to\frac{24}5$, answer $\boxed{e^{24/5}}$.

### ⭐ A7. What's wrong?
"$\lim_{x\to\infty}\frac{x+\sin x}{x}\overset{L'H}=\lim(1+\cos x)$, which doesn't exist, so the original limit doesn't exist."

> [!success]- Solution
> L'Hôpital needs $\lim\frac{f'}{g'}$ to exist (or be $\pm\infty$). It doesn't, so the theorem gives no information. Actually $\frac{x+\sin x}x=1+\frac{\sin x}x\to\boxed1$.

---

## Part B: Week 11 tutorial (inverse trig)

### B1. Compute $\arccos(\cos2)$, $\arctan(\tan2)$, $\arcsin(\sin2)$.

> [!success]- Solution
> - $2\in[0,\pi]$, so $\arccos(\cos2)=\boxed2$.
> - $\tan$ has period $\pi$ and $2-\pi\in(-\frac\pi2,\frac\pi2)$, so $\arctan(\tan2)=\boxed{2-\pi}$.
> - $\sin2=\sin(\pi-2)$ and $\pi-2\in[-\frac\pi2,\frac\pi2]$, so $\arcsin(\sin2)=\boxed{\pi-2}$.

### B2. Algebraic formulas
(a) $\sin(\arccos x)$ (b) $\sin(\arctan x)$ (c) $\sec(\arccos x)$

> [!success]- Solution
> (a) $\theta=\arccos x\in[0,\pi]$ so $\sin\theta\ge0$: $\sqrt{1-x^2}$ for $x\in[-1,1]$.
> (b) $\theta\in(-\frac\pi2,\frac\pi2)$, $\cos\theta>0$, $\tan\theta=x$: $\frac{x}{\sqrt{1+x^2}}$ for all $x$.
> (c) $\frac1{\cos(\arccos x)}=\frac1x$ for $x\in[-1,1]$, $x\ne0$.

### B3. True or false: (a) $\operatorname{arccsc}x=\frac1{\arcsin x}$ (b) $\operatorname{arccsc}x=\arcsin\frac1x$

> [!success]- Solution
> (a) **False** (e.g. $x=1$: $\operatorname{arccsc}1=\frac\pi2$ but $\frac1{\arcsin1}=\frac2\pi$). (b) **True** for $|x|\ge1$: if $\theta=\arcsin\frac1x\in[-\frac\pi2,0)\cup(0,\frac\pi2]$ then $\csc\theta=x$, and that is the range used to define arccsc.

The remaining tutorial problems (arcsec derivative, Rolle/local-extrema true-false) have official solutions in `mat137-f26-tutorial-week11-sol.pdf`.

---

## Past tests (PDF)

Not transcribed: these are the original PDFs, shown right here. Click a box to open it. Official final-exam coverage is TBA, so check it before relying on any of these.

### Past final exams

From the UTM past-exams archive (no solutions posted). This is the **full-year MAT137Y** final, so it may include topics beyond our course; skip any questions on material we haven't covered.

> [!example]- MAT137Y Final Exam, April 2023
> ![[MAT137Y Apr 2023 Final Exam.pdf#height=800]]

### Past term tests

> [!example]- Fall 2026 Test 2 (our own)
> ![[mat137-f26-test2.pdf#height=800]]

> [!success]- Fall 2026 Test 2 (our own): Solutions
> ![[mat137-f26-test2-sol.pdf#height=800]]

> [!example]- Fall 2026 Test 1 (our own): solutions
> ![[mat137-f26-test1-sol.pdf#height=800]]

> [!example]- Fall 2025 Make-Up Test (covers both term tests, no solutions file)
> ![[mat137h-f25-test-makeup.pdf#height=800]]

> [!example]- Fall 2025 Test 2
> ![[mat137h-f25-test2.pdf#height=800]]

> [!success]- Fall 2025 Test 2: Solutions
> ![[mat137h-f25-test2-sol.pdf#height=800]]

> [!example]- Fall 2023 Test 2
> ![[mat137f-f23-test2.pdf#height=800]]

> [!success]- Fall 2023 Test 2: Solutions
> ![[mat137f-f23-test2-sol.pdf#height=800]]

> [!example]- Fall 2022 Test 2A
> ![[mat137-f22-test2A.pdf#height=800]]

> [!success]- Fall 2022 Test 2A: Solutions
> ![[mat137-f22-test2A-sol.pdf#height=800]]
