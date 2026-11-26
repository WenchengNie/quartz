---
tags:
  - csc108
  - python
  - cheatsheet
course: CSC108
---

# Test Cheat Sheet – Methods and Built-ins

> Related: [[W02 - Functions, Scope and Doctests|Functions, Scope and Doctests]], [[W04 - Strings, Loops and Accumulators|Strings, Loops and Accumulators]], [[W06 - File IO - Reading and Writing Files|File IO - Reading and Writing Files]], [[W05 - Aliasing, Loops and Operators|Aliasing, Loops and Operators]]

> [!important] The #1 test trap
> **String methods never change the string**; they return a new one. `s.upper()` alone does nothing. Write `s = s.upper()`.
> **Many list methods change the list and return `None`**: `append`, `extend`, `insert`, `remove`, `sort`, `reverse`. So `lst = lst.sort()` sets `lst` to `None`.

---

## Built-in functions

| Function | Example | Result |
|---|---|---|
| `len(x)` | `len('abc')` | `3` |
| `type(x)` | `type(3.0)` | `<class 'float'>` |
| `isinstance(x, t)` | `isinstance(3, int)` | `True` |
| `int(x)` | `int('42')`, `int(3.9)` | `42`, `3` (truncates toward $0$) |
| `float(x)` | `float('2.5')` | `2.5` |
| `str(x)` | `str(5) + 'a'` | `'5a'` |
| `bool(x)` | `bool('')`, `bool(0)`, `bool([])` | all `False` |
| `abs(x)` | `abs(-3)` | `3` |
| `round(x, n)` | `round(3.14159, 2)` | `3.14` |
| `min` / `max` | `max([3, 9, 2])`, `min('b', 'a')` | `9`, `'a'` |
| `sum(lst)` | `sum([1, 2, 3])` | `6` |
| `sorted(lst)` | `sorted([3, 1, 2])` | `[1, 2, 3]` (new list) |
| `range(a, b, step)` | `list(range(1, 10, 3))` | `[1, 4, 7]` ($b$ excluded) |
| `enumerate(seq)` | `list(enumerate('ab'))` | `[(0, 'a'), (1, 'b')]` |
| `zip(a, b)` | `list(zip('ab', [1, 2]))` | `[('a', 1), ('b', 2)]` |
| `ord(c)` / `chr(n)` | `ord('a')`, `chr(98)` | `97`, `'b'` |
| `input(prompt)` | `input('Age? ')` | always a `str` |
| `print(...)` | `print('a', 'b', sep='-', end='!')` | `a-b!` |
| `help(f)` | `help(str.find)` | prints docs, returns `None` |

---

## `str` methods (all return new values)

| Method | Example | Result |
|---|---|---|
| `s.lower()` / `s.upper()` | `'HeLLo'.lower()` | `'hello'` |
| `s.strip()` | `'  hi\n'.strip()` | `'hi'` (also `lstrip`, `rstrip`) |
| `s.split()` | `'a b  c'.split()` | `['a', 'b', 'c']` |
| `s.split(sep)` | `'a,,b'.split(',')` | `['a', '', 'b']` |
| `sep.join(lst)` | `'-'.join(['a', 'b'])` | `'a-b'` (items must be `str`) |
| `s.find(sub)` | `'banana'.find('an')`, `'banana'.find('z')` | `1`, `-1` |
| `s.find(sub, start)` | `'banana'.find('an', 2)` | `3` |
| `s.index(sub)` | `'banana'.index('z')` | `ValueError` (unlike `find`) |
| `s.count(sub)` | `'banana'.count('a')` | `3` |
| `s.replace(old, new)` | `'banana'.replace('a', 'o')` | `'bonono'` |
| `s.startswith(x)` / `s.endswith(x)` | `'cat.txt'.endswith('.txt')` | `True` |
| `s.isdigit()` / `s.isalpha()` / `s.isalnum()` | `'123'.isdigit()`, `'-1'.isdigit()` | `True`, `False` |
| `s.isupper()` / `s.islower()` | `'ABC'.isupper()` | `True` |
| `sub in s` | `'an' in 'banana'` | `True` |
| `s * n` | `'ab' * 3` | `'ababab'` |
| f-string | `f'{x} is {x ** 2}'` with `x = 3` | `'3 is 9'` |

---

## `list` methods

| Method | Changes list? | Returns |
|---|---|---|
| `lst.append(x)` | ✅ adds **one** item | `None` |
| `lst.extend(seq)` | ✅ adds **each** item of `seq` | `None` |
| `lst.insert(i, x)` | ✅ | `None` |
| `lst.remove(x)` | ✅ removes **first** `x` (`ValueError` if missing) | `None` |
| `lst.pop()` / `lst.pop(i)` | ✅ | the removed item |
| `lst.sort()` / `lst.reverse()` | ✅ | `None` |
| `lst.index(x)` | ❌ | first index of `x` |
| `lst.count(x)` | ❌ | number of `x` |
| `lst + other` | ❌ (new list) | new list |
| `lst[:]` or `list(lst)` | ❌ | a **copy** (avoids aliasing) |

`append` vs `extend`: `[1].append([2, 3])` → `[1, [2, 3]]`, while `[1].extend([2, 3])` → `[1, 2, 3]`.

---

## `dict` (if covered)

| Operation | Result |
|---|---|
| `d[k]` | value (`KeyError` if missing) |
| `d.get(k, default)` | value or `default` |
| `k in d` | checks **keys** only |
| `d.keys()`, `d.values()`, `d.items()` | views; `for k, v in d.items():` |
| `d[k] = v` | add or update |
| `d.pop(k)` | remove and return value |

---

## Files

| Code | Meaning |
|---|---|
| `with open(name, 'r') as f:` | read (default mode) |
| `'w'` / `'a'` | write (**erases** first) / append |
| `f.read()`, `f.readline()`, `f.readlines()`, `for line in f` | see [[W06 - File IO - Reading and Writing Files\|File IO - Reading and Writing Files]] |
| `f.write(s)` | `s` must be a `str`; no automatic `'\n'` |

---

## Modules

| Module | Function | Notes |
|---|---|---|
| `math` | `math.sqrt(x)`, `math.pi`, `math.floor(x)`, `math.ceil(x)` | `math.floor(-2.5)` is $-3$ |
| `random` | `random.randint(a, b)` | $a$ **and** $b$ included |
| `random` | `random.choice(seq)`, `random.random()` | `random()` gives $[0, 1)$ |
| `doctest` | `doctest.testmod()` | runs all doctests in the file |

---

## Operators and gotchas

- `/` always gives a `float`: `4 / 2` → `2.0`. `//` floors: `-7 // 2` → $-4$.
- `%` result has the sign of the divisor: `-14 % 3` → $1$.
- `**` before unary minus: `-2 ** 2` → $-4$. `**` before `/`: `9 ** 1/2` → `4.5`.
- `and` before `or`. Use parentheses when mixing.
- Floats are approximate: `0.1 + 0.2 == 0.3` is `False`.
- String comparison is by character code: `'Z' < 'a'` is `True`, `'10' < '9'` is `True`.
- `is` checks same object; `==` checks equal value.
- Short-circuit: in `a and b`, if `a` is false, `b` is never evaluated.
