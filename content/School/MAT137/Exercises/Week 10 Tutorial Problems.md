---
course: MAT137
topic: week 10 tutorial, related rates, logarithmic differentiation, inverses
date: 2026-11-18
tags:
  - MAT137
  - exercises
  - related-rates
  - inverses
prereq:
  - "[[Related Rates]]"
  - "[[Exponentials, Logarithms and Logarithmic Differentiation]]"
  - "[[Inverse Functions]]"
week: W10
---

# Week 10 Tutorial Problems

Concept notes: [[Related Rates]] · [[Exponentials, Logarithms and Logarithmic Differentiation]] · [[Inverse Functions]]

> [!tip] How to use
> Try each question first. Solutions are folded; click the callout to open. Term Test 2 is Friday, so the tutorial may also do test review ([[MAT137 Test 2 Study Guide]]).

## Q1. Falling watermelon

Your camera is $20$ m across the street from a building. A watermelon falls at a constant $2$ m/s. How fast is the camera's angle with the ground changing when the watermelon is $1$ m above the ground?

> [!success]- Solution
> Let $h$ be the watermelon's height and $\theta$ the angle. Then $\tan\theta=\dfrac{h}{20}$, with $h'=-2$.
> $$\sec^2\theta\;\theta'=\frac{h'}{20}\implies\theta'=\frac{h'}{20}\cos^2\theta$$
> At $h=1$: $\cos^2\theta=\dfrac{1}{1+\tan^2\theta}=\dfrac{1}{1+\frac1{400}}=\dfrac{400}{401}$, so
> $$\theta'=\frac{-2}{20}\cdot\frac{400}{401}=-\frac{40}{401}\approx-0.0998\ \text{rad/s}$$
> The angle is **decreasing** at $\frac{40}{401}$ rad/s.

## Q2. Pouya and David on a rope

A rope of fixed length runs from David's foot, up through a point $P$ on the ceiling ($4$ m above $Q$ on the floor), and down to Pouya's foot. David runs away at $1$ m/s. How fast is Pouya moving when David is $4$ m from $Q$ and the two are $6$ m apart?

> [!success]- Solution
> Let $x$ = David's distance from $Q$ and $y$ = Pouya's distance from $Q$ (on opposite sides). Rope length:
> $$\sqrt{x^2+16}+\sqrt{y^2+16}=L\ \ (\text{constant})$$
> Differentiate:
> $$\frac{x\,x'}{\sqrt{x^2+16}}+\frac{y\,y'}{\sqrt{y^2+16}}=0$$
> At that instant $x=4$, $y=6-4=2$, $x'=1$:
> $$\frac{4}{\sqrt{32}}+\frac{2y'}{\sqrt{20}}=0\implies y'=-\frac{2\sqrt{20}}{\sqrt{32}}=-\sqrt{\tfrac52}\approx-1.58\ \text{m/s}$$
> Pouya is dragged **toward $Q$** at $\sqrt{5/2}=\frac{\sqrt{10}}{2}\approx1.58$ m/s.

## Q3. Derivative of $h(x)=[f(x)]^{g(x)}$, with $f>0$

> [!success]- Solution
> $\ln h=g\ln f$. Differentiate:
> $$\frac{h'}{h}=g'\ln f+g\,\frac{f'}{f}\implies h'(x)=[f(x)]^{g(x)}\left(g'(x)\ln f(x)+\frac{g(x)f'(x)}{f(x)}\right)$$

## Q4. Derivatives

**(a)** $f(x)=\big(\sin(x^2)\big)^{x^2}$

> [!success]- Solution
> $\ln f=x^2\ln\sin(x^2)$, so
> $$f'(x)=\big(\sin(x^2)\big)^{x^2}\Big(2x\ln\sin(x^2)+2x^3\cot(x^2)\Big)$$

**(b)** $f(x)=(\sin x)^{(\cos x)^{\tan x}}$

> [!success]- Solution
> Let $u=(\cos x)^{\tan x}$. Then $\ln u=\tan x\ln\cos x$, so
> $$u'=u\left(\sec^2x\ln\cos x-\tan^2x\right)$$
> And $\ln f=u\ln\sin x$, so
> $$f'(x)=f(x)\Big(u'\ln\sin x+u\cot x\Big)=(\sin x)^{u}\,u\Big[\left(\sec^2x\ln\cos x-\tan^2x\right)\ln\sin x+\cot x\Big]$$

**(c)** $f(x)=\log_{x^2+1}(\sin x)$

> [!success]- Solution
> Change of base: $f(x)=\dfrac{\ln\sin x}{\ln(x^2+1)}$. Quotient rule:
> $$f'(x)=\frac{\cot x\,\ln(x^2+1)-\dfrac{2x\ln\sin x}{x^2+1}}{\big(\ln(x^2+1)\big)^2}$$
> (Defined where $\sin x>0$ and $x\ne0$, so the base isn't $1$.)

**(d)** $f(x)=\ln(cx)$, $c\ne0$

> [!success]- Solution
> $$f'(x)=\frac{1}{cx}\cdot c=\frac1x$$
> on the domain $\{x: cx>0\}$. (Also $\ln(cx)=\ln|c|+\ln|x|$ there, a constant plus $\ln|x|$.)

## Q5. $f(x)=\dfrac{x-3}{x+4}$

> [!success]- Solution
> Rewrite: $f(x)=1-\dfrac{7}{x+4}$.
>
> **(a)** Domain $\mathbb R\setminus\{-4\}$. Range $\mathbb R\setminus\{1\}$, since $\frac{7}{x+4}$ takes every value except $0$.
>
> **(b)** Let $a,b\ne-4$ with $f(a)=f(b)$. Then $\frac7{a+4}=\frac7{b+4}$, so $a+4=b+4$ and $a=b$. $\blacksquare$
>
> **(c)** Solve $y=1-\frac7{x+4}$: $x+4=\frac7{1-y}$, so
> $$f^{-1}(y)=\frac{7}{1-y}-4=\frac{4y+3}{1-y},\qquad y\ne1$$
>
> **(d)** *Directly:* $\left(f^{-1}\right)'(y)=\dfrac{4(1-y)+(4y+3)}{(1-y)^2}=\dfrac{7}{(1-y)^2}$.
>
> *Inverse function formula:* $f'(x)=\dfrac{7}{(x+4)^2}$, and $x+4=\frac{7}{1-y}$, so
> $$\left(f^{-1}\right)'(y)=\frac{1}{f'(x)}=\frac{(x+4)^2}{7}=\frac{49}{7(1-y)^2}=\frac{7}{(1-y)^2}\ \checkmark$$

## Q6. $f:[0,\infty)\to[0,\infty)$, $f(x)=\sqrt x$

> [!success]- Solution
> Injective: $\sqrt a=\sqrt b\Rightarrow a=b$ (square both sides). Surjective: for $y\ge0$, $f(y^2)=y$. Inverse: $f^{-1}(x)=x^2$ on $[0,\infty)$.
>
> *Directly:* $(f^{-1})'(x)=2x$.
>
> *Inverse function formula:* $f'(t)=\frac{1}{2\sqrt t}$ at $t=f^{-1}(x)=x^2$, so $(f^{-1})'(x)=2\sqrt{x^2}=2|x|=2x$ (since $x\ge0$) ✓. This needs $x>0$, because $f'(0)$ doesn't exist; at $x=0$ only the direct method works.

## Q7. $f(x)=\cos(2x)+e^x+3x+1$. Find $(f^{-1})'(3)$.

> [!success]- Solution
> Find $a$ with $f(a)=3$ by guessing: $f(0)=1+1+0+1=3$, so $f^{-1}(3)=0$.
> $$f'(x)=-2\sin(2x)+e^x+3\implies f'(0)=4\implies\left(f^{-1}\right)'(3)=\frac{1}{f'(0)}=\frac14$$
> (Injectivity follows from [[Rolle's Theorem and the Mean Value Theorem#Nonzero derivative ⇒ injective]], since $f'(x)\ge-2+e^x+3>0$.)
