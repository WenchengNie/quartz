---
course: CSC108
lecture: W03A-W03C
date: 2026-09-23
tags:
  - csc108
  - strings
  - slicing
  - string-methods
  - tt1
week: W03
---
# W03 — Strings, Indexing & Slicing, String Methods (+ Test 1 Review)

> [!info] Test 1 material. String methods are still on the **Test 2 API sheet** and are used constantly in file and CSV questions.

## W03A — Strings
- A string (`str`) is anything in `'...'` or `"..."`: an **ordered collection of characters**. Use `"I'm here"` when the text contains an apostrophe.
- `+` **concatenates** and always creates a **new** string. `"3" + "7" → '37'`, and `3 + "7"` → **TypeError**.
- Conversions: `str(3)`, `int("7")`, `float("123.456")`. `int("hello")` → **ValueError**.
- Equality is exact: spaces count, and comparison is **case-sensitive**.
- **Ordering:** digits < uppercase < lowercase (`'9' < 'A' < 'a'`). Strings compare **lexicographically**, character by character, and a prefix comes first: `"a" < "aa"`, `"b" < "aa"` is False, `"aZ" < "aa"`.
- `ord('a') = 97`, `ord('A') = 65`, `ord('0') = 48`, `chr(97) = 'a'`. Lowercase − uppercase = 32.
- Escape characters: `\n` (newline) and `\t` (tab). A string is **stored** differently from how it's **printed**.
- `len("") = 0`. `in` checks for a **substring**: `"ow" in "hello world"` is False.

### Indexing and slicing
```python
x = "hello world"
x[0]          # 'h'
x[-1]         # 'd'   (x[-k] is x[len(x) - k])
x[len(x)]     # IndexError
```
`s[start:end:step]` runs from `start` up to but **not including** `end`. Slicing **never** raises an IndexError.

| `x = "0123456789"` | Result |
|---|---|
| `x[3:]` | `'3456789'` |
| `x[3:-1]` | `'345678'` |
| `x[0:-1:2]` | `'02468'` |
| `x[1:-3:3]` | `'14'` |
| `x[::-1]` | `'9876543210'` (reversed) |

Strings are **immutable**: `name[0:8] = ""` gives a **TypeError**.

Palindrome check: `return word == word[::-1]`.

Knowledge checks: `"this is Toronto" < "this is the 6"` → **True** (`'T'` < `'t'`). `int(len("zero") / ord("0"))` → `int(4 / 48)` → **0**.

## W03B — String methods
A **method** is a function that belongs to a type, called as `value.method(...)`. Use `help(str.find)` to read about one.

| Method | Note |
|---|---|
| `s.find(sub[, start[, end]])` | lowest index, or **-1** if not found |
| `s.index(sub)` | like `find`, but raises **ValueError** if not found |
| `s.capitalize()` | first letter upper, **the rest lower** (`"this Is a sEntence"` → `'This is a sentence'`) |
| `s.title()` | `'a tale of two cities'` → `'A Tale Of Two Cities'` |
| `s.upper()`, `s.lower()` | |
| `s.strip()`, `s.lstrip()`, `s.rstrip()` | remove whitespace |
| `s.replace(old, new)` | returns a **new** string |
| `s.split([sep])`, `sep.join(items)` | see [[CSVs]] |
| `s.count(sub)`, `s.isalpha()`, `s.isdigit()`, `s.islower()`, `s.isupper()` | |
| `s.center(width, fill)` | `'csc'.center(10, 'x')` → `'xxxcscxxxx'` |

`find` traces: `"hello world".find("world", 6) → 6`, `"hello hello".find("hello") → 0`, `.find("hello", 1) → 6`, `.find("hello", 1, 3) → -1`, `"Hello World".find("World", 0, 5) → -1`.

**f-strings:** `f"{x}ooo {y}ddd"` substitutes variables into a string.

## W03C — Test 1 review (Fall 2024 T1 questions, answered)
| Q | Answer |
|---|---|
| Q1 middle digit of a 3-digit `a` | **D**: both `(a // 10) % 10` and `(a % 100) // 10` work |
| Q2 cost is \$60 | **A** `plan == 'silver' and months >= 2` |
| Q3 True expressions | **A, B, D** |
| Q4 `s = print("csc"); print(type(s))` | **C** `<class 'NoneType'>` (print returns None) |
| Q5 `("We’re" + "Here")[4::2]` | **B** `'eee'` |
| Q7 globals after `hello(0, 1)` | **A** unchanged (5, 2, True); it returns `None` |
| Q8 | prints `5`, `1`, `25`, `9` |
| Q9 `mystery` | returns `str`: "Return s with its first n characters in uppercase." |
| Q10 | `return x > 100 or (x < 0 and y == 10)` |
| Q11 | `return CURRENT_YEAR - int(birth_date[:4])` |

Related: [[Logic, Functions, Scope, Design Recipe]], [[For Loops over Strings]]
