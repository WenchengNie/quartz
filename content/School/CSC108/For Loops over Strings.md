---
course: CSC108
lecture: W04B
date: 2026-10-02
tags:
  - csc108
  - loops
  - for-loop
  - strings
  - tt2
week: W04B
---
# W04B — For Loops over Strings

> [!info] On Test 2: **Yes**

## Definitions
- **Loop**: a control structure that repeats the code that belongs to it.
- **For loop**: given a *collection*, runs the body once for each item, in order.

```python
for x in "abcd":
    print(x)      # a, b, c, d (one per line)
x                 # 'd'  <- the loop variable keeps its last value
```

## Accumulator pattern
An **accumulator** is a variable that builds up an aggregate value across iterations.
```python
acc = ""
for x in "abcd":
    acc = acc + x
    print(acc)    # a, ab, abc, abcd
```
Start values: `0` for sums and counts, `""` for building strings, `[]` for building lists.

## `range`
`range([start,] stop[, step])` gives integers from `start` up to **`stop - 1`**, like slicing.
```python
word = "abcde"
for i in range(0, len(word)):   # i = 0, 1, 2, 3, 4
    print(word[i])
```
Loop **over indices** (`range(len(s))`) when you need the position: neighbours, swapping, or returning an index.

## Max/min pattern
Keep a "best so far" variable, start it at the first item, and update it when you find something better.
```python
def largest_char(s: str) -> str:
    """
    Precondition: s != ''
    """
    biggest = s[0]
    for ch in s:
        if ch > biggest:
            biggest = ch
    return biggest
```

## Lecture tasks
1. `has_vowel(s)`: return True if any character is in `"aeiouAEIOU"` (use `in`, no string methods).
2. `generate_random_text(length)`: accumulate `random.choice("abcd")` until the string has `length` characters.
3. Index of the first non-vowel: loop `for i in range(len(s))` and return `i` at the first match; return `-1` after the loop if none.
4. Largest character without `max` (above).
5. Remove every copy of the largest character: find the largest, then build a new string from the characters that aren't equal to it.

Related: [[Nested Loops (Loop Practice)]], [[While Loops]]
