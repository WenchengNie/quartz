---
course: MAT137
topic: differentiation rules
date: 2026-10-19
tags:
  - MAT137
  - derivatives
  - trig
  - higher-derivatives
prereq:
  - "[[Squeeze Theorem]]"
  - "[[Chain Rule]]"
  - "[[Product and Quotient Rules]]"
next: "[[Implicit Differentiation]]"
week: W07
---

# Trigonometric Derivatives


Related: [[Product and Quotient Rules]], [[Chain Rule]]

## The six basic derivatives

$$\frac{d}{dx}\sin x = \cos x \qquad \frac{d}{dx}\cos x = -\sin x$$

$$\frac{d}{dx}\tan x = \sec^2 x \qquad \frac{d}{dx}\cot x = -\csc^2 x$$

$$\frac{d}{dx}\sec x = \sec x\tan x \qquad \frac{d}{dx}\csc x = -\csc x\cot x$$

> [!tip] Sign pattern
> Every "co-" function ($\cos$, $\cot$, $\csc$) has a **negative** derivative.

## Useful identity

$$\tan^2 x + 1 = \sec^2 x$$

## Values at $\pi/4$

$$\sin\tfrac{\pi}{4} = \cos\tfrac{\pi}{4} = \tfrac{\sqrt2}{2}, \qquad \tan\tfrac{\pi}{4} = 1, \qquad \sec\tfrac{\pi}{4} = \sqrt2$$

## Example: second derivative of $\sec\theta$

Find $\left.\dfrac{d^2y}{d\theta^2}\right|_{\theta=\pi/4}$ for $y = \sec\theta$.

**First derivative:**

$$y' = \sec\theta\tan\theta$$

**Second derivative** (product rule):

$$y'' = (\sec\theta\tan\theta)\tan\theta + \sec\theta\,(\sec^2\theta)$$

$$= \sec\theta\tan^2\theta + \sec^3\theta$$

**Evaluate at $\theta = \pi/4$:**

$$y'' = \sqrt2\,(1)^2 + (\sqrt2)^3 = \sqrt2 + 2\sqrt2 = 3\sqrt2$$

---

## Where the formulas come from (Video 3.12)

Memorize $\sin$, $\cos$, $\tan$. The other three follow by swapping $\sin\leftrightarrow\cos$, $\tan\leftrightarrow\cot$, $\sec\leftrightarrow\csc$ and adding a minus sign. Rederive them in about 20 seconds if you forget.

**Plan:**
1. Prove $(\sin x)'=\cos x$ from the definition.
2. $\cos x=\sin\left(\frac\pi2-x\right)$, so the chain rule gives $(\cos x)'=-\sin x$.
3. $\tan=\frac{\sin}{\cos}$, $\sec=\frac1{\cos}$, etc. Use the quotient rule.

**Step 1.** Use $\sin(x+h)=\sin x\cos h+\cos x\sin h$, then treat $\sin x$ and $\cos x$ as constants (the variable is $h$):

$$\begin{aligned}
(\sin x)'&=\lim_{h\to0}\frac{\sin x\cos h+\cos x\sin h-\sin x}{h}\\
&=\sin x\cdot\lim_{h\to0}\frac{\cos h-1}{h}+\cos x\cdot\lim_{h\to0}\frac{\sin h}{h}\\
&=\sin x\cdot0+\cos x\cdot1=\cos x
\end{aligned}$$

Both limits are proven without derivatives. See [[Squeeze Theorem]] (geometric proof that $\frac{\sin h}h\to1$) and [[Computing Limits]] ($\frac{\cos h-1}h\to0$).

> [!warning] Circular reasoning
> Using L'Hôpital on $\frac{\sin h}{h}$ assumes $(\sin)'=\cos$, which is the thing being proved.
