---
tags:
  - csc108
  - python
  - notes
course: CSC108
week: W05
---

# Aliasing, Loops and Operators

> Add new topics at the bottom. Each topic has: **Key idea → Example → Common mistakes**.

## Contents

- [[#List operators and `in`]]
- [[#Debugging: `list` vs parameter name]]
- [[#Aliasing, mutability, and `+=`]]
- [[#Looping: values vs indices]]
- [[#Quiz bank]]

---

## List operators and `in`

**Key idea**
- `in` checks membership **by value and type**.
- `len()` returns an `int`.
- `x in y` needs `y` to be a container (list, string, etc.), not an `int`.

**Example question:** which expressions return `True`?

| Expression | Result | Why |
|---|---|---|
| `len([1, 2, 3]) == len(['a', 'b', 'c'])` | ✅ True | $3 = 3$ |
| `len('mom') in [1, 2, 3]` | ✅ True | $3$ is in the list |
| `'a' in ['mom', 'dad']` | ❌ False | `'a'` is not an element |
| `[1, 2, 3] in len('mom')` | ⚠️ `TypeError` | `len('mom')` is the int $3$, not iterable |
| `'3' in [1, 2, 3]` | ❌ False | string `'3'` $\neq$ int `3` |
| `int('3') in [len('a'), len('ab'), len('abc')]` | ✅ True | list is `[1, 2, 3]`, contains $3$ |

> [!warning] Common mistake
> `'3'` (string) and `3` (int) are different. `'3' in [1, 2, 3]` is `False`.

---

## Debugging: `list` vs parameter name

**Key idea:** `list` is Python's built-in type. Inside a function, use the **parameter name** (here `l`).

**Bugs to watch for**
1. Using `list` instead of the parameter → `TypeError`.
2. Mixing tabs and spaces → `TabError`.
3. Missing `return` → function returns `None`.

**Correct version**

```python
def replace_negatives(l: list) -> list:
    """Replace each negative value in the list l
    with the index at which it appears.
    """
    for i, v in enumerate(l):
        if v < 0:
            l[i] = i
    return l
```

Check: `replace_negatives([3, -1, 5, -2])` → `[3, 1, 5, 3]`

> [!tip]
> Changing values during a loop is safe. Adding or removing items while looping is not.

---

## Aliasing, mutability, and `+=`

**Code**

```python
def repeat_string(x):
    x += x

def repeat_list(x):
    x.extend(x)

position = ["first", "second", "third", "fourth"]
double_position = position
repeat_list(double_position)

count = "123456789"
double_count = count
repeat_string(double_count)
```

**Output**
- `position` → doubled (8 items)
- `double_position` → doubled (8 items)
- `count` → `123456789` (unchanged)
- `double_count` → `123456789` (unchanged)

**Key idea**

| Type | Mutable? | What `+=` / `extend` does |
|---|---|---|
| `list` | ✅ Yes | Changes the **same object** in place. Every alias sees it. |
| `str` | ❌ No | Builds a **new string** and rebinds only the local name. |

- `b = a` does **not** copy. Both names point to the same object.
- **Mutating** an object is visible through all aliases.
- **Rebinding** a name only affects that one name.
- For lists, `x += x` calls `extend`, so it mutates in place. The object's type decides the behavior, not the operator.

> [!question] Self-test
> What does `repeat_list` do to the caller's list if written `x = x + x`?
> *(Hint: `+` creates a new list, then `x` is rebound locally.)*
>
> > [!success]- Solution
> > Nothing happens to the caller's list. `x + x` builds a **new** list and `x = ...` rebinds only the local name.

---

## Looping: values vs indices

**Key idea**
- `for x in lst` → gives **values**
- `for i, v in enumerate(lst)` → gives **index and value**
- `for i in range(len(lst))` → gives **indices**

**Bug:** `for i in lst: lst[i]` treats a value as an index. For `[8, 12, 64]`, $i = 8$ gives `lst[8]` → `IndexError`.

**Correct version**

```python
def divides(num: int, lst: list[int]) -> bool:
    """Return True if and only if num divides every element
    in lst. Otherwise return False.

    >>> divides(4, [8,12,64])
    True
    >>> divides(4, [8,77,23])
    False
    """
    for i in lst:
        if i % num != 0:
            return False
    return True
```

**Trace** `divides(4, [8,77,23])`: $8 \bmod 4 = 0$ passes, $77 \bmod 4 = 1 \neq 0$ → `False`.

> [!note] Pattern: "for every element"
> Put `return False` **inside** the loop (on the first failure) and `return True` **after** the loop. An empty list returns `True`.

---

## Quiz bank

Questions to be quizzed on later:

- [ ] **List operators:** the six expressions above. Which return `True`?

> [!success]- Solution
> `True`: `len([1, 2, 3]) == len(['a', 'b', 'c'])`, `len('mom') in [1, 2, 3]`, and `int('3') in [len('a'), len('ab'), len('abc')]`.
> `False`: `'a' in ['mom', 'dad']` and `'3' in [1, 2, 3]` (string vs int).
> `TypeError`: `[1, 2, 3] in len('mom')` (`3` is an int, not a container).

- [ ] **Aliasing:** output of the `repeat_list` / `repeat_string` code, and why?

> [!success]- Solution
> `position` and `double_position` are both doubled (8 items): they're aliases of one list, and `extend` mutates it in place. `count` and `double_count` are both still `'123456789'`: strings are immutable, so `x += x` builds a new string and rebinds only the local `x`.

- [ ] **Debugging:** find the 3 bugs in the original `replace_negatives`.

> [!success]- Solution
> 1. Uses `list` (the built-in type) instead of the parameter `l` → `TypeError`.
> 2. Mixes tabs and spaces → `TabError`.
> 3. Missing `return l` → returns `None`.

- [ ] **Loops:** what's wrong with `for i in lst: lst[i] % num`?

> [!success]- Solution
> `i` is a **value**, not an index. For `[8, 12, 64]`, the first `i` is $8$, so `lst[8]` raises `IndexError`. Use `i % num` directly (or loop over `range(len(lst))`).

- [ ] **Self-test:** `repeat_list` with `x = x + x`: does the caller's list change?

> [!success]- Solution
> No. `x + x` creates a **new** list, and `x = ...` rebinds only the local name. The caller's list is unchanged.

---

<!-- Add new topics above the Quiz bank -->