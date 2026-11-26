---
course: CSC108
lecture: W01A-W01C
date: 2026-09-09
tags:
  - csc108
  - arithmetic
  - variables
  - functions
  - tt1
week: W01
---
# W01 — Course Intro, Python as a Calculator, Basic Functions

> [!info] Test 1 material. Not on the Test 2 list, but you need it for everything after, and it's on the final.

## W01A — Course logistics
| Assessment | Weight |
|---|---|
| PCRS | 2% |
| Practicals | 8% (attendance + completion; **get a TA to check you off**) |
| Assignment Phase 0 / 1 / 2 | 2% / 5% / 7% |
| 2 Term Tests | 36% |
| Final Exam | 40% (**you need ≥ 40% on the final to pass**) |
- Bonus: research surveys, up to +2% (makes up for lost assignment marks).
- Weekly rhythm: **Prepare** (PCRS videos, due Tue 12 PM) → **Practice** and **Perform** (PCRS, due Thu 11:59 PM).
- Help: Quercus → Piazza (content questions) → office hours / Help Centre (Mon and Thu). Email `csc108.utm@utoronto.ca` only for personal issues (from a UofT address, with "CSC108" in the subject, your student number, and your name).
- Gen AI is allowed as a learning aid. If you use it on graded work, **disclose it**. No AI on tests or exams.
- Course topics: variables, Boolean logic, functions, strings, if, for/while, lists, dictionaries, program design, complexity, regex, sorting, intro to classes.

## W01B — Python as a calculator
| Operator | Meaning | Example |
|---|---|---|
| `/` | true division, **always a `float`** | `4 / 2 → 2.0` |
| `//` | floor division | `17 // 3 → 5`, `9.5 // 2 → 4.0` |
| `%` | remainder (modulus) | `17 % 3 → 2` |
| `**` | power | `2 ** -1 → 0.5`, `2 ** 0 → 1` |

**Division identity:** $x = y\cdot(x \,//\, y) + (x \,\%\, y)$, e.g. $17 = 3\cdot 5 + 2$.

**Precedence** (highest first): `**` → `*`, `/`, `//`, `%` → `+`, `-`. Operators at the same level go left to right, **except `**`, which goes right to left**: `2 ** 5 ** 2` $= 2^{25}$, but `(2 ** 5) ** 2` $= 2^{10}$.
- `6 / 2 * (1 + 2)` → `9.0`
- `1 / 0` → `ZeroDivisionError`

**Floating-point error:** computers store only finitely many digits, so `1/3` → `0.3333333333333333` and **`0.1 + 0.2 == 0.3` is `False`**.

**Modulus with negatives:** the result takes the **sign of the divisor**:
`17 % 5 = 2`, `17 % -5 = -3`, `-17 % 5 = 3`, `-17 % -5 = -2`.

### Variables
`=` is **assignment**, not mathematical equality. `x = x + 1` is fine. `1 = 1` is a `SyntaxError`. Using a name before it's assigned gives a `NameError`. `==` tests equality.

Assigning `y = x` copies the **value** for numbers, so a later change to `x` doesn't affect `y`. Traces from the lecture:
- `x = 1 + 4; y = x - 1; x = y + 1 * x; x = y // x` → $(x, y) = (0, 4)$
- Task 7 → $(x, y, z) = (5.0, 2, 6.25)$

## W01C — Basic functions
```python
def triangle_area(a: float, b: float, c: float) -> float:
    """Return the area of a triangle with side lengths a, b, c."""
    s = (a + b + c) / 2
    return (s * (s - a) * (s - b) * (s - c)) ** 0.5
```
This is Heron's formula: $A = \sqrt{s(s-a)(s-b)(s-c)}$ with $s = \tfrac{1}{2}(a+b+c)$.

- **Python functions are procedures**, not mathematical functions.
- **Indentation matters**: use 4 spaces, not tabs (`IndentationError`). Doing it the conventional way is called "Pythonic".
- **`return`** exits the function **immediately** and sends a value back. Code after it never runs.
- A function with no `return` (or a bare `return`) gives back **`None`** (`NoneType`).
- **`print` ≠ `return`**: `print` shows something on screen, while `return` gives a value to the caller.
- **Type annotations** (`a: int -> float`) document the types but aren't enforced.
- A **docstring** is a short, precise description in `"""..."""`.
- Built-ins: `min(1, 2, 3) → 1`, `max(1, 2, 3) → 3`.

### Knowledge checks
- `def a(x, y): print(x + y); return x * y`, then `print(a(2, 3) + a(1, 1))` prints `5`, `2`, `7` → **D (none of the above)**.
- Two `return`s in a row: only the first runs → `a(2, 3) + a(1, 1) = 5 + 2 = 7` → **D**.
- `f(x, y) = x % y`: `f(5, 2) = 1`, `f(20, 7) = 6`, and `f(-f(5, 2) - 1, f(20, 7)) = -2 % 6 = 4`.
- Temperature: $F = \tfrac{9}{5}C + 32$ and $C = \tfrac{5}{9}(F - 32)$.

Related: [[W02 - Logic, Functions, Scope, Design Recipe|Logic, Functions, Scope, Design Recipe]]
