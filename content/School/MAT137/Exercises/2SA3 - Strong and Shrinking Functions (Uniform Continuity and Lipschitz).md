---
course: MAT137
topic: uniform continuity and Lipschitz functions
date: 2026-11-01
tags:
  - MAT137
  - continuity
  - proofs
aliases:
  - strong function
  - alpha-shrinking
  - uniform continuity
  - Lipschitz
prereq:
  - "[[Continuity and Discontinuities]]"
  - "[[Epsilon-Delta Proofs]]"
  - "[[Logic - Negations and Proof Structure]]"
week: W08
---

# Strong and Shrinking Functions

Related: [[Continuity and Discontinuities]] · [[Epsilon-Delta Proofs]] · [[Logic - Negations and Proof Structure]]

These terms come from 2SA3. Textbooks call "strong" **uniformly continuous** and "$\alpha$-shrinking" **Lipschitz with constant $\alpha$**.

## Definitions

$f$ has domain an interval $D$.

**Strong:**

$$\forall\varepsilon>0,\ \exists\delta>0,\ \forall x,y\in D,\ |x-y|<\delta\implies|f(x)-f(y)|<\varepsilon$$

**$\alpha$-shrinking** ($\alpha>0$):

$$\forall x,y\in D,\ |f(x)-f(y)|\le\alpha|x-y|$$

**Continuous** (for comparison):

$$\forall y\in D,\ \forall\varepsilon>0,\ \exists\delta>0,\ \forall x\in D,\ |x-y|<\delta\implies|f(x)-f(y)|<\varepsilon$$

## Strong vs continuous: quantifier order

- In **continuous**, $\delta$ is chosen *after* the point $y$, so $\delta$ may depend on both $\varepsilon$ and $y$.
- In **strong**, $\delta$ is chosen *before* $x,y$, so it depends on $\varepsilon$ only. One $\delta$ has to work everywhere in $D$ at once.

## Negation of strong

$$\exists\varepsilon>0,\ \forall\delta>0,\ \exists x,y\in D,\ |x-y|<\delta\ \text{and}\ |f(x)-f(y)|\ge\varepsilon$$

To show "not strong", fix one $\varepsilon$, then for each $\delta$ produce a pair $x,y$ that are close but whose outputs are far apart.

## The chain of implications

$$\alpha\text{-shrinking}\implies\text{strong}\implies\text{continuous}$$

Neither arrow reverses:
- $\sqrt{x}$ on $[0,1]$ is strong but not $\alpha$-shrinking for any $\alpha$ (its slope blows up near $0$).
- $x^2$ on $(0,\infty)$ is continuous but not strong.

**Shrinking ⇒ strong.** Given $\varepsilon>0$, take

$$\delta=\frac{\varepsilon}{\alpha}$$

Then $|x-y|<\delta$ gives $|f(x)-f(y)|\le\alpha|x-y|<\alpha\delta=\varepsilon$.

**Strong ⇒ continuous.** Fix $y\in D$ and $\varepsilon>0$. Use the $\delta$ that strong gives for this $\varepsilon$. It works for every pair, so it works in particular for the pairs $(x,y)$ with this fixed $y$.

## Domain matters: $x^2$

Key identity:

$$|x^2-y^2|=|x+y|\,|x-y|$$

- On $[0,7]$: $|x+y|\le14$, so $x^2$ is $14$-shrinking, hence strong.
- On $(0,\infty)$: $|x+y|$ is unbounded. Pairs a fixed distance apart get outputs further and further apart, so it is **not** strong.

## Example: $x^2$ on $(0,\infty)$ is not strong

Take $\varepsilon=1$. Let $\delta>0$ and choose

$$y=\frac1\delta,\qquad x=\frac1\delta+\frac\delta2$$

Both are positive and $|x-y|=\frac\delta2<\delta$. Then

$$|x^2-y^2|=(x+y)\cdot\frac\delta2=\left(\frac2\delta+\frac\delta2\right)\frac\delta2=1+\frac{\delta^2}{4}\ge1=\varepsilon$$

## Sums, products, compositions

If $f$ is $\alpha$-shrinking and $g$ is $\beta$-shrinking on $\mathbb R$:
- $f\circ g$ is $\alpha\beta$-shrinking:

$$|f(g(x))-f(g(y))|\le\alpha|g(x)-g(y)|\le\alpha\beta|x-y|$$

- $fg$ need **not** be shrinking. Counterexample: $f(x)=g(x)=x$ (both $1$-shrinking), but $x^2$ is not $\gamma$-shrinking on $\mathbb R$ for any $\gamma$. Take $x=\gamma+1$, $y=0$:

$$|x^2-y^2|=(\gamma+1)^2>\gamma(\gamma+1)=\gamma|x-y|$$


## Common mistake: $\delta=\varepsilon/\alpha$ in "strong ⇒ continuous"

When you only assume **strong**, there is no $\alpha$, so $\delta=\varepsilon/\alpha$ means nothing.

The hypothesis "strong" *hands you* a $\delta$ through its "$\exists\delta$". You can't write a formula for it.

Example: $\sqrt x$ on $[0,1]$ is strong, but no $\alpha$ works for it at all.

Rule of thumb:
- When you **prove** an $\exists\delta$ statement, you have to *construct* $\delta$.
- When you **assume** one, you just *take* the $\delta$ it gives you.


## Quantifier swaps: which ones are free?

Swapping two quantifiers **of the same kind** is always allowed:

$$\forall x\,\forall y\iff\forall y\,\forall x$$

Moving a $\forall$ in front of an $\exists$ is only a **one-way** implication:

$$\exists\delta\,\forall y\,P(\delta,y)\implies\forall y\,\exists\delta\,P(\delta,y)$$

The reverse fails. For example, $x^2$ on $(0,\infty)$ satisfies the right side (it is continuous) but not the left side (it is not strong).

So "strong ⇒ continuous" is exactly the proof of this one-way swap. You can't treat it as rewriting the definition, because the two versions are not equivalent.
