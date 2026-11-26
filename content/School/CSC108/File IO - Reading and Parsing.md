---
course: CSC108
lecture: W06A
date: 2026-10-14
tags:
  - csc108
  - file-io
  - textio
  - tt2
week: W06A
---
# W06A — File I/O (Reading and Parsing)

> [!info] On Test 2: **Yes**

## Why files?
- A **file** is data in persistent storage. A **text file** holds human-readable characters.
- Program variables live in **RAM**, which is fast but temporary and limited. Files live on **disk**, so they survive a reboot and can hold more data than fits in RAM.
- Memory hierarchy, from fast/small to slow/large: CPU cache (KB–MB) → RAM (GB) → disk (GB–TB) → cloud (PB).

## Newlines
`hello.txt` actually contains `'What a\n'`, `'wonderful\n'`, `'hello world.\n'`. The `\n` is a newline character. **Every line you read keeps its `\n`** (the last line might not have one).

## Opening
```python
file = open("filename.ext", "r")   # modes: "r" read (default), "w" write, "a" append
```
Python looks for the file in the **directory you ran Python from**. A wrong path gives `FileNotFoundError`.

## Reading methods (from the API sheet)
| Call | Returns |
|---|---|
| `f.readline()` | the next line **with** `\n`; `''` at the end of the file |
| `f.readlines()` | a list of the **remaining** lines, each keeping `\n` |
| `f.read()` | the rest of the file as one string |
| `for line in f:` | loops over the remaining lines one at a time |

```python
f = open("hello.txt")
f.readline()   # 'What a\n'
f.readline()   # 'wonderful\n'
f.readline()   # 'hello world.\n'
f.readline()   # ''   <- end of file, and it keeps returning ''
```

## The file pointer
A file object remembers **where it is**. Every read moves it forward.
- After one `for line in f:` loop, a second loop prints **nothing**, because the pointer is already at the end.
- `f.readlines()` followed by `for line in f:` → the loop runs **0 times** (MCQ Q8: the answer is *Nothing*).
- `f.readline()` followed by `for line in f:` → the first line is **skipped**. This is how you skip a header (MCQ Q9).

`print(line)` shows an extra blank line because the line already ends in `\n` and `print` adds another one. Use `line.strip()` or `print(line, end="")`.

## Closing / `with`
```python
with open("hello.txt", "r") as file:
    for line in file:
        print(line)
# the file closes automatically here (the "pythonic" way)
```
Without `with`, call `file.close()` yourself.

## Everything you read is a `str`
Convert when you need numbers:
```python
with open("numbers.dat") as f:
    ans = []
    for line in f:
        ans.append(int(line))    # int() ignores surrounding whitespace and \n
```

## Lecture tasks
```python
def count_a(filename: str) -> int:
    count = 0
    with open(filename) as f:
        for line in f:
            count += line.count("a")
    return count

def num_empty_lines(filename: str) -> int:
    count = 0
    with open(filename) as f:
        for line in f:
            if line.strip() == "":
                count += 1
    return count

def sum_file(filename: str) -> int:
    total = 0
    with open(filename) as f:
        for line in f:
            total += int(line)
    return total
```
Task 4 `obtain_song(filename)`: `line.split()` (with no argument, it splits on any whitespace) and extend a word list. Then `clean_song(content)` **mutates** the list (it returns `None`) to keep only the `isalpha()` characters of each word.

> [!tip] On the test, functions often take an **open file** (`TextIO`), not a filename. Then you **don't** call `open` again. See [[CSC108 Test 2 Study Guide]].

Related: [[CSVs]], [[File IO - Writing and Manipulations]]
