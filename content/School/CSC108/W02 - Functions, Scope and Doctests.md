---
tags:
  - csc108
  - python
  - notes
course: CSC108
week: W02
---

# Functions, Scope and Doctests

> Format: **Key idea → Example → Common mistakes**. Related: [[W05 - Aliasing, Loops and Operators|Aliasing, Loops and Operators]], [[W04 - Strings, Loops and Accumulators|Strings, Loops and Accumulators]], [[Test Cheat Sheet - Methods and Built-ins]]

## Contents

- [[#`//` and `%` (floor division and modulo)]]
- [[#Function anatomy and type hints]]
- [[#Scope: local vs global]]
- [[#Docstrings and doctests]]
- [[#`print` vs `return`]]
- [[#Quiz bank]]

---

## `//` and `%` (floor division and modulo)

**Key idea:** for any ints $x$ and $y \neq 0$:

$$x = q \cdot y + r, \qquad q = x \,//\, y = \left\lfloor \frac{x}{y} \right\rfloor, \qquad r = x \,\%\, y$$

In Python, $r$ always has the **same sign as $y$** because `//` rounds **down** (toward $-\infty$), not toward $0$.

**Examples**

| Expression | $q$ | $r$ | Check |
|---|---|---|---|
| `-14 % 3` | $-5$ | $1$ | $-14 = (-5)(3) + 1$ |
| `14 % -3` | $-5$ | $-1$ | $14 = (-5)(-3) - 1$ |
| `3 % 2` | $1$ | $1$ | $3 = (1)(2) + 1$ |
| `mod(-mod(5,2) - 1, mod(20,7))` | | $4$ | $= -2 \,\%\, 6$, and $-2 = (-1)(6) + 4$ |

> [!warning] Common mistake
> `-14 // 3` is $-5$, **not** $-4$. Python floors; it does not truncate.

---

## Function anatomy and type hints

```python
def triangle_area(a: float, b: float, c: float) -> float:
    s = 0.5 * (a + b + c)
    return (s * (s - a) * (s - b) * (s - c)) ** 0.5
```

This is **Heron's formula**:

$$s = \frac{a+b+c}{2}, \qquad A = \sqrt{s(s-a)(s-b)(s-c)}$$

- Type hints (`a: float`, `-> float`) are **documentation only**. Python does **not** check them at runtime.
- `x ** 0.5` is the same as `math.sqrt(x)`.
- A **nullary** function takes no parameters: `def foo():`.
- A function with no `return` (or a bare `return`) returns `None`.

---

## Scope: local vs global

```python
x = 7                # global

def foo():
    y = x + 2        # reading a global: OK  →  y = 9
    def doo():       # nested function can read y
        return y ** 2
    return doo()     # foo() → 81

def poo(x):
    x = x + 2        # x here is the PARAMETER (local)
    return x

poo(x)               # → 9, but global x is still 7
```

**Key ideas**
- A function can **read** a global variable.
- If a function **assigns** to a name anywhere in its body, that name is **local for the whole function**.
- So `x = x + 2` inside `foo` raises `UnboundLocalError`: `x` is local, but has no value yet when the right side is evaluated. (It is legal syntax; it fails at runtime.)
- Reassigning a parameter (like in `poo`) never changes the caller's variable. For immutable types like `int`, the caller's value can never change. See [[W05 - Aliasing, Loops and Operators#Aliasing, mutability, and `+=`|Aliasing, Loops and Operators > Aliasing, mutability, and `+=`]].

---

## Docstrings and doctests

**Design recipe order:** header with type hints → docstring description → examples → body.

```python
def area_rectangle(length: float, width: float) -> float:
    """Return the area of a rectangle with given length and width.

    >>> area_rectangle(1.0, 5.0)
    5.0
    >>> area_rectangle(1.5, 10.0)
    15.0
    """
    return length * width
```

**Rules for doctests**
- `>>> call` then the **exact** expected output on the next line, written as Python would display it (`5.0` not `5`, `'abc'` with quotes for strings, `True` not `true`).
- A function that returns `None` shows **no output line**.
- A docstring with no `>>>` lines has **0 tests**.
- Preconditions go in the docstring: `Precondition: len(s) > 0`.

**Running them** (put at the bottom of the file):

```python
if __name__ == '__main__':
    import doctest
    doctest.testmod()          # verbose=True shows every test
```

> [!tip] PyCharm
> If PyCharm's doctest runner shows `PermissionError ... DumpStack.log`, its run configuration is pointed at the drive root `/`. Fix the target in **Run → Edit Configurations…**, or just run the file normally with the `testmod()` block above.

---

## `print` vs `return`

- `return` sends a value **back to the caller**. Doctests and other code can use it.
- `print` only **displays** text. The function still returns `None`.
- `help(str.find)` prints the documentation and returns `None`, so `print(help(str.find))` prints the docs **and then `None`**.

---

## Quiz bank

- [ ] What is `-7 // 2` and `-7 % 2`?

> [!success]- Solution
> $-4$ and $1$. `//` floors: $\lfloor -3.5 \rfloor = -4$. Then $-7 = (-4)(2) + 1$, so the remainder is $1$ (same sign as $2$).

- [ ] What does `foo()` return, and why does `x = x + 2` inside it crash?

> [!success]- Solution
> `foo()` returns $81$: $y = 7 + 2 = 9$ and `doo()` returns $9^2$. Adding `x = x + 2` inside `foo` makes `x` **local for the whole function**, so the right side reads a local `x` that has no value yet → `UnboundLocalError`.

- [ ] After `poo(x)`, what is the global `x`?

> [!success]- Solution
> Still $7$. `poo` returns $9$, but it only rebinds its own parameter `x`; the caller's variable is untouched (and an `int` can't be mutated anyway).

- [ ] Write the doctest line for a function that returns `None`.

> [!success]- Solution
> Just the call, with **no output line** after it:
> ```python
> >>> my_function(3)
> ```

- [ ] What does `print(help(len))` print at the end?

> [!success]- Solution
> `None`. `help` prints the docs and returns `None`, and then `print` displays that return value.

---

<!-- Add new topics above the Quiz bank -->