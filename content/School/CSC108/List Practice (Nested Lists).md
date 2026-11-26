---
course: CSC108
lecture: W07B
date: 2026-10-23
tags:
  - csc108
  - lists
  - nested-lists
  - matrices
  - tt2
week: W07B
---
# W07B — List Practice (Nested Lists)

> [!info] On Test 2: **Yes**

## A matrix is a list of lists
$$M = \begin{bmatrix}1 & 2 & 3\\4 & 5 & 6\\7 & 8 & 9\end{bmatrix} \;\longrightarrow\; \texttt{[[1, 2, 3], [4, 5, 6], [7, 8, 9]]}$$
```python
M = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
M[-1]       # [7, 8, 9]          <- a row
M[1:3]      # [[4, 5, 6], [7, 8, 9]]
M[1][-1]    # 6                  <- row 1, last column
M[1, -1]    # TypeError: list indices must be integers or slices, not tuple
```
`M[r][c]` means **row first, then column**. Rows: `len(M)`. Columns: `len(M[0])`.

## Standard nested loop over a matrix
```python
for r in range(len(M)):
    for c in range(len(M[r])):
        ... M[r][c] ...
```

## Tasks (solutions)
```python
def disassemble(cs: str) -> list[str]:
    result = []
    for ch in cs:
        result.append(ch)
    return result

def dot_product(xs: list[int], ys: list[int]) -> int:
    total = 0
    for i in range(len(xs)):
        total += xs[i] * ys[i]
    return total
```
The dot product is $\vec{x}\cdot\vec{y} = \sum_{i} x_i y_i$. For example, $[1,2]\cdot[3,4] = 3 + 8 = 11$.

```python
def sub_matrix(row: int, col: int, M: list[list[int]]) -> list[list[int]]:
    result = []
    for r in range(row, len(M)):
        result.append(M[r][col:])          # slicing makes a new list
    return result
# sub_matrix(0, 2, [[1,2,3,4,5],[6,7,8,9,10]]) -> [[3,4,5],[8,9,10]]

def no_forbidden(forbidden: list[str], imports: list[str]) -> bool:
    for bad in forbidden:
        for imp in imports:
            if bad in imp:
                return False
    return True

def remove_x(x: int, xs: list[int]) -> list[int]:
    result = []
    for item in xs:
        if item != x:
            result.append(item)
    return result                          # xs is NOT modified

def transpose(M: list[list[int]]) -> list[list[int]]:
    result = []
    for c in range(len(M[0])):
        new_row = []
        for r in range(len(M)):
            new_row.append(M[r][c])
        result.append(new_row)
    return result
```
**Matrix product:** $(MN)_{ij} = \text{row}_i(M)\cdot\text{col}_j(N) = \sum_k M_{ik}N_{kj}$. That takes three nested loops, over `i`, `j`, and `k`.

## Nested lists and aliasing (Review Q2)
```python
a = [3, [1, 2], "hello"]
b = [4, 5, "world"]
temp = a[0]                 # 3
a = [b[1], a[1], temp]      # a = [5, <same inner list [1, 2]>, 3]
nested = [a, b[2]]          # nested[0] IS a
a[1].append(9)              # mutates the shared inner list
print("a:", a)              # a: [5, [1, 2, 9], 3]
print("nested:", nested)    # nested: [[5, [1, 2, 9], 3], 'world']
print("a[1][1]:", a[1][1])  # a[1][1]: 2
```
Rule: **putting a list inside another list stores a reference to it, not a copy.**

## Mock test practice (answers)
- **Q2:** `L = [[1, 2], [3, 4, 5]]` → `res1 = 1` → `res2 = L[1] = [3, 4, 5]` → `res3 = 5` → prints **5** (d).
- **Q3:** `a_list[0][0]` → **108** (b).

Related: [[Lists]], [[Nested Loops (Loop Practice)]], [[CSC108 Test 2 Study Guide]]
