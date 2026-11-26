---
course: CSC108
type: test-prep
test: Term Test 2
date: 2026-11-12
tags: [csc108, tt2, study-guide]
---
# CSC108 Term Test 2 — Study Guide

## Logistics (Piazza @308 and the W10B review slides)
- **When:** Thursday, **Nov 12, 2026**. Be in the room at **7:00 PM**; the test starts at **7:10 PM** and lasts **90 min**.
- **Where:** IB 110 for surnames **A–R**, IB 120 for **S–Z** (inclusive).
- **Bring:** your **T-card**, pens/pencils, and water. Jackets and bags go at the front. **No aids, no calculators.**
- No clarification questions during the test. If something is ambiguous, **write your assumption in the margin**.
- **Format:** about 20 pages (cover + **3-page API sheet** + 2 pages of scrap paper). Multiple choice (including **"select all"**), short answer, fill-in-the-blank, and programming.
- **Expect more code-writing than on Test 1**, plus some code tracing.

## Coverage
| ✅ On the test | Note |
|---|---|
| Conditionals | [[W04A - Conditionals (If Statements)\|Conditionals (If Statements)]] |
| For loops | [[W04B - For Loops over Strings\|For Loops over Strings]] |
| Practice with loops | [[W04C - Nested Loops (Loop Practice)\|Nested Loops (Loop Practice)]] |
| While loops | [[W05A - While Loops\|While Loops]] |
| Lists | [[W05B - Lists\|Lists]] |
| List practice (nested lists) | [[W07B - List Practice (Nested Lists)\|List Practice (Nested Lists)]] |
| File I/O (reading and parsing) | [[W06A - File IO - Reading and Parsing\|File IO - Reading and Parsing]] |
| File I/O (writing and manipulations) | [[W06C - File IO - Writing and Manipulations\|File IO - Writing and Manipulations]] |
| CSVs | [[W06B - CSVs\|CSVs]] |
| Refactoring | [[W07A - Refactoring\|Refactoring]] |

| ❌ Excluded (only these two) |
|---|
| [[W07C - Dictionaries\|Dictionaries]] |
| [[W08A - Tuples and Nested Dictionaries\|Tuples and Nested Dictionaries]] |

Week 1–3 material ([[W01 - Intro, Python as a Calculator, Basic Functions|Intro, Python as a Calculator, Basic Functions]], [[W02 - Logic, Functions, Scope, Design Recipe|Logic, Functions, Scope, Design Recipe]], [[W03 - Strings, Indexing, Slicing, String Methods|Strings, Indexing, Slicing, String Methods]]) isn't listed, but everything above depends on it.

## The API sheet you'll get
**Builtins:** `chr`, `enumerate`, `input`, `int`, `len`, `max`, `min`, `ord`, `print(sep, end)`, `range`
**Files (`TextIO`):** `open(name, mode)` with `'r'`/`'w'`/`'a'`, `close`, `read`, `readline`, `readlines`, `write`
**list:** `in`, `append`, `copy`, `count`, `extend`, `index`, `insert`, `pop`, `remove`, `reverse`, `sort(reverse=False)`
**str:** `in`, `str()`, `capitalize`, `count`, `find`, `index`, `isalpha`, `isdigit`, `islower`, `isupper`, `join`, `lower`, `lstrip`, `replace`, `rstrip`, `split`, `strip`, `upper`
(There are **no dict methods** on it, which matches dictionaries being excluded.)

## Top traps
1. `L.append(x)`, `L.sort()`, `L.reverse()` return **`None`**. Never write `L = L.sort()`.
2. `ys = xs` is an **alias**, not a copy. `xs += [1]` mutates the list; `xs = xs + [1]` makes a new one.
3. Lines read from a file keep their **`\n`**. Use `strip()` **before** `split(',')`.
4. The file pointer only moves forward. `readlines()` followed by `for line in f` gives **nothing**, and `readline()` followed by `for` **skips the first line**.
5. If the function receives an **open file** (`TextIO`), **don't call `open` again**.
6. `write` only takes a `str` and **doesn't add `\n`**.
7. `range(a, b)` stops at **b − 1**. `range(len(s) - 1)` misses the last index.
8. In a "check all" loop, **don't `return True` inside the loop**. Return `False` on the first failure and `True` after the loop.
9. "Don't mutate the parameters": build a new list, or use `.copy()` / slicing.
10. `while` loops need an **update** step, or they never end.

---
## Practice: W10B review deck (answers)
**Q1: `can_pay_with_two_coins`**: the doctests give `True`, **`False`**, **`False`**.
```python
def can_pay_with_two_coins(denoms: list[int], amount: int) -> bool:
    for i in range(len(denoms)):
        for j in range(i + 1, len(denoms)):     # j > i, so each coin is used once
            if denoms[i] + denoms[j] == amount:
                return True
    return False
```
**Q2: aliasing**: `a: [5, [1, 2, 9], 3]` / `nested: [[5, [1, 2, 9], 3], 'world']` / `a[1][1]: 2`

**Q3: `read_courses`**
```python
def read_courses(f: TextIO, school: str) -> list[str]:
    codes = []
    current = ''
    for line in f:
        parts = line.split()
        if parts[0] == 'SCHOOL':
            current = line.strip()[len('SCHOOL '):]   # school names can have spaces
        elif current == school:
            codes.append(parts[1])
    return codes
```
**Q4: `write_passing`**
```python
def write_passing(grades: TextIO, output: TextIO) -> None:
    grades.readline()                               # skip the header
    for line in grades:
        fields = line.strip().split(',')
        total = 0
        for mark in fields[1:]:
            total += int(mark)
        avg = total / (len(fields) - 1)
        if avg >= 50:
            output.write(fields[0] + ',' + str(avg) + '\n')
```
**Q5: refactor `category`**: see [[W07A - Refactoring|Refactoring]].

## Practice: MCQ review (answers)
| Q | Ans | Why |
|---|---|---|
| 1 | **B** | x = 0 skips the first `if`; `0 != 0 or 20 == 100` is False → else → "Yeehaw" |
| 2 | **C** | the return type should be `bool`, and the description is backwards |
| 3 | **D** | `"02"` after the 2nd iteration |
| 4 | **B** | `range(1, 10, 3)` → 1, 4, 7 |
| 5 | **B** | 'e' and 'o' → 2 |
| 6 | **D** | `range(len(s) - 1)` never checks the last index ('e') |
| 7 | **E** | all three cases give the correct GCF (it's slow, but correct) |
| 8 | **A** | `readlines()` used up the file → nothing prints |
| 9 | **D** | the first line is skipped → prints `Bob`, `Charlie` |
| 10 | **C** | two `\n` |
| 11 | **D** | `"a"` creates the file if needed **and** appends |
| 12 | **C** | every path returns True |
| 13 | **B** | `0 < x < 2 or (x > 0 and y == 5)` |
| 14 | **A, D** | `[1,2] < [1,3]` ✓, `[] < [0]` ✓; `[2] in [1,2,3]` ✗, `'a' in ['abc']` ✗, `len([[]]) == 1` |

## Practice: mock test (Fall 2024 T2, adapted)
**MCQ:** Q1 **c (5)** · Q2 **d (5)** · Q3 **b** · Q4 **a, c** · Q5 **c** (shadows the built-in `max`) · Q6 **b** · Q7 **c** · Q8 **a** (a list with an even number returns True too early)

**Q9: `get_valid_sublists`** (don't mutate)
```python
def get_valid_sublists(L: list[list[int]], threshold: int) -> list[list[int]]:
    result = []
    for sub in L:
        all_above = True
        for v in sub:
            if v <= threshold:
                all_above = False
        if all_above:
            result.append(sub.copy())
    return result
```
**Q10: `group_by_length`** (no `max`)
```python
def group_by_length(words: list[str]) -> list[list[str]]:
    longest = 0
    for w in words:
        if len(w) > longest:
            longest = len(w)
    result = []
    for i in range(longest + 1):
        result.append([])
    for w in words:
        result[len(w)].append(w)
    return result
```
**Q11: `acquire_valid_number`**
```python
def acquire_valid_number(low: float, high: float) -> float:
    n = float(input('Enter a number: '))
    while not (low <= n <= high):
        n = float(input('Invalid! Try again: '))
    return n
```
**Q12:** (a) `return score >= 50` · (b) `if temp > 20 and sunny and not windy: print("beach day")`

**Q13: debugging `confidential_info_filter`**
| Line | Verdict |
|---|---|
| 1 `employee_records = open(...)` | **REMOVE** (it's already an open file) |
| 2 `sanitized_records = open(..., 'w')` | **REMOVE** |
| 3 `line = employee_records.readline()` | OK |
| 4 `while line.strip():` | OK (stops at a blank line) |
| 5 `line = employee_records.readline()` | **CHANGE** → `words = line.split()` (as written, it skips a line) |
| 6 `for i in range(line):` | **CHANGE** → `for i in range(len(words)):` |
| 7 `if line[i] in sensitive_info:` | **CHANGE** → `if words[i] in sensitive_info:` |
| 8 `line[i] = 'CONFIDENTIAL'` | **CHANGE** → `words[i] = 'CONFIDENTIAL'` (strings are immutable) |
| 9 `sanitized_records.write(" ".join(words) + "\n")` | OK |
| 10 `line = employee_records.readline()` | OK |

**Q14: `number_lines`**
```python
def number_lines(source: TextIO, destination: TextIO) -> None:
    n = 1
    for line in source:
        if line.strip() != '':
            destination.write(str(n) + ' ' + line.strip() + '\n')
            n += 1
```

> [!check] I ran every coding answer on this page against the examples in its docstring, and they all pass.

## More practice on Quercus
`2024_Test2.pdf` (read the note on page 1 first; it covers different topics), past exams at https://hdl.handle.net/1807/142339 (UofT login), PCRS, and the practicals.
