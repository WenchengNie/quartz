---
course: MAT137
type: test-prep
test: Term Test 2
date: 2026-11-20
tags: [mat137, tt2, study-guide]
---
# MAT137 Term Test 2 — Study Guide

## Logistics (Quercus "Term Test 2" page)
- **When:** Friday, **Nov 20, 2026**, 3–5 PM. Writing starts at **3:10 PM** and lasts **1 h 50 min**.
- **Bring:** your **T-Card** (or original government photo ID, and know your student number) and something to write with.
- **No aids of any kind:** no calculator, no devices (phone/smartwatch off, in your bag at the front), no cheat sheet, no extra scrap paper. A basic watch is fine.
- **Seating:** only sit at a desk that already has a test on it, and don't move it. Rooms are about 55% full.
- **Missed it?** Fill in the MAT137 Missed Term Test Form within **3 days**, then write the **Make-Up Test on Fri Nov 27, 3–5 PM**.

## Rooms (same as Test 1, by surname on your T-Card)
| Room | Surnames |
|---|---|
| DV 2080 | A–B |
| DV 2082 | C–F |
| IB 120 | G–M |
| KN 137 | N–W |
| IB 245 | X–Z |

## Format
- **6–8 problems**, some with parts, about **40 points**.
- **Q1:** five **true/false** questions, no justification needed (just circle).
- No other multiple choice.
- **One epsilon-delta proof** is guaranteed.
- New definitions from 2SAs will be **given** to you if needed.

## Coverage
Material after Test 1 through Week 8 (finished in Week 9): Videos **2.9–2.22**, **all of Playlist 3**, **6.1–6.2**, **4.1–4.11**, Tutorials **Weeks 6–9**, **2SA2 and 2SA3**, and the Playlist practice problems (all of P2 and P3, most of P4, the related rates problems from P6).

| ✅ On the test | Note |
|---|---|
| Limit definition, proving a limit **does not exist** | [[The Idea of a Limit]], [[Epsilon-Delta Proofs]] |
| Limit laws (conditional!) and the proof of the sum law | [[Limit Laws and Existence]] |
| Infinite limits | [[Infinite Limits - Sum and Product]] |
| Limit computations, Squeeze Theorem | [[Computing Limits]], [[Squeeze Theorem]], [[Bounded Times Zero Limit]] |
| Continuity, Main Continuity Theorem, types of discontinuities | [[Continuity and Discontinuities]] |
| IVT | [[IVT Intermediate Value Theorem]] |
| EVT | [[EVT Extreme Value Theorem]] |
| Definition and meaning of the derivative | [[The Derivative - Definition and Meaning]], [[Tangent Lines and the Derivative]] |
| Differentiable ⇒ continuous (not the converse) | [[Differentiability Implies Continuity]] |
| Differentiation rules | [[Differentiation Rules]], [[Product and Quotient Rules]], [[Chain Rule]], [[Trigonometric Derivatives]] |
| Implicit and logarithmic differentiation | [[Implicit Differentiation]], [[Exponentials, Logarithms and Logarithmic Differentiation]] |
| Related rates | [[Related Rates]] |
| Injective / surjective / bijective, inverses, Inverse Function Theorem, derivative of $\ln$ | [[Inverse Functions]], [[Inverse Trig - arctan]] |
| 2SA2 and 2SA3 | [[2SA2 Exercise Questions]], [[2SA3 - Strong and Shrinking Functions (Uniform Continuity and Lipschitz)]] |

No question is **only** Test 1 material, but Test 1 tools (logic, negations, proof structure, the limit definition) are used everywhere: [[Logic - Negations and Proof Structure]], [[Writing Proofs]], [[137 Course Definitions and Proof Structures]].

You may cite results from the videos or from class without proof, unless the question asks you to prove that result.

## Facts you must know (no proof needed)
Limits, for all $a \in \mathbb{R}$:

$$
\lim_{x \to a} x = a, \qquad \lim_{x \to a} \sin x = \sin a, \qquad \lim_{x \to a} \cos x = \cos a, \qquad \lim_{x \to a} e^x = e^a
$$

$$
\lim_{x \to 0} \frac{\sin x}{x} = 1, \qquad \lim_{x \to \infty} \frac{1}{x} = 0, \qquad \lim_{x \to 0^+} \frac{1}{x} = \infty, \qquad \lim_{x \to 0^-} \frac{1}{x} = -\infty, \qquad \lim_{x \to -\infty} e^x = 0
$$

Derivatives by heart:

$$
(x^n)' = n x^{n-1}, \qquad (e^x)' = e^x, \qquad (\sin x)' = \cos x, \qquad (\cos x)' = -\sin x, \qquad (\ln x)' = \frac{1}{x}
$$

Inverse Function Theorem (if $f$ is invertible, differentiable at $f^{-1}(b)$, and $f'(f^{-1}(b)) \neq 0$):

$$
\left(f^{-1}\right)'(b) = \frac{1}{f'\!\left(f^{-1}(b)\right)}
$$

Geometry for related rates: areas of triangles, rectangles and circles; volumes of boxes and cylinders. Anything harder (like a cone) is given.

## Top traps
1. **Limit laws are conditional.** Only split $\lim (f+g)$ or $\lim fg$ after checking both limits **exist**; for quotients, the bottom limit must be **nonzero**.
2. **Limit does not exist** from the definition: show that **for every** $L$,

$$
\exists \varepsilon > 0 \;\; \forall \delta > 0 \;\; \exists x \;\; \big(0 < |x-a| < \delta \ \text{and} \ |f(x) - L| \geq \varepsilon\big)
$$

3. **IVT** needs $f$ continuous on the **closed** interval $[a,b]$. It gives **existence** of a $c$, never uniqueness. State the hypotheses every time.
4. **EVT** needs $f$ continuous on a **closed, bounded** interval. Remove either and it can fail.
5. **Differentiable ⇒ continuous**, but not the reverse ($|x|$ at $0$). Contrapositive: discontinuous ⇒ not differentiable.
6. **Piecewise functions:** at the breakpoint use the **limit definition** of the derivative (or one-sided limits), not the rules.
7. **Chain rule:** evaluate the outer derivative **at the inner function**. $(\sin(x^2))' = 2x\cos(x^2)$, not $2x\cos x$.
8. **$x^x$-type functions:** neither the power rule nor the exponential rule applies. Use logarithmic differentiation.
9. **Inverse Function Theorem:** plug in $f^{-1}(b)$, **not** $b$, and check $f'(f^{-1}(b)) \neq 0$.
10. **Injective:** assume $f(x_1) = f(x_2)$, conclude $x_1 = x_2$. **Surjective:** let $y$ be arbitrary in the codomain, then **find** an $x$ with $f(x) = y$.
11. **Related rates:** draw the diagram first, write the equation, **differentiate first**, and only then plug in the numbers for that instant.
12. **Proof structure first:** even with no idea how to finish, the correct skeleton ("Let $\varepsilon > 0$. Choose $\delta = \dots$. Let $x$ with $0<|x-a|<\delta$ …") earns marks.

## Practice materials (Quercus)

**Everything below is in one place, with collapsible solutions: [[MAT137 Test 2 Problem Set]].**

- **Extra pre-test practice problems** (PDF on the TT2 page).
- **Past tests:** Fall 2025, Fall 2023, Fall 2022 Test 2. Solutions are posted **Wed Nov 18, 9 AM**. Their coverage differs from ours, so go by the Coverage section above, not by them.
- **Playlist practice problems**: all of P2 and P3, most of P4, related rates from P6.
- **Tutorial worksheets** from Weeks 6–9, plus [[2SA2 Exercise Questions]] and [[2SA3 - Strong and Shrinking Functions (Uniform Continuity and Lipschitz)]].
- **Derivative drills:** make up ugly functions (stack products, quotients and compositions), differentiate them, then check with Wolfram Alpha.
- TAs are adding extra office hours in the week of the test; use Piazza when stuck.
