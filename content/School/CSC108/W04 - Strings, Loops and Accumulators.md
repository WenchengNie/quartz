---
tags:
  - csc108
  - python
  - notes
course: CSC108
week: W04
---

# Strings, Loops and Accumulators

> Format: **Key idea → Example → Common mistakes**. Related: [[W05 - Aliasing, Loops and Operators|Aliasing, Loops and Operators]], [[W02 - Functions, Scope and Doctests|Functions, Scope and Doctests]], [[Test Cheat Sheet - Methods and Built-ins]]

## Contents

- [[#Boolean expressions]]
- [[#String slicing (palindromes)]]
- [[#Early return: "does any character…"]]
- [[#Accumulator pattern]]
- [[#Stepping by 2: `swap_neighbours`]]
- [[#Numeric accumulators: approximating $\pi$]]
- [[#`while` loops and `input()`]]
- [[#Numerical derivative and operator precedence]]
- [[#`random`]]
- [[#Quiz bank]]

---

## Boolean expressions

```python
def scholarship_eligibility(cgpa: float, year: int, cs: bool) -> bool:
    return cgpa >= 3.7 and (year == 2 or year == 3) and cs
```

- Return the boolean expression directly. No need for `if ...: return True else: return False`.
- `and` binds tighter than `or`, so the parentheses around `year == 2 or year == 3` are **required**.
- Alternative: `year in (2, 3)`.
- `scholarship_eligibility(4.0, 1, True)` → `False` (year fails).

---

## String slicing (palindromes)

`s[start:stop:step]`: `stop` is **excluded**; any part can be omitted.

```python
def is_palindrome(s: str) -> bool:
    return s == s[::-1]        # s[::-1] is s reversed
```

| Slice | `'racecar'` gives |
|---|---|
| `s[1:4]` | `'ace'` |
| `s[:3]` | `'rac'` |
| `s[-1]` | `'r'` |
| `s[::2]` | `'rccr'` |
| `s[::-1]` | `'racecar'` |

> [!warning] Don't name parameters `input`, `str`, `list`, `sum`, …
> It hides the built-in inside that function. Use `s`, `text`, `total`, etc.

---

## Early return: "does any character…"

```python
def contains_vowel(s: str) -> bool:
    for char in s:
        if char.lower() in 'aeiou':
            return True        # found one → stop immediately
    return False               # loop finished, none found
```

> [!note] Pattern
> **Any:** `return True` inside the loop, `return False` after it.
> **All:** `return False` inside the loop, `return True` after it (see `divides` in [[W05 - Aliasing, Loops and Operators#Looping: values vs indices|Aliasing, Loops and Operators > Looping: values vs indices]]).
> Common bug: putting `else: return False` inside the loop, which only checks the first character.

---

## Accumulator pattern

1. Initialize before the loop (`''`, `0`, `[]`).
2. Update inside the loop.
3. Return after the loop.

```python
import random

def generate_random_text(length: int) -> str:
    letters = 'abcd'
    result = ''
    for i in range(length):
        result += letters[random.randint(0, len(letters) - 1)]
    return result
```

---

## Stepping by 2: `swap_neighbours`

```python
def swap_neighbours(s: str) -> str:
    """Return a copy of s with each adjacent pair of characters swapped.

    >>> swap_neighbours('raceca')
    'arecac'
    >>> swap_neighbours('abc')
    'bac'
    """
    result = ''
    for i in range(0, len(s) - 1, 2):
        result += s[i + 1] + s[i]
    if len(s) % 2 == 1:
        result += s[-1]          # leftover last char
    return result
```

- `range(0, len(s) - 1, 2)` works for both even and odd lengths, so there is no need for two separate loops.
- `s[len(s) - 1]` is the same as `s[-1]`.

---

## Numeric accumulators: approximating $\pi$

The lecture's `mystery_math` uses the **Basel problem**:

$$\sum_{k=1}^{\infty} \frac{1}{k^2} = \frac{\pi^2}{6} \quad\Longrightarrow\quad \pi = \sqrt{6 \sum_{k=1}^{\infty} \frac{1}{k^2}}$$

```python
def mystery_math(n: int) -> float:
    total = 0
    for i in range(n):              # i = 0..n-1, so k = i+1 = 1..n
        total += 1 / (i + 1) ** 2
    return (6 * total) ** 0.5
```

- `mystery_math(2)` $= \sqrt{6\left(1 + \tfrac14\right)} = \sqrt{7.5} \approx 2.739$
- As $n \to \infty$, the result $\to \pi \approx 3.14159$ (slowly).
- Watch the **off-by-one**: `range(n)` starts at $0$, so use `i + 1` to avoid dividing by $0$.

---

## `while` loops and `input()`

```python
def echo() -> None:
    while True:
        s = input()
        if s == 'Stop it!':
            return            # exits the function (and the loop)
        print(s)
```

- `input()` **always returns a `str`**. Use `int(input())` to get a number.
- `while True` needs a `return` or `break` inside, or it loops forever.
- `while condition:` re-checks the condition **before each iteration**.

---

## Numerical derivative and operator precedence

Approximating $f'(x)$ with $f(x) = \sqrt{6 - x}$:

$$f'(x) \approx \frac{f(x+h) - f(x)}{h}, \qquad h = 10^{0}, 10^{-1}, \dots, 10^{-7}$$

Exact answer at $x = 2$: $f'(x) = \dfrac{-1}{2\sqrt{6-x}}$, so $f'(2) = -\dfrac{1}{4} = -0.25$.

> [!bug] Precedence bug from lecture code
> `(6 - x) ** 1/2` means `((6 - x) ** 1) / 2`, which is $\frac{6-x}{2}$, **not** $\sqrt{6-x}$, because `**` runs before `/`.
> With that bug the loop prints about $-0.5$ instead of approaching $-0.25$.
> Fix: `(6 - x) ** 0.5` or `(6 - x) ** (1/2)`.

```python
def der(x: float) -> None:
    for i in range(8):
        h = 1 / 10 ** i
        result = ((6 - (x + h)) ** 0.5 - (6 - x) ** 0.5) / h
        print(result)
```

Precedence (high → low): `**` → unary `-` → `* / // %` → `+ -` → comparisons → `not` → `and` → `or`.

Watch out: `-2 ** 2` is $-4$, because `**` happens before the minus.

---

## `random`

- `random.randint(a, b)` → int in $[a, b]$, **both ends included** (unlike `range`).
- `random.choice(seq)` → a random element, e.g. `random.choice('abcd')`.
- `random.random()` → float in $[0, 1)$.

---

## Quiz bank

- [ ] What is `'computer'[1:5:2]`?

> [!success]- Solution
> `'op'`. Indices $1$ and $3$ (start at $1$, step $2$, stop before $5$): `'o'` and `'p'`.

- [ ] Why is `else: return False` inside the loop of `contains_vowel` wrong?

> [!success]- Solution
> The function returns on the **first** character either way, so it only ever checks `s[0]`. `contains_vowel('hello')` would return `False`. The `return False` belongs **after** the loop.

- [ ] What does `swap_neighbours('abcde')` return?

> [!success]- Solution
> `'badce'`: pairs `ab → ba`, `cd → dc`, and the leftover `'e'` is added at the end (odd length).

- [ ] What is `9 ** 1/2` in Python?

> [!success]- Solution
> `4.5`. `**` runs before `/`, so it's `(9 ** 1) / 2 = 9 / 2`. For $\sqrt 9$ write `9 ** 0.5` or `9 ** (1/2)`.

- [ ] Can `random.randint(0, 3)` return `3`?

> [!success]- Solution
> Yes. `randint(a, b)` includes **both** ends, unlike `range`.

---

<!-- Add new topics above the Quiz bank -->