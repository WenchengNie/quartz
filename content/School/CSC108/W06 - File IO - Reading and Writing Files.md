---
course: CSC108
topic: File I/O
tags:
  - csc108
  - python
  - files
week: W06
---

# File I/O – Reading and Writing Files

## Opening files

- `open(name, 'r')` → read; `open(name, 'w')` → write (**erases** the file first); `'a'` → append.
- Use `with open(...) as f:` so the file is closed automatically.

## Iterating over lines

- `for line in f:` gives one line at a time, **including the trailing `'\n'`**.
- `line.split()` (no argument) splits on any whitespace and drops the `'\n'` automatically.
- `line.strip()` removes leading/trailing whitespace (including `'\n'`).

## Common gotchas

1. **Blank lines** → `''.split()` is `[]`, so `[]...[0]` raises `IndexError`. Guard with `if line.strip():` (or check `len(words) >= 2`).
2. **Middle names** → for `"Mary Ann Smith"`, `split()[1]` is `"Ann"`, not the last name. Use `[0]` for first and `[-1]` for last.
3. `write()` does **not** add a newline — add `'\n'` yourself.
4. `write()` only accepts `str` (convert numbers with `str()`).

## Doctests and file functions

- Functions that return `None` and only write files are hard to doctest; a doctest example must show the expected printed/returned output exactly.
- A docstring with **no `>>>` lines** runs 0 tests – doctest won't report anything.
- Typical pattern: call the function, then open the output file and check its contents:

```python
>>> split_names('names.txt')
>>> open('first.txt').read()
'Ada\nAlan\n'
```

- If a doctest shows an `IndexError`, look for blank or one-word lines in the input file.

## Example – safe version

```python
def split_names(filename: str) -> None:
    first = []
    last = []
    with open(filename) as inf:
        for line in inf:
            words = line.split()
            if len(words) >= 2:
                first.append(words[0])
                last.append(words[-1])
    with open('first.txt', 'w') as outf:
        for name in first:
            outf.write(name + '\n')
    with open('last.txt', 'w') as outf:
        for name in last:
            outf.write(name + '\n')
```

---

## Reading methods

| Method | Returns |
|---|---|
| `f.read()` | whole file as one `str` |
| `f.readline()` | next line as `str` (with `'\n'`); `''` at end of file |
| `f.readlines()` | `list[str]` of all remaining lines |
| `for line in f:` | one line at a time (best for big files) |

- These all **continue from where the last read stopped**. Calling `f.readline()` once before a `for` loop **skips a header line**.
- Always use `with open(...)`. A bare `file = open('hello.txt')` is never closed.

## Pattern: collect all words in a file

```python
def obtain_song(filename: str) -> list[str]:
    """Return a list of all the words in the file <filename>."""
    words = []                      # NOT [str]
    with open(filename) as f:
        for line in f:
            words.extend(line.split())
    return words
```

> [!bug] From lecture code
> `l = [str]` makes a list whose first element is the **type** `str`. Start with an empty list `[]`.

## Pattern: find the max while reading (skip a header)

```python
def highest_rated(filename: str) -> str:
    """Return the band with the highest rating. On a tie, return the first one found.
    The file's first line is a header; each other line is: band rating
    """
    with open(filename) as f:
        f.readline()                # skip header
        best_rating = -1
        best_band = ''
        for line in f:
            words = line.split()
            score = int(words[1])   # split() gives strings, so convert
            if score > best_rating: # strict > keeps the FIRST on ties
                best_rating = score # ← easy to forget
                best_band = words[0]
    return best_band
```

> [!bug] From lecture code
> The original never updated `rating = score`, so it returned the **last** band with a positive score instead of the highest.
> Also: start `best_rating` below any possible score (or use the first line's score), in case ratings can be $0$.

## Quiz bank

- [ ] What does `f.readline()` return at the end of a file?

> [!success]- Solution
> The empty string `''`. (A blank line in the middle of a file returns `'\n'`, not `''`.)

- [ ] Why does `l = [str]` give the wrong answer in `obtain_song`?

> [!success]- Solution
> `[str]` is a list whose first element is the **type** `str`, not an empty list. The returned list starts with `<class 'str'>` before the real words. Start with `[]`.

- [ ] `>` vs `>=` in `highest_rated`: which one returns the first band on a tie?

> [!success]- Solution
> `>`. A tied score isn't strictly greater, so the first band is kept. `>=` would replace it with each later tied band, returning the **last** one.

- [ ] What happens in `split_names` if the file has a blank line?

> [!success]- Solution
> In the unguarded version, `''.split()` is `[]`, so `words[0]` raises `IndexError`. The safe version skips the line because of `if len(words) >= 2:`.
