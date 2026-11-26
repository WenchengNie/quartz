---
course: MAT102
tags:
  - MAT102
  - proofs
next: "[[W02 - Sets and Propositional Logic|Sets and Propositional Logic]]"
week: W01
---

# Reading Mathematics


## Definitions are exact

A mathematical definition is a *complete* description — use the verbatim definition, not intuition.

- **Even:** $n \in \mathbb{Z}$ is even if $\exists m \in \mathbb{Z}$ with $n = 2m$. (So $0$ is even: $0 = 2\cdot 0$.)
- **Odd:** $n = 2m+1$ for some $m \in \mathbb{Z}$.
- **Divides:** $a \mid b$ if $\exists n$ with $b = na$.
- After reading a new definition, immediately find examples **and** non-examples (try negatives, $0$, large numbers).

## Types of results

| Name | Role |
|---|---|
| Lemma | Helper result used to prove bigger things |
| Proposition | Interesting/intermediate result |
| Theorem | Important result with many consequences |
| Corollary | Immediate consequence of a theorem |

Every result = **hypothesis** (what must hold to apply it) + **conclusion** (what is then guaranteed).

> Always verify the hypothesis before applying the conclusion.

## Proofs

A proof is a chain of statements starting from the hypothesis and ending at the conclusion, each line implied by earlier ones. Ends with $\square$.

To prove "for all": take an **arbitrary** element and argue in general.

**Example.** If $a$ is even and $b \in \mathbb{Z}$, then $ab$ is even.

$a = 2m \Rightarrow ab = 2(mb)$, and $mb \in \mathbb{Z}$. $\square$ (Only one factor needs to be even.)

**Uniqueness proofs:** show existence, then assume two objects $e, f$ both work and show $e = f$.

**Direct proof recipe.**
1. Assume the hypothesis for **arbitrary** objects ("Let $m,n$ be odd integers", never "Let $m=3$").
2. Unpack each definition into an equation.
3. Compute.
4. Repack into the form the conclusion's definition needs.

**Example.** If $m,n$ are odd, then $mn$ is odd.
$m=2a+1$, $n=2b+1\Rightarrow mn = 4ab+2a+2b+1 = 2(2ab+a+b)+1$, and $2ab+a+b\in\mathbb{Z}$. $\square$

**Proving vs applying.** To *prove* a theorem you assume its hypothesis; to *apply* it you must first *check* the hypothesis.

## Self-Explanation Training (SET)

After each line of a proof, explain *why* it follows, linking to definitions, earlier lines, or prior results.
- ✅ Self-explanation: "$2(k+l+p)$ is even because a sum of integers is an integer, and $2\times$ an integer is even."
- ❌ Paraphrasing (restating in other words) and ❌ monitoring ("OK I get it") don't help as much.

### SET example: sum of divisors of $n = p_1p_2$

**Claim.** If $p_1 \neq p_2$ are primes and $n = p_1p_2$, then the sum of the divisors of $n$ is at most $2n$:

$$1 + p_1 + p_2 + p_1p_2 \le 2p_1p_2.$$

**Where the function $f(x) = \frac{x+1}{x-1}$ comes from (scratch work, done backwards):**

$$1 + p_1 + p_2 + p_1p_2 \le 2p_1p_2 \iff p_1 + 1 \le p_1p_2 - p_2 = p_2(p_1 - 1) \iff \frac{p_1+1}{p_1-1} \le p_2$$

(dividing by $p_1 - 1 > 0$ is safe since $p_1 \ge 2$). So $f$ is just "the goal solved for $p_2$". The written proof runs these steps **forwards**, which hides why $f$ appears.

**Line-by-line self-explanation:**
1. Divisors of $p_1p_2$ are exactly $1, p_1, p_2, p_1p_2$ — by unique prime factorization.
2. WLOG $p_1 < p_2$ (just label the smaller one $p_1$); smallest prime is $2$, and $p_2 > p_1 \ge 2$ gives $p_2 \ge 3$.
3. $f(x) = 1 + \frac{2}{x-1}$, so $f$ is decreasing on $(1,\infty)$. Since $p_1 \ge 2$: $f(p_1) \le f(2) = 3 \le p_2$.
4. Multiply by $p_1 - 1 > 0$: $p_1 + 1 \le p_2(p_1-1) = p_1p_2 - p_2$, i.e. $1 + p_1 + p_2 \le p_1p_2$.
5. Add $p_1p_2$ to both sides. $\square$

**Check:** $n = 6$: $1+2+3+6 = 12 = 2\cdot 6$ (equality — $6$ is a perfect number).

**Alternative proof:** $p_1 - 1 \ge 1$ and $p_2 - 1 \ge 2$, so $(p_1-1)(p_2-1) \ge 2$, which expands to $p_1p_2 - p_1 - p_2 + 1 \ge 2$, i.e. $p_1p_2 \ge 1 + p_1 + p_2$.

Related: [[W02 - Sets and Propositional Logic|Sets and Propositional Logic]], [[W03 - Quantifiers and Implications|Quantifiers and Implications]], [[W04 - Proof by Contradiction|Proof by Contradiction]]


## Definitions used in the reading's examples

- **Abundant:** a positive integer $n$ whose divisors sum to **more than** $2n$. E.g. $12$: $1+2+3+4+6+12 = 28 > 24$. The SET example above shows a product of two distinct primes is **never** abundant.
- **Quirky** (made-up practice definition): $n$ is quirky if $n^2$ is not even. Practise finding examples and non-examples.

### Another SET example: no odd integer is a sum of three evens (Theorem 9)

1. *Assume the opposite* (proof by contradiction): odd $x = a + b + c$ with $a, b, c$ even.
2. *Definition of even:* $a = 2k$, $b = 2l$, $c = 2p$.
3. *Substitute:* $x = 2(k + l + p)$, and $k + l + p \in \mathbb{Z}$, so $x$ is even, contradicting $x$ odd. $\square$


---

## Lecture activities (Week 1)

### Identify hypotheses and results

| Statement | Hypotheses | Result |
|---|---|---|
| If $x$ is a positive real, there is a positive real $y$ with $y^2 = x$. | $x\in\mathbb{R}$, $x>0$ | $\exists y>0$, $y^2=x$ |
| There is a unique integer $e$ such that $e\cdot n = n$ for every integer $n$. | none beyond working in $\mathbb{Z}$ | existence **and** uniqueness of $e$ |
| There are infinitely many primes. | none (implicitly, the integers) | the set of primes is infinite |
| For any $\epsilon>0$ there is a positive integer $n$ with $\frac1n<\epsilon$. | $\epsilon\in\mathbb{R}$, $\epsilon>0$ | $\exists n\in\mathbb{Z}^+$, $\frac1n<\epsilon$ |

Some results hide their hypotheses in the setting ("integers", "real numbers") rather than in an "if".

### Proof exercise: the multiplicative identity is unique

**Claim.** There is a unique $e\in\mathbb{Z}$ with $e\cdot n = n$ for all $n\in\mathbb{Z}$.

*Proof.* **Existence:** $e=1$ works, since $1\cdot n = n$. **Uniqueness:** suppose $e$ and $e'$ both work. Apply the property of $e$ with $n = e'$: $e\cdot e' = e'$. Apply the property of $e'$ with $n=e$: $e'\cdot e = e$. Since $e\cdot e' = e'\cdot e$, we get $e = e'$. $\blacksquare$

(Alternative: plug $n=1$ into $e\cdot n = n$ to get $e = 1$ directly.)

> [!tip] Uniqueness template
> Assume two objects both satisfy the property, then show they're equal.
