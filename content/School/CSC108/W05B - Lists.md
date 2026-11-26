---
course: CSC108
lecture: W05B
date: 2026-10-09
tags:
  - csc108
  - lists
  - mutability
  - aliasing
  - tt2
week: W05B
---
# W05B — Lists

> [!info] On Test 2: **Yes**

## Definition
A **list** is an ordered sequence of elements, which don't have to be the same type. You create one with `[ ]`. **Lists are mutable**: they can be changed in place.
```python
xs = [1, 2]
xs[0] = 2 * xs[1]   # xs == [4, 2]
```

## Operations
| Operation | Example | Result |
|---|---|---|
| comparison | `[1, 2, 3] < [4, 5, 6]` | `True` |
| | `[7, 2, 3] < [4, 5, 6]` | `False` |
| | `[] < [1]` | `True` |
| membership | `1 in [1, 2, 3]` | `True` |
| | `[1] in [1, 2, 3]` | `False` (the list `[1]` isn't an element) |

Comparison goes **element by element from index 0**. The first difference decides it, and a shorter prefix is "less than".

## Methods (most return `None` because they mutate)
| Method | Effect | Returns |
|---|---|---|
| `L.append(x)` | adds `x` (one item) to the end | `None` |
| `L.extend(items)` | adds **each** item to the end | `None` |
| `L.insert(i, x)` | inserts `x` at index `i` | `None` |
| `L.pop()` | removes the last item | **the item** |
| `L.remove(v)` | removes the first `v` | `None` |
| `L.reverse()` | reverses in place | `None` |
| `L.sort(reverse=False)` | sorts in place | `None` |
| `L.copy()` | — | a **new** (shallow) list |
| `L.count(x)`, `L.index(v)` | — | `int` |

```python
xs = [1, 2, 3]; xs.append([4, 5])   # [1, 2, 3, [4, 5]]
xs = [1, 2, 3]; xs.extend([4, 5])   # [1, 2, 3, 4, 5]
```
> [!warning] `L = L.append(x)` sets `L` to `None`. Never assign the result of a mutating method.

## Aliasing
Two variables that refer to the **same** list object are **aliases**. Changing the list through one shows up through the other.
```python
xs = [1, 2, 3]
xs_alias = xs
xs.append(4)        # xs_alias -> [1, 2, 3, 4]
xs += [5]           # += MUTATES  -> xs_alias -> [1, 2, 3, 4, 5]
xs = xs + [6]       # + makes a NEW list -> alias broken
xs_alias            # [1, 2, 3, 4, 5]
```
- `ys = xs` creates an alias, **not** a copy.
- `ys = xs.copy()` or `xs[:]` creates a **shallow copy**: a new outer list whose items are the same objects. Inner lists are still shared.

## Other useful bits
- `while xs: xs.pop()` empties the list, because an empty list is falsy.
- `xs.reverse()` does the same as `xs[:] = xs[::-1]`.
- **Type annotations:** write what's inside, e.g. `list[int]` or `list[list[str]]`.

## Lecture tasks
1. `count(xs, ys)`: how many times members of `xs` appear in `ys`. `count([1, 2], [1, 2, 2, 2, 3, 1, 4])` → `5`.
2. `make_unique(xs)`: a new list without duplicates, keeping first-appearance order:
   ```python
   result = []
   for x in xs:
       if x not in result:
           result.append(x)
   return result
   ```
3. Return `[smallest, largest, median]` of a non-empty list. Sort a **copy** (don't mutate the parameter!). The median is `s[(len(s) - 1) // 2]`, which picks the smaller middle value when the length is even.

Related: [[W07B - List Practice (Nested Lists)|List Practice (Nested Lists)]], [[CSC108 Test 2 Study Guide]]
