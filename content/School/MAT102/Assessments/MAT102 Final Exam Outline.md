---
course: MAT102
type: test-prep
test: Final Exam
date: 2026-12-15
tags: [mat102, final, outline]
---
# MAT102 Final Exam — Outline

> [!warning] Official format and coverage not posted yet
> Week 11 announcement: the **Make-Up Test will be posted afterwards so everyone can use it to study for the final exam**. No final-exam coverage has been announced, so Coverage is **TBA**.

## Logistics
- **When:** Tuesday, **Dec 15, 2026**, 9 AM–12 PM (from your To-Do; confirm on the official UTM exam schedule).
- **Where:** RA Gym A/B (from your To-Do; confirm on the official schedule).
- **Aids:** TBA.
- **Quiz 5** is next week and focuses on **Weeks 9 and 10**. If you wrote Quizzes 1–4 and miss Quiz 5, its weight moves to the final exam (Week 11 announcement).

## Format
TBA.

## Coverage
**TBA.** For reference only, readings since Test 2:

| Reading | Topic | Note |
|---|---|---|
| 09 Number Theory III | Modular arithmetic, Fermat's Little Theorem | [[Modular Arithmetic]] |
| 10 Induction I | Induction, sigma notation, strong and structural induction | [[Mathematical Induction]] |
| 11 Group Theory I | Groups (Week 12) | not yet in the vault |

Earlier material: [[MAT102 Test 2 Outline]], [[102 Course Definitions and Proof Structures]].

## Proof skeletons (so far)
**Induction**
1. Base case $P(1)$.
2. "Assume $P(k)$ for some $k\in\mathbb Z^+$." (IH)
3. Show $P(k+1)$, marking where the IH is used.
4. "By induction, $P(n)$ holds for all $n\in\mathbb Z^+$."

**Strong induction:** as many base cases as the step reaches back; IH is "$P(j)$ for all $j\le k$".

**Structural induction:** prove $P$ for every basis element, then for each constructor show $P(\text{inputs})\Rightarrow P(\text{output})$.

## Top traps
1. Forgetting to say where the IH is used.
2. Strong induction with too few base cases (stamps: the step uses $n-2$, so 3 base cases).
3. Sums: split off the **last** term, then apply the IH.
4. Structural induction: every constructor needs its own check.

## Practice materials
- [[MAT102 Final Exam Problem Set]].
- Reading exercises (end of `10InductionI.pdf`), Week 10 in-class exercises, Week 11 tutorial activity (all in `Downloads\mat102`).
- The Make-Up Test, once posted.
