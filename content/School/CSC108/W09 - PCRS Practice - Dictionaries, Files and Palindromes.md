---
course: CSC108
lecture: PCRS
date: 2026-11-15
tags:
  - csc108
  - pcrs
  - dictionaries
  - practice
  - after-tt2
week: W09
---
# PCRS Practice — Dictionaries, Files and Palindromes

> [!info] PCRS practice solutions (worked through with Gemini and checked). They reuse ideas from [[W07C - Dictionaries|Dictionaries]], [[W06A - File IO - Reading and Parsing|File IO - Reading and Parsing]] and [[W04C - Nested Loops (Loop Practice)|Nested Loops (Loop Practice)]].

## 1. Count accumulator: `get_quantities`
Count how many times each food appears across all the tables.
```python
for foods in table_to_foods.values():
    for food in foods:
        if food in food_to_quantity:
            food_to_quantity[food] += 1
        else:
            food_to_quantity[food] = 1
```
This is the standard **dict counting pattern**: if the key exists, increase it by 1. Otherwise, start it at 1. See [[W07C - Dictionaries|Dictionaries]].

## 2. Splitting a file into words: `get_words`
```python
def get_words(training_text: TextIO) -> list[str]:
    return training_text.read().split()
```
`.split()` with no argument splits on **any** whitespace (spaces, newlines, tabs) and drops empty strings. See [[W06A - File IO - Reading and Parsing|File IO - Reading and Parsing]].

## 3. Nested loops over indices: `palindrome_pairs`
Return every pair of different indices `(i, j)` where `words[i] + words[j]` is a palindrome.
```python
def palindrome_pairs(words: list[str]) -> list[tuple[int, int]]:
    pairs = []
    for i in range(len(words)):
        for j in range(len(words)):
            if i != j:
                combined = words[i] + words[j]
                if combined == combined[::-1]:
                    pairs.append((i, j))
    return pairs
```
- `s[::-1]` reverses a string.
- Order matters: `(i, j)` and `(j, i)` are checked separately, because `a + b` is a different string from `b + a`.
- Loop over `range(len(...))` here, because you need the **indices**, not the values. See [[W04C - Nested Loops (Loop Practice)|Nested Loops (Loop Practice)]].

## 4. Mutation test
See [[W09 - Testing with unittest and Mutation|Testing with unittest and Mutation]].
