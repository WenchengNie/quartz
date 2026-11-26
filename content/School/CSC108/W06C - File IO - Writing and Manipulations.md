---
course: CSC108
lecture: W06C
date: 2026-10-19
tags:
  - csc108
  - file-io
  - writing
  - tt2
week: W06C
---
# W06C — File I/O (Writing and Manipulations)

> [!info] On Test 2: **Yes**

## Modes
| Mode | If the file exists | If it doesn't |
|---|---|---|
| `"r"` (the default) | reads from the start | `FileNotFoundError` |
| `"w"` | **erases the contents**, then writes | creates it |
| `"a"` | writes at the **end** | creates it |

MCQ Q11: `"a"` creates the file if it's missing **and** appends → **both B and C**.

## Writing
```python
with open("message.txt", "w") as f:
    f.write("Hello World.\n")             # a single string; NO newline is added for you
    f.writelines(["Hello\n", "World\n"])  # a list of strings, also with no newlines added
```
- `f.write(s)` returns the number of characters written. You'll usually ignore that.
- `write` only accepts a **`str`**: use `f.write(str(5) + "\n")`, not `f.write(5)`.
- MCQ Q10: writing `"First Line\n"` and then `"Second Line\n"` gives a file with **2** newline characters.

## Lecture tasks
**Task 1: digit frequencies** (one digit per line in the input; output `d count` for d = 0..9)
```python
def freq(in_filename: str, out_filename: str) -> None:
    counts = [0] * 10
    with open(in_filename) as f:
        for line in f:
            if line.strip() != "":
                counts[int(line)] += 1
    with open(out_filename, "w") as out:
        for d in range(10):
            out.write(str(d) + " " + str(counts[d]) + "\n")
```
This uses a list as a counter: **index = digit**.

**Task 2: split names** into `first.txt` and `last.txt`
```python
def split_names(filename: str) -> None:
    with open(filename) as f, open("first.txt", "w") as first, \
         open("last.txt", "w") as last:
        for line in f:
            parts = line.split()
            if len(parts) == 2:
                first.write(parts[0] + "\n")
                last.write(parts[1] + "\n")
```
**Task 3:** keep *adding* to the files on every call → change `"w"` to `"a"`.

**Task 4: `midterm_attendance(students)`**: append `first last utorid` lines to `attendance.txt` without duplicates. Open in `"a"` mode so the file is created if needed. To check for duplicates, first read the file's existing utorIDs (only if it exists), then skip students already recorded.

Related: [[W06A - File IO - Reading and Parsing|File IO - Reading and Parsing]], [[W06B - CSVs|CSVs]]
