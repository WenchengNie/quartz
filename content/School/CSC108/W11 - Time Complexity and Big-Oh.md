---
course: CSC108
lecture: W11B
date: 2026-11-25
tags:
  - csc108
  - complexity
  - algorithms
  - after-tt2
week: W11
---
# W11 — Time Complexity and Big-Oh

> [!info] From the lecture slides *Intro to Time Complexity* (Nov 25, file `Week11_H2.pdf` in `Downloads\csc108\lectures`; interactive slides: engine14.github.io/timeComplexity). PCRS Week 11 Prepare: *Analyzing Algorithms*, *Linear Search*. Next topic: Object Oriented Programming.

## Definitions
**Time complexity:** count the number of operations an algorithm performs **as a function of the input length** $n$.

**Big-Oh:** $f(n) = O(g(n))$ when
$$\exists\, c, k \in \mathbb{R}_{>0} : \forall n \ge k,\ 0 \le f(n) \le c\,g(n).$$
The slides say you don't need this formal definition until next term (CSC148). In practice: keep the fastest-growing term and drop constants.

> [!example] Slide examples
> - $2n^2 + n + 1 = O(n^2)$, since for $n \ge 3$: $2n^2 + n + 1 < 3n^2$.
> - $n^3 - \sin n = O(n^3)$, since for $n \ge 2$: $n^3 - \sin n \le n^3 + 1 < 2n^3$.

## Counting operations
```python
def linear(L: list[int]):
    n = len(L)                 # 1
    index = 0                  # 1
    while index < len(L):      # n
        index += 1             # n
                               # 2n + 2 = O(n)

def quadratic(L: list[int]):
    n = len(L)                 # 1
    index = 0                  # 1
    while index < len(L):      # n
        index2 = 0             # n
        while index2 < len(L): # n * n
            index2 += 1        # n * n
        index += 1             # n
                               # 2n**2 + 3n + 2 = O(n**2)
```

## Common orders
| Pattern | Order | Slide example |
|---|---|---|
| loop runs a fixed number of times, not depending on $n$ | $O(1)$ (constant) | `while index < 10**10` → still $O(1)$, however big the constant |
| loop variable **doubles** until it reaches $n$ | $O(\log n)$ | `while 2 ** index < n: index += 1` |
| one loop over the list | $O(n)$ | `linear` |
| loop inside a loop, both over the list | $O(n^2)$ | `quadratic`, `foo`: $O(n^2) + n \Rightarrow O(n^2)$ |

> [!warning] Traps
> - $O(1)$ means "doesn't grow with $n$", not "fast". A loop of $10^{10}$ steps is $O(1)$.
> - Look at **how the loop variable changes**: `+= 1` up to $n$ is linear; doubling (`2 ** index < n`) is logarithmic.
> - Add costs of sequential blocks, then keep only the biggest term: $O(n^2) + O(n) = O(n^2)$.

## Sorting
Selection sort, insertion sort and bubble sort are all **$O(n^2)$** in the length of the list (slide Task 4). See [[W10 - Sorting Algorithms (Selection, Insertion, Bubble)|Sorting Algorithms (Selection, Insertion, Bubble)]].

Related: [[W10 - Sorting Algorithms (Selection, Insertion, Bubble)|Sorting Algorithms (Selection, Insertion, Bubble)]] · [[W05A - While Loops|While Loops]] · [[W04C - Nested Loops (Loop Practice)|Nested Loops (Loop Practice)]]
