---
course: CSC108
lecture: W04C
date: 2026-10-05
tags:
  - csc108
  - loops
  - nested-loops
  - tt2
week: W04C
---
# W04C — Practice with Loops (Nested Loops)

> [!info] On Test 2: **Yes**, as "Practice with loops"

A **nested loop** is a loop inside the body of another loop. The inner loop runs **completely** for every single iteration of the outer loop.

## Task 1: `mystery_math(n)`
Compute
$$\sqrt{6\left(1 + \frac{1}{4} + \frac{1}{9} + \cdots + \frac{1}{n^2}\right)} = \sqrt{6\sum_{k=1}^{n}\frac{1}{k^2}}$$
```python
def mystery_math(n: int) -> float:
    total = 0
    for k in range(1, n + 1):
        total += 1 / k ** 2
    return (6 * total) ** 0.5
```
As $n \to \infty$, $\sum 1/k^2 \to \pi^2/6$, so the result approaches $\pi \approx 3.14159$.

## Task 2: `swap_neighbours(s)`
`'abcdefg'` → `'badcfeg'` (an odd-length string keeps its last character).
```python
def swap_neighbours(s: str) -> str:
    result = ""
    for i in range(0, len(s) - 1, 2):
        result += s[i + 1] + s[i]
    if len(s) % 2 == 1:
        result += s[-1]
    return result
```

## Task 3: `print_pine(n_levels)`
Level $L$ (from 1 to `n_levels`) is a triangle of rows with 1, 2, ..., $L+1$ stars, separated by spaces. That's an outer loop over levels, a middle loop over rows, and the row built with `" ".join` or `"* " * k`.
```python
def print_pine(n_levels: int) -> None:
    for level in range(1, n_levels + 1):
        for k in range(1, level + 2):
            print(" ".join("*" * k))
```

## Task 4: `mini_sort(s)` (nested loops, no `min`/`max`)
Repeatedly find the minimum character, append it to the result, and remove one copy of it.
```python
def mini_sort(s: str) -> str:
    result = ""
    while s:
        smallest = s[0]
        for ch in s:
            if ch < smallest:
                smallest = ch
        result += smallest
        s = s.replace(smallest, "", 1)   # remove ONE copy
    return result
```

Related: [[For Loops over Strings]], [[List Practice (Nested Lists)]]
