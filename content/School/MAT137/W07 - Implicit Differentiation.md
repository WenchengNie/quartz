---
course: MAT137
topic: implicit differentiation
date: 2026-10-28
tags:
  - MAT137
  - derivatives
  - chain-rule
  - implicit-differentiation
prereq:
  - "[[W07 - Chain Rule|Chain Rule]]"
next: "[[W07 - Reading the Graph of f from f'|Reading the Graph of f from f']]"
week: W07
---

# Implicit Differentiation

Related: [[W07 - Chain Rule|Chain Rule]] · [[W06 - Tangent Lines and the Derivative|Tangent Lines and the Derivative]]

## Idea (Video 3.13)

When a curve is given by an equation in $x$ and $y$ (not $y=f(x)$), don't solve for $y$. Treat $y$ as an unknown function of $x$ near the point, differentiate **both sides** with respect to $x$, and use the chain rule on every $y$:

$$\frac{d}{dx}\left(y^2\right)=2y\,y'\qquad\frac{d}{dx}(xy)=y+x\,y'$$

where $y'=\frac{dy}{dx}$. This is nothing new, just the chain rule. It's usually much less algebra than solving for $y$, which gives a multivalued $\pm$ formula.

## Example: slope of the tangent at $(1,4)$

$$3x^2+2y^2-4xy+2x-8y+11=0$$

Check: $(1,4)$ is on the curve, since $3+32-16+2-32+11=0$.

Differentiate with respect to $x$:

$$6x+4y\,y'-4y-4x\,y'+2-8y'=0$$

Plug in $x=1$, $y=4$:

$$6+16y'-16-4y'+2-8y'=0\ \Rightarrow\ 4y'=8\ \Rightarrow\ y'=2$$

> [!note] About the equation
> I rebuilt this equation from the video's narration, then checked it: the point $(1,4)$ lies on it and it gives the video's answer $y'=2$.
