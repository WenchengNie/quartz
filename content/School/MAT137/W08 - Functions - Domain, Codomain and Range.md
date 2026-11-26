---
course: MAT137
topic: functions
date: 2026-11-15
tags:
  - MAT137
  - functions
next: "[[W08 - Inverse Functions|Inverse Functions]]"
week: W08
---

# Functions: Domain, Codomain and Range

Related: [[W08 - Inverse Functions|Inverse Functions]] · [[W01 - Sets and Notation|Sets and Notation]] · Video 4.1

## Strict definition

A function has **three parts**:
1. **Domain:** the set of inputs.
2. **Codomain:** the set of *potential* outputs.
3. **Rule:** matches **each** input in the domain to **exactly one** output in the codomain.

This is equivalent to the logic-course definition, "a subset of a Cartesian product".

**Example.** Let $A=\{1,2,3\}$ be the domain and $B=\{4,5,6\}$ the codomain, with rule
$$f(1)=4,\qquad f(2)=4,\qquad f(3)=6$$

A finite domain lets you list the matches. With an infinite domain, the rule is given by an equation.

## Name vs. value

- $f$ is the **name** of the function.
- $f(x)$ is an **element of the codomain**: the output that goes with $x$.
- So $f(x)$ is *not* the function. The function is $f$.

## Codomain vs. range

- **Codomain:** potential outputs, chosen in advance. Above, it's $\{4,5,6\}$.
- **Range:** the outputs actually used. Above, it's $\{4,6\}$.

To define a function you give the domain, codomain and rule. The range is **not** part of the definition, because it can be computed from the other three.

## Notation

$f:A\to B$ means "$f$ is a function with domain $A$ and codomain $B$". For example,
$$f:\mathbb R\to\mathbb R,\qquad f(x)=3+x^2+\sin x$$

## Calculus convention 1: give only the rule

Writing just
$$g(x)=\frac1{x^2}$$
means, by default:
- **domain** = the largest subset of $\mathbb R$ where the rule makes sense, here $\mathbb R\setminus\{0\}$;
- **codomain** = $\mathbb R$.

Outside single-variable calculus (e.g. abstract algebra, where inputs may not even be numbers) you must state the domain and codomain.

## Calculus convention 2: ignore the codomain

$$f:\{1,2,3\}\to\{4,5,6\}\qquad\text{and}\qquad \tilde f:\{1,2,3\}\to\{4,6\}$$
with the same rule $1\mapsto4,\ 2\mapsto4,\ 3\mapsto6$ have the same domain, rule and range, but **different codomains** (they differ by $5$). Strictly speaking they are **different functions**.

In calculus we pretend they are the same and only pay attention to the **range**. That's why calculus books rarely say "codomain" or "surjective" (see [[W08 - Inverse Functions#Calculus convention: drop surjectivity|Inverse Functions > Calculus convention: drop surjectivity]]).

## Math vs. computer science names

| Math (MAT137) | Some areas of CS |
|---|---|
| domain | domain |
| codomain | **range** |
| range | **image** |

"Range" can mean two different things, so agree on notation when working with someone.
