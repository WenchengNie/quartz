---
course: CSC108
lecture: W10C-W11A
date: 2026-11-25
tags:
  - csc108
  - sorting
  - algorithms
  - after-tt2
week: W10
---
# W10C / W11A — Sorting Algorithms (Selection, Insertion, Bubble)

> [!info] From the lecture slides *Insertion and Selection Sort* (W10C, Nov 20) and *Bubble Sort* (W11A, Nov 23), files `Week_10 (2).pdf` and `Week11_H1.pdf` in `Downloads\csc108\lectures`. Lab 10 (Sorting) runs Nov 30 – Dec 3. PCRS Week 11 Practice/Perform has *Bubble Sort Review*.

The point of these lectures: one problem (sort a list), several **algorithms**, and a first way to **compare them by runtime**. This is the bridge from CSC108 (programming) to CSC148 (computer science).

## The three sorts at a glance
| Sort | Idea (one pass) | After $k$ passes | Sorted part ever changes? |
|---|---|---|---|
| **Selection** | find (*select*) the smallest item in the unsorted part, swap it to the front of the unsorted part | first $k$ items are the $k$ **smallest**, in final position | **no**: once placed, never moves |
| **Insertion** | take the next item and *insert* it into the correct spot in the sorted front part | first $k$ items are sorted **among themselves** (not necessarily the smallest overall) | **yes**: later items get inserted in between |
| **Bubble** | walk left to right swapping **adjacent** pairs that are out of order, so the largest item "bubbles" to the end | last $k$ items are the $k$ **largest**, in final position | **no** |

All three are $O(n^2)$ (see [[Time Complexity and Big-Oh]]).

> [!tip] Insertion sort on nearly sorted input
> If the list is already (or nearly) sorted, each new item moves only a little, so insertion sort does very little work. Selection sort always scans the whole unsorted part. Slide MCQ 6 answer: **B, when the list is already sorted or nearly sorted**.

## Code
Each sorts `L` **in place** and returns `None` (like `L.sort()`). Works for any type that supports `<` (int, float, str, ...).

```python
def selection_sort(L: list) -> None:
    for i in range(len(L)):
        smallest = i
        for j in range(i + 1, len(L)):     # scan the unsorted part
            if L[j] < L[smallest]:
                smallest = j
        L[i], L[smallest] = L[smallest], L[i]


def insertion_sort(L: list) -> None:
    for i in range(1, len(L)):
        j = i
        while j > 0 and L[j - 1] > L[j]:   # slide L[i] left into place
            L[j - 1], L[j] = L[j], L[j - 1]
            j -= 1


def bubble_sort(L: list) -> None:
    end = len(L) - 1
    while end > 0:
        for i in range(end):               # one pass
            if L[i] > L[i + 1]:
                L[i], L[i + 1] = L[i + 1], L[i]
        end -= 1                           # the last item is now in place
```
(Checked against `sorted()` on random lists.)

## Tracing (slide MCQs, checked in Python)
**MCQ 4:** `[29, 10, 14, 37, 13]` → after 3 iterations `[10, 13, 14, 37, 29]`. The front holds the 3 smallest values in order: **selection sort**.

| Pass | Selection sort |
|---|---|
| 1 | `[10, 29, 14, 37, 13]` |
| 2 | `[10, 13, 14, 37, 29]` |
| 3 | `[10, 13, 14, 37, 29]` (14 already in place) |

**MCQ 5:** `[20, 5, 18, 12, 7]` → `[5, 18, 20, 12, 7]`. The front `[5, 18, 20]` is sorted but 7 and 12 are still behind it, so it isn't the 3 smallest: **insertion sort** (the first "iteration" is just the item 20 on its own).

**Bubble sort MCQ 2:** `[6, 3, 9, 2, 5]`

| Pass | List |
|---|---|
| 1 | `[3, 6, 2, 5, 9]` (9 bubbled to the end) |
| 2 | `[3, 2, 5, 6, 9]` |
| 3 | `[2, 3, 5, 6, 9]` → **D** |

> [!warning] Traps
> - Selection and bubble sort both have a "finished" part that never changes again; insertion sort's sorted front **does** change.
> - Selection's finished part is at the **front** (smallest); bubble's is at the **back** (largest).
> - The sort functions return `None`. `L = selection_sort(L)` loses your list.

## Timing code
```python
from time import time
t = time()
selection_sort(big_list)
print(time() - t)   # seconds; machine dependent
```
Slide task: time lists of length $N, 2N, 3N, \dots$. For an $O(n^2)$ sort, doubling $n$ should roughly **quadruple** the time.

## Other sorts (just names for now)
quicksort, merge sort, radix sort, and **timsort**, which is what Python's `sorted` and `list.sort` use.

Related: [[Time Complexity and Big-Oh]] · [[Lists]] · [[While Loops]] · [[Nested Loops (Loop Practice)]]
