---
course: CSC108
type: test-prep
test: Final Exam
date: 2026-12-17
tags: [csc108, final, problem-set]
---
# CSC108 Final Exam — Problem Set

Study mash for the final. Coverage is **TBA** (see [[CSC108 Final Exam Study Guide]]); this starts with the post–Test 2 topics. All answers checked by running the code.

## Sorting

### S1. Trace each sort on `[7, 3, 9, 1, 5]` for 2 passes.

> [!success]- Solution
> | Sort | After pass 1 | After pass 2 |
> |---|---|---|
> | Selection | `[1, 3, 9, 7, 5]` | `[1, 3, 9, 7, 5]` (3 already in place) |
> | Insertion | `[3, 7, 9, 1, 5]` | `[3, 7, 9, 1, 5]` (9 already in place) |
> | Bubble | `[3, 7, 1, 5, 9]` | `[3, 1, 5, 7, 9]` |

### S2. `[29, 10, 14, 37, 13]` becomes `[10, 13, 14, 37, 29]` after 3 iterations. Which sort?

> [!success]- Solution
> **Selection sort**: the front three are the three smallest values, in order.

### S3. `[20, 5, 18, 12, 7]` becomes `[5, 18, 20, 12, 7]` after three iterations. Which sort?

> [!success]- Solution
> **Insertion sort**: the front is sorted among itself, but smaller values (7, 12) are still behind it, so it can't be selection sort.

### S4. When does insertion sort beat selection sort?

> [!success]- Solution
> When the list is **already sorted or nearly sorted**: each item moves only a little, while selection sort always scans the whole unsorted part.

### S5. Write `bubble_sort(L: list) -> None`.

> [!success]- Solution
> ```python
> def bubble_sort(L: list) -> None:
>     end = len(L) - 1
>     while end > 0:
>         for i in range(end):
>             if L[i] > L[i + 1]:
>                 L[i], L[i + 1] = L[i + 1], L[i]
>         end -= 1
> ```

## Time complexity

### T1. Give the order of each function in terms of `n = len(L)`.
```python
def a(L):
    for x in L:
        for y in L:
            print(x, y)

def b(L):
    i = 0
    while i < 10 ** 10:
        i += 1

def c(L):
    i = 1
    while i < len(L):
        i = i * 2

def d(L):
    for x in L:
        print(x)
    for x in L:
        for y in L:
            print(x + y)
```

> [!success]- Solution
> - `a`: $O(n^2)$ (nested loops over `L`).
> - `b`: $O(1)$: the loop count doesn't depend on $n$.
> - `c`: $O(\log n)$: `i` doubles (e.g. 4 steps for $n=16$, 10 for $n=1024$).
> - `d`: $O(n) + O(n^2) = O(n^2)$.

### T2. What is the complexity of selection, insertion and bubble sort?

> [!success]- Solution
> All three are $O(n^2)$ in the length of the list (slide Task 4).

## Regex

Practice from the Lab 9 backup exercises (`Downloads\csc108\tutorials\Practical9.pdf`, section 5) and [[Regular Expressions]].

## Past tests (PDF)

Not transcribed: these are the original PDFs, shown right here. Click a box to open it.

### Past final exams

From the UTM past-exams archive (no solutions posted).

> [!example]- CSC108H Final Exam, December 2022
> ![[CSC108H Dec 2022 Final Exam.pdf#height=800]]

### Past term tests

Our own Test 2 covered up to files/CSVs (no testing, regex, sorting or complexity).

> [!example]- CSC108 Test 2, Fall 2026
> ![[CSC108_T2_2026_Blank.pdf#height=800]]

> [!success]- CSC108 Test 2, Fall 2026: Answer key
> ![[T2_AnswerKey.pdf#height=800]]
