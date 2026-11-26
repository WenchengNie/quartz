---
course: CSC108
lecture: W06B
date: 2026-10-16
tags:
  - csc108
  - file-io
  - csv
  - tt2
week: W06B
---
# W06B — CSVs

> [!info] On Test 2: **Yes**

## Definition
A **CSV** (comma-separated values) file is a text file of rows, with the items in each row separated by commas. A **TSV** file uses tabs (`"\t"`) instead.
```
A0,A1,A2,A3
B0,B1,B2,B3
```

## Reading: `strip` then `split`
```python
line = "ana,80,95\n"
line.split(",")            # ['ana', '80', '95\n']   <- \n stuck to the last item
line.strip().split(",")    # ['ana', '80', '95']     <- correct (Mock Q6 b)
line.split(", ")           # ['ana,80,95\n']          <- wrong separator
```
Splitting a line into pieces is called **tokenizing**. All the pieces are `str`, so convert them with `int(...)` or `float(...)`.

## Headers
Some CSVs start with a **header** line that names the columns. Skip it by **reading once** before the loop:
```python
with open("data.csv") as csv_file:
    csv_file.readline()          # skip the header
    for line in csv_file:
        fields = line.strip().split(",")
```

## Writing: `join`
```python
",".join(["Alice", "Bob", "Carol"])   # 'Alice,Bob,Carol'
```
`join` only accepts **strings**, so convert numbers with `str()` first. It doesn't add a `\n`, so add it yourself.

## Lecture tasks
**Task 1: highest-rated band** (the file has the header `Band,Rating,Plays`; on a tie, keep the first one)
```python
def highest_rated_band(file_name: str) -> str:
    best_name = ""
    best_rating = -1
    with open(file_name) as f:
        f.readline()
        for line in f:
            name, rating, plays = line.strip().split(",")
            if int(rating) > best_rating:      # strict > keeps the earliest on a tie
                best_rating = int(rating)
                best_name = name
    return best_name
```
**Task 2: three lists → a CSV with three columns**
```python
def lists_to_csv(xs: list, ys: list, zs: list, file_name: str) -> None:
    with open(file_name, "w") as f:
        for i in range(len(xs)):
            f.write(",".join([str(xs[i]), str(ys[i]), str(zs[i])]) + "\n")
```
**Task 3: fix `update_cell`.** The bugs:
- `open("filename")` opens a file literally called "filename". It should be `open(filename)`.
- `readlines()` returns **strings**, and strings can't be assigned to by index. Split each line into a list first.
- The file was closed, then `csv.writer(f)` tried to use it. Reopen with `"w"` to write.

**Predict the output:** `line.strip().split(",")` on `Alice,23` / `Bob,45` / `Charlie,34` prints
```
['Alice', '23']
['Bob', '45']
['Charlie', '34']
```
The numbers are **still strings**.

> The `csv` module exists (`import csv`), but on the test you'll use plain file and string methods.

Related: [[File IO - Reading and Parsing]], [[File IO - Writing and Manipulations]]
