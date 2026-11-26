---
course: MAT102
type: test-prep
test: Final Exam
date: 2026-12-15
tags: [mat102, final, problem-set]
---
# MAT102 Final Exam — Problem Set

Study mash for the final. Coverage is **TBA** (see [[MAT102 Final Exam Outline]]); this starts with induction. Notes: [[W11 - Mathematical Induction|Mathematical Induction]].

## Induction

### I1. Prove $\displaystyle\sum_{k=1}^n(2k-1)=n^2$ for all $n\in\mathbb Z^+$. (Week 11 tutorial)

> [!success]- Solution
> **Base:** $n=1$: $1=1^2$ ✓
> **IH:** assume $\sum_{k=1}^n(2k-1)=n^2$.
> **Step:** $\displaystyle\sum_{k=1}^{n+1}(2k-1)=\sum_{k=1}^{n}(2k-1)+(2n+1)\overset{\text{IH}}{=}n^2+2n+1=(n+1)^2.$ $\blacksquare$

### I2. Prove $\displaystyle\sum_{n=1}^k n^2=\frac{k(k+1)(2k+1)}6$. (Reading, Exercise 9)

> [!success]- Solution
> **Base:** $k=1$: $1=\frac{1\cdot2\cdot3}6$ ✓
> **Step:** using the IH,
> $$\sum_{n=1}^{k+1}n^2=\frac{k(k+1)(2k+1)}6+(k+1)^2=\frac{(k+1)\big[k(2k+1)+6(k+1)\big]}6=\frac{(k+1)(2k^2+7k+6)}6=\frac{(k+1)(k+2)(2k+3)}6,$$
> which is the formula with $k+1$ in place of $k$. $\blacksquare$

### ⭐ I3. Bernoulli: $(1+x)^n\ge1+nx$ for $x\ge-1$, $n\in\mathbb Z^+$. (Reading, Exercise 5)

> [!success]- Solution
> **Base:** $n=1$: equality.
> **Step:** assume $(1+x)^k\ge1+kx$. Since $x\ge-1$, $1+x\ge0$, so multiplying keeps the inequality:
> $$(1+x)^{k+1}\ge(1+kx)(1+x)=1+(k+1)x+kx^2\ge1+(k+1)x.$$ $\blacksquare$
> (The step **needs** $1+x\ge0$: that's where the hypothesis is used.)

### I4. Fibonacci ($f_1=f_2=1$): prove $\displaystyle\sum_{i=1}^n f_i^2=f_nf_{n+1}$. (Week 10 exercises)

> [!success]- Solution
> **Base:** $n=1$: $1=1\cdot1$ ✓
> **Step:** $\displaystyle\sum_{i=1}^{n+1}f_i^2\overset{\text{IH}}{=}f_nf_{n+1}+f_{n+1}^2=f_{n+1}(f_n+f_{n+1})=f_{n+1}f_{n+2}.$ $\blacksquare$

### I5. Fibonacci: prove $\gcd(f_n,f_{n+1})=1$.

> [!success]- Solution
> **Base:** $\gcd(1,1)=1$.
> **Step:** $\gcd(f_{n+1},f_{n+2})=\gcd(f_{n+1},f_{n+1}+f_n)=\gcd(f_{n+1},f_n)\overset{\text{IH}}=1$, using $\gcd(a,b)=\gcd(a,b-a)$ (see [[W07 - Divisibility and Euclid's Algorithm|Divisibility and Euclid's Algorithm]]). $\blacksquare$

### ⭐ I6. Strong induction (Week 11 tutorial, Example 2.1)
$a_1=a_2=1$, $a_{n+1}=\frac{a_n^2+2}{a_{n-1}}$. (a) Compute $a_3,a_4,a_5$. (b) Find integers $C,D$ with $a_{n+1}=Ca_n+Da_{n-1}$ matching (a).

> [!success]- Solution
> (a) $a_3=\frac{1+2}1=3$, $a_4=\frac{9+2}1=11$, $a_5=\frac{121+2}3=41$.
> (b) $3=C+D$ and $11=3C+D$ give $C=4$, $D=-1$; check $4\cdot11-3=41$ ✓. Proving $a_{n+1}=4a_n-a_{n-1}$ for all $n$ (by strong induction) then shows every $a_n\in\mathbb Z$. That proof is the tutorial's step 3: try it yourself.

### I7. Structural induction (Reading, Example 16)
$3\in S$; $a,b\in S\Rightarrow a+b\in S$. Show $3\mid s$ for all $s\in S$.

> [!success]- Solution
> Basis: $3\mid3$. Constructor: $a=3m$, $b=3n\Rightarrow a+b=3(m+n)$. $\blacksquare$

## Past tests (PDF)

Not transcribed: these are the original PDFs, shown right here. Click a box to open it. The Make-Up Test will be added here once it's posted (Week 11 announcement).

### Past final exams

From the UTM past-exams archive (no solutions posted). Newest first; the Aug 2022 one is the full-year MAT102Y version.

> [!example]- MAT102H Final Exam, August 2023
> ![[MAT102H Aug 2023 Final Exam.pdf#height=800]]

> [!example]- MAT102H Final Exam, December 2022
> ![[MAT102H Dec 2022 Final Exam.pdf#height=800]]

> [!example]- MAT102Y Final Exam, August 2022 (full-year version)
> ![[MAT102Y Aug 2022 Final Exam.pdf#height=800]]

### Past term tests

> [!example]- Winter term Test 1 (blank script)
> ![[Term_Test_1_Script.pdf#height=800]]

> [!example]- Winter 2026 Test 2: long answer
> ![[Term_Test_2_Script.pdf#height=800]]

> [!success]- Winter 2026 Test 2: long answer: Solutions
> ![[Term_Test_2_Solutions.pdf#height=800]]

> [!example]- Winter 2026 Test 2: multiple choice
> ![[Term_Test_2_MC.pdf#height=800]]

> [!success]- Winter 2026 Test 2: multiple choice: Solutions
> ![[Term_Test_2_MC_Sols.pdf#height=800]]
