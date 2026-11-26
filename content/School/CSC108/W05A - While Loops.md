---
course: CSC108
lecture: W05A
date: 2026-10-07
tags:
  - csc108
  - loops
  - while-loop
  - tt2
week: W05A
---
# W05A — While Loops

> [!info] On Test 2: **Yes**

## Definition
A **while loop** repeats its body as long as a condition is True. The condition is checked **before every iteration**.
```python
x = 0
while x < 10:
    x += 1
x    # 10
```
- `while True:` without a `break` is an **infinite loop**. Stop it with Ctrl + C.
- Use `while` when the **number of iterations isn't known in advance** (user input, convergence).
- **Every `for` loop can be rewritten as a `while` loop**, but not always the other way round.

## Converting a for loop
```python
for x in "abcdef":
    print(x)
# is the same as
i = 0
while i < len("abcdef"):
    print("abcdef"[i])
    i += 1
```
Three parts to get right: **initialise** the index, the **condition**, and the **update**. If you forget the update, the loop never ends.

## `break` and `continue`
- `break` exits the loop immediately. `while True: ... break` is the convention.
- These keywords can make code hard to read. **You may be asked to write loops without `break`/`continue`**, so practise putting the stopping condition in the `while` itself.

## Input loops (likely on the test; see Mock Q11)
```python
def echo() -> None:
    text = input()
    while text != "Stop it!":
        print(text)
        text = input()
```
Pattern: **ask once before the loop, then ask again at the end of the body.**

## Numerical tasks
Approximate the derivative with the difference quotient
$$f'(x) = \lim_{h \to 0}\frac{f(x+h) - f(x)}{h}$$
for $f(x) = \sqrt{6 - x}$ at $x = 2$. The exact value is $f'(2) = -\dfrac{1}{2\sqrt{4}} = -0.25$.
- With a **for** loop over $h = 1, 0.1, \ldots, 10^{-7}$, you may run more or fewer iterations than you need.
- With a **while** loop, shrink $h$ until two successive estimates differ by less than $10^{-4}$ (accurate to 4 decimal places).

Extension: find $\sqrt{6}$ by solving $x^2 - 6 = 0$ with the same idea (Newton's method).

## Other tasks
- Guessing game: prompt until the guess matches, print `Too high` / `Too low`, and return the number of guesses. For a random secret, use `random.randint(a, b)`.

Related: [[W04B - For Loops over Strings|For Loops over Strings]], [[CSC108 Test 2 Study Guide]]
