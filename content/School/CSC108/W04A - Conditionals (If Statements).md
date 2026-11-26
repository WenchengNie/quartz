---
course: CSC108
lecture: W04A
date: 2026-09-30
tags:
  - csc108
  - conditionals
  - tt2
week: W04A
---
# W04A — Conditionals (If Statements)

> [!info] On Test 2: **Yes**

## Definition
An **if-statement** is a *control structure* that runs a block of code only when a **condition** (predicate) is `True`. ^3c42e3

```python
if <cond>:
    <code run when cond is True>
```
Indentation matters: only the code indented under the `if` belongs to it.

## The forms
| Form | Runs |
|---|---|
| `if` | the block only if the condition is True |
| `if / else` | exactly one of the two blocks |
| `if / elif ... elif` | the **first** block whose condition is True, or **nothing** |
| `if / elif ... / else` | exactly one block; `else` catches everything left over |

Python checks `elif` conditions top to bottom and stops at the first True one.

## Key gotchas
- **Order matters with `return`.** The first `return` reached ends the function.
  ```python
  def bar(x):
      if x > 0:
          return "Positive"
      if x > 10 ** 5:          # never reached for big x
          return "Large positive"
  
  bar(10 ** 6)   # 'Positive'
  ```
  With `print` instead of `return`, *both* lines print, and the function returns `None`.
- **Variables defined only inside an `if` may not exist.**
  ```python
  if False:
      ans = 0
  ans        # NameError: name 'ans' is not defined
  ```
  The same happens with an `if/elif` chain where no condition is True. Fix: add an `else`, or set a default before the `if`.
- `x = 1 / 1` gives `1.0`, a `float`, so `type(x) is int` is `False`.

## Worked examples

### Return the longer of two strings
```python
def longer(s1: str, s2: str) -> str:
    """Return the longer of s1 and s2. If they are the same length, return s1."""
    if len(s1) >= len(s2):
        return s1
    else:
        return s2

longer('cat', 'horse')   # 'horse'
longer('dog', 'cat')     # 'dog'  (tie, so the first one)
```

### Check the strictest condition first
Rule: an applicant with $\text{average} \ge \text{cutoff} + 5$ gets a scholarship, $\text{average} \ge \text{cutoff}$ gets accepted, anyone else is rejected.

```python
def admission(average: float, cutoff: float) -> str:
    if average >= cutoff + 5:
        return "accept with scholarship"
    elif average >= cutoff:
        return "accept"
    else:
        return "reject"

admission(90, 80)   # 'accept with scholarship'
admission(82, 80)   # 'accept'
admission(70, 80)   # 'reject'
```
Why this order: if `average >= cutoff` came first, `admission(90, 80)` would return `"accept"` and never reach the scholarship branch, since every scholarship average also passes the looser check. If you want `"accept"` listed first, its condition needs an upper bound: `cutoff <= average < cutoff + 5`.

Related: [[W02 - Logic, Functions, Scope, Design Recipe|Logic, Functions, Scope, Design Recipe]], [[W07A - Refactoring|Refactoring]]