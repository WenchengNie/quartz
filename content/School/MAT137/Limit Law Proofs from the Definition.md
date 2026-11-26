---
course: MAT137
topic: limit law proofs from the definition
date: 2026-11-15
tags:
  - MAT137
  - limits
  - proofs
prereq:
  - "[[Limit Laws and Existence]]"
  - "[[Epsilon-Delta Proofs]]"
week: W09
---
# Limit Law Proofs from the Definition

Related: [[Limit Laws and Existence]], [[Infinite Limits - Sum and Product]], [[The Idea of a Limit]]

## Core strategy
1. Write the **goal** definition: start with "Let $\varepsilon>0$" (or "Let $M\in\mathbb{R}$").
2. Use the **hypothesis** definitions with a cleverly chosen tolerance ($\varepsilon/2$, $\varepsilon/4$, $-1/\varepsilon$, …) to get $\delta_1,\delta_2$ (or $R$).
3. Set $\delta=\min(\dots)$ so every hypothesis applies at once.
4. Chain inequalities, usually through the **triangle inequality** $|A+B|\le|A|+|B|$.

## Definitions used
- $\lim_{x\to a}f(x)=L$: $\forall\varepsilon>0\ \exists\delta>0\ \forall x,\ 0<|x-a|<\delta\implies|f(x)-L|<\varepsilon$
- $\lim_{x\to a}f(x)=-\infty$: $\forall M\in\mathbb{R}\ \exists\delta>0\ \forall x,\ 0<|x-a|<\delta\implies f(x)<M$
- $\lim_{x\to\infty}f(x)=L$: $\forall\varepsilon>0\ \exists R\in\mathbb{R}\ \forall x,\ x>R\implies|f(x)-L|<\varepsilon$
- $\lim_{x\to\infty}f(x)=-\infty$: $\forall M\in\mathbb{R}\ \exists R\in\mathbb{R}\ \forall x,\ x>R\implies f(x)<M$

## (a) Composition with $2x$: $\lim_{x\to0}[f(x)+g(2x)]=L+M$
Let $\varepsilon>0$. Get $\delta_1>0$ with $0<|x|<\delta_1\implies|f(x)-L|<\tfrac{\varepsilon}{2}$, and $\delta_2>0$ with $0<|y|<\delta_2\implies|g(y)-M|<\tfrac{\varepsilon}{2}$.
Let $\delta=\min\left(\delta_1,\tfrac{\delta_2}{2}\right)$. If $0<|x|<\delta$, then $0<|x|<\delta_1$ and $0<|2x|<\delta_2$ (note $2x\neq0$), so
$$|f(x)+g(2x)-(L+M)|\le|f(x)-L|+|g(2x)-M|<\tfrac{\varepsilon}{2}+\tfrac{\varepsilon}{2}=\varepsilon.$$
**Key idea:** $g$ is evaluated at $y=2x$, so $x$ must be within $\delta_2/2$ of $0$.

## (b) $\lim_{x\to a}[f(x)+2g(x)]=L+2M$
Let $\varepsilon>0$. Get $\delta_1$ for $f$ with tolerance $\tfrac{\varepsilon}{2}$, $\delta_2$ for $g$ with tolerance $\tfrac{\varepsilon}{4}$. Let $\delta=\min(\delta_1,\delta_2)$. For $0<|x-a|<\delta$:
$$|f(x)+2g(x)-(L+2M)|\le|f(x)-L|+2|g(x)-M|<\tfrac{\varepsilon}{2}+2\cdot\tfrac{\varepsilon}{4}=\varepsilon.$$
**Key idea:** the factor $2$ is absorbed by asking $g$ for $\varepsilon/4$.

## (c) $\lim_{x\to a}f(x)=-\infty\implies\lim_{x\to a}\frac{1}{f(x)}=0$
Let $\varepsilon>0$. Apply the hypothesis with $M=-\tfrac{1}{\varepsilon}$: get $\delta>0$ with $0<|x-a|<\delta\implies f(x)<-\tfrac1\varepsilon$.
Then $f(x)<0$ (so $1/f(x)$ is defined) and $|f(x)|>\tfrac1\varepsilon$, hence $\left|\tfrac{1}{f(x)}-0\right|=\tfrac{1}{|f(x)|}<\varepsilon$.

## (d) $f<0$ everywhere, $\lim_{x\to\infty}f(x)=0\implies\lim_{x\to\infty}\frac1{f(x)}=-\infty$
Let $M\in\mathbb{R}$. Let $\varepsilon=\tfrac{1}{|M|+1}>0$ (works whether $M$ is positive or negative). Get $R$ with $x>R\implies|f(x)|<\varepsilon$.
For $x>R$: $-\varepsilon<f(x)<0$. Taking reciprocals of negative numbers reverses the inequality:
$$\frac{1}{f(x)}<-\frac1\varepsilon=-(|M|+1)<M.$$
**Key idea:** the hypothesis $f(x)<0$ is what forces $1/f(x)\to-\infty$ rather than $+\infty$ (e.g. $f(x)=\tfrac{(-1)^{\lfloor x\rfloor}}{x}$ would fail).

## Common mistakes (from my TT2 review attempt at (a))
- **Never fixing $\varepsilon_1,\varepsilon_2$.** "Let $\varepsilon>0$" comes first, then apply each hypothesis *with a specific tolerance* ($\varepsilon/2$). Leaving "$\forall\varepsilon_1>0$" floating proves nothing.
- **$\varepsilon_1\le\varepsilon$ and $\varepsilon_2\le\varepsilon$ only gives $<2\varepsilon$.** Pick $\varepsilon/2$ each so the sum is exactly $\varepsilon$.
- **Bounding $g(x)$ instead of $g(2x)$.** The hypothesis must be applied at the input $y=2x$, which needs $0<|2x|<\delta_2$, i.e. $\delta\le\delta_2/2$.
- **"$x>0$" is wrong.** $0<|x|$ only means $x\neq0$; $x$ can be negative.
- **"At $x=0$" is wrong.** A limit as $x\to0$ says nothing about the value at $0$.
