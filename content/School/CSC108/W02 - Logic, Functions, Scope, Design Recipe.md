---
course: CSC108
lecture: W02A-W02C
date: 2026-09-16
tags:
  - csc108
  - booleans
  - logic
  - scope
  - doctest
  - tt1
week: W02
---
# W02 — Logic & Booleans, Functions & Scope, Designing Functions

> [!info] Test 1 material. It's still used on Test 2 (conditions, refactoring) and on the final.

## W02A — Logic crash course
- `bool` has exactly two values: `True` and `False`. Comparisons (`>`, `>=`, `==`, `!=`) produce bools.
- `True` acts as 1 and `False` as 0: `(7 >= 7) + 1 → 2`. Any non-zero value is truthy. Know this, but don't rely on it.

| `a` | `b` | `a and b` | `a or b` |
|---|---|---|---|
| T | T | T | T |
| T | F | F | T |
| F | T | F | T |
| F | F | F | F |

**De Morgan's laws**
$$\lnot(a \land b) = \lnot a \lor \lnot b \qquad \lnot(a \lor b) = \lnot a \land \lnot b$$
In Python: `not (a and b) == (not a or not b)` and `not (a or b) == (not a and not b)`.

**Precedence:** `not` → `and` → `or`. So `True or False and False` is `True or (False and False)` → `True`.

**Short-circuiting (lazy evaluation)**
- `True or X` returns `True` **without evaluating X**: `True or 1/0 → True`, even with an undefined name.
- `False and X` → `False` without evaluating X.
- `False or 1/0` → `ZeroDivisionError`, and `print(0 or 1/0)` → error too, because `0` is falsy so Python evaluates `1/0`.
- A **syntax** error is still an error (`True or !`), because Python reads the whole line before running anything.

Worked answers:
- `False or False and True` → `False or False` → **False**
- `False and False or True and False or False or True` → `F or F or F or T` → **True**
- `a = True + 2` → `3`. `b = 7*False and 1/0` → `0` (short-circuits). `c = not a != b` → `not (3 != 0)` → **False**
- $\lnot(b \lor \lnot a \lor \lnot b)$: since $b \lor \lnot b$ is always True, the whole thing is always **False**.

```python
def is_even(x: int) -> bool:
    return x % 2 == 0

def divides(x: int, y: int) -> bool:
    """x divides y iff y = t*x for some integer t."""
    return y % x == 0
```

## W02B — Functions and scope
- **Scope** is the set of places where a name is valid.
- **Global** variables (defined outside any function) can be *read* inside functions. Constants go in CAPS: `PI = 3.14159`.
- **Local** variables are created inside a function and vanish after it returns. Using one outside gives `NameError`.
- A local with the same name as a global **shadows** it, and the global isn't changed.
- `x = x + 2` inside a function, with no parameter `x`, gives **`UnboundLocalError`**: assigning makes `x` local, so it has no value yet.
- **Parameters are local.** Reassigning a parameter doesn't change the caller's variable (for numbers and strings).

| Code | Result |
|---|---|
| `x = 7; def foo(x): x = x + 2; return x` → `foo(x)`, then `x` | `9`, then `7` |
| then `x = x + foo(x)` | `16` |
| `x = 5; def foo(y): return x * y` → `foo(7)`, `foo(x)` | `35`, `25` |
| `def foo(): x = x + 1` with global `x = 10` | **Error** |

## W02C — Designing functions and doctests
**The design recipe** (the parts of a function):
```python
def name(param: type) -> return_type:        # header + type contract
    """Description of what it returns, mentioning the params.

    >>> name(example_arg)                     # examples = doctests
    expected_result
    """
    body
    return expression
```
1. Decide **what** the code should do. 2. Decide **how you'll know it's correct** (the examples). 3. Repeat.

```python
import doctest
doctest.testmod(verbose=True)   # runs every >>> example and compares the output
```
`help(func)` shows the docstring. Test **edge cases**: 0, negatives, empty inputs, very large values.

```python
def cookies_required(adults: int, children: int, teens: int) -> int:
    """
    >>> cookies_required(2, 3, 4)
    32
    """
    return 3 * adults + 2 * children + 5 * teens

def pizzas_required(adults: int, teens: int, children: int) -> int:
    slices = 2 * adults + 3 * teens + children
    return (slices + 7) // 8          # ceiling division
```
Ceiling division: $\lceil n/8 \rceil = (n + 7) \,//\, 8$ for $n \ge 0$.

Sphere volume: $V = \tfrac{4}{3}\pi r^3$. Right triangle: sort the sides so $c$ is the largest, then check $a^2 + b^2 = c^2$ (compare floats with a tolerance).

> [!warning] MCQ Q2 trap: a function annotated `-> str` whose docstring says "Return False if..." but that actually returns `True` has a type contract **and** description that are both wrong → **C**.

Related: [[W01 - Intro, Python as a Calculator, Basic Functions|Intro, Python as a Calculator, Basic Functions]], [[W03 - Strings, Indexing, Slicing, String Methods|Strings, Indexing, Slicing, String Methods]]
