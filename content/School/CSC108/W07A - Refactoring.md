---
course: CSC108
lecture: W07A
date: 2026-10-21
tags:
  - csc108
  - refactoring
  - booleans
  - tt2
week: W07A
---
# W07A — Refactoring

> [!info] On Test 2: **Yes**. Both the review deck (Q5) and the mock test (Q12) have a refactoring question.

## Definitions
- **Factoring**: breaking a complex problem into parts that are easier to understand, write, and maintain.
- **Refactoring**: restructuring existing code **without changing its external behaviour**.

## Assignment shortcuts
`x += y` means `x = x + y`. The same goes for `-=`, `*=`, `/=`, `%=`.
> [!warning] For lists, `xs += [5]` **mutates** the list in place, but `xs = xs + [5]` makes a **new** list. They behave differently with aliases. See [[W05B - Lists|Lists]].

## The four standard refactors
1. **Nested ifs → one `and`**
   ```python
   if x > 1:
       if y > 2:
           if z > 3:
               print("hello")
   # becomes
   if x > 1 and y > 2 and z > 3:
       print("hello")
   ```
2. **Returning True/False → return the condition**
   ```python
   if x > 0:
       return True
   else:
       return False
   # becomes
   return x > 0
   ```
3. **Assigning True/False → assign the condition**: `y = x > 0`
4. **Don't compare with `True`**: `if x == True:` becomes `if x:`. And `if x == False:` becomes `if not x:`.

## `elif` vs. a separate `if`
- `if x > 0: ... elif x <= 0 and x % 2 == 0:` is **the same as** `elif x % 2 == 0:`. Reaching the `elif` already means `x <= 0`, so that check is redundant.
- With two **separate** `if`s, it's **not** the same: the second `if` is independent. For `x = 2`, one version prints `A`, the other prints `A` and `B`.

## Tasks
**Task 1: free shipping**
```python
def check_free_shipping(order_total: float, membership_status: str,
                        location: str) -> str:
    if order_total > 50.0 and membership_status == "premium" \
            and location == "domestic":
        return "Free shipping"
    return "No free shipping"
```
**Task 3: graduation status**
```python
def grad_status(gpa: float, credits: int, completed: bool) -> str:
    graduate = credits >= 20 and completed
    if graduate and gpa >= 2.0:
        return "graduates with honors"
    elif graduate:
        return "graduate"
    elif gpa < 1.5:
        return "on probation"
    else:
        return "good standing"
```

## Test-style refactors (worked answers)
**Review Q5: `category(age, member)`.** `member` never changes the result for juniors or seniors, and `member or not member` is always True:
```python
def category(age: int, member: bool) -> str:
    if age < 18:
        return "junior"
    elif age < 65 and member:
        return "adult"
    elif age < 65:
        return "guest"
    else:
        return "senior"
```
**Mock Q12(a):** `return score >= 50`
**Mock Q12(b):**
```python
if temp > 20 and sunny and not windy:
    print("beach day")
```
**MCQ Q12:** every path of `is_amazing` returns `True` → **C. `return True`**.
**MCQ Q13:** `panda(x, y)` returns True when (`0 < x < 2`) **or** (`x > 0` and `y == 5`) → **B**. (A is wrong because `x` might be a float such as `1.5`.)

Related: [[W04A - Conditionals (If Statements)|Conditionals (If Statements)]], [[CSC108 Test 2 Study Guide]]
