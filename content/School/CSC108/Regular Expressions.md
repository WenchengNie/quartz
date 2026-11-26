---
course: CSC108
lecture: W09-PCRS
date: 2026-11-15
tags:
  - csc108
  - regex
  - pcrs
  - after-tt2
week: W09
---
# W09 — Regular Expressions

> [!info] From the PCRS *Regular Expressions* exercises. Lecture: **Regex, Wed Nov 18 (Week 10A)**, with `regex_cheatsheet.pdf` on Quercus and interactive slides at https://engine14.github.io/regex/. Practical 9 (Regex) runs Nov 23–26. Not on Test 2.

Use `import re`. Write patterns as raw strings (`r'\w+'`) so Python doesn't treat the backslashes as escape characters.

## Special characters
| Symbol | Meaning |
|---|---|
| `.` | any single character (except a newline) |
| `*` | **0 or more** of what comes before it |
| `+` | **1 or more** of what comes before it |
| `?` | 0 or 1 (optional) |
| `\|` | or: `dog\|cat` matches `dog` or `cat` |
| `^` / `$` | start / end of the string |
| `[abc]`, `[A-Za-z]` | any one character from the set or range |
| `\w` | a word character (letter, digit, `_`) |
| `\d` | a digit |
| `\.` | a literal period (escaped) |

## Traps
- `'dog | cat'` with spaces matches `'dog '` or `' cat'`, because spaces are part of the pattern. Use `'dog|cat'`.
- A bare `.` matches **anything**. To match only a period, use `'\.'` or `'[.]'`. Inside `[ ]`, `.` is literal.
- `^` goes at the **start** and `$` at the **end**. `'$\w+^'` can never match.
- `*` and `+` need something before them, so `'**'` is an invalid pattern.

## Which patterns match the whole string `'Michael'`?
- ✅ `\w+`, `^\w+$`, `Michael`, `\w*`, `.*`, `M[i]chael`, `[A-Za-z]*`
- ✅ `Mm?i?ch.*e?`: `M`, then `m?` matches nothing, `i`, `ch`, `.*` matches `ael`, and `e?` matches nothing.
- ❌ `$\w+^` (anchors swapped), `**` and `*MATCH_ALL` (invalid), `M?` (only matches `M`)

## Functions
- `re.match(p, s)`: matches at the **start** of `s` only.
- `re.search(p, s)`: finds the first match **anywhere** in `s`.
- `re.fullmatch(p, s)`: the **whole** string must match.
- `re.findall(p, s)`: a list of all matches.


## Lecture: Regex (Nov 18)

> Slides are labelled "Lecture W10B". Cheat sheet: `regex_cheatsheet.pdf` on Quercus.

A **regular expression** is a sequence of characters that makes up a **search pattern**: phone numbers, emails, postal codes, valid variable names. Use it when you know the *shape* of what you want, not the exact text.

```python
import re
txt = "416-475-8283, 259-778-2868, 416-294-6744"
re.findall("416-[0-9]{3}-[0-9]{4}", txt)   # ['416-475-8283', '416-294-6744']
re.findall(r"416-\d{3}-\d{4}", txt)        # same thing
re.search("CSC108", "Today's topic in CSC108")  # a match object (truthy), or None
```

### Syntax from the slides
| Syntax | Meaning |
|---|---|
| `(...)` | capturing group (`findall` returns only the group's text) |
| `(?:...)` | non-capturing group |
| `*`, `+`, `?` | 0 or more, 1 or more, 0 or 1 |
| `*?` | 0 or more, **lazy** (as few as possible); plain `*` is greedy |
| `{3}`, `{1,2}`, `{3,}` | exactly 3, 1 to 2, 3 or more |
| `[A-Za-z]`, `[0-9]`, `[^abc]` | character class, or NOT these characters |
| `\d`, `\w`, `\s` | digit, word character (letter, digit, `_`), whitespace (`\D`, `\W`, `\S` are the opposites) |
| `^`, `---
course: CSC108
lecture: W09-PCRS
date: 2026-11-15
tags:
  - csc108
  - regex
  - pcrs
  - after-tt2
week: W09
---
# W09 — Regular Expressions

> [!info] From the PCRS *Regular Expressions* exercises. Lecture: **Regex, Wed Nov 18 (Week 10A)**, with `regex_cheatsheet.pdf` on Quercus and interactive slides at https://engine14.github.io/regex/. Practical 9 (Regex) runs Nov 23–26. Not on Test 2.

Use `import re`. Write patterns as raw strings (`r'\w+'`) so Python doesn't treat the backslashes as escape characters.

## Special characters
| Symbol | Meaning |
|---|---|
| `.` | any single character (except a newline) |
| `*` | **0 or more** of what comes before it |
| `+` | **1 or more** of what comes before it |
| `?` | 0 or 1 (optional) |
| `\|` | or: `dog\|cat` matches `dog` or `cat` |
| `^` / `$` | start / end of the string |
| `[abc]`, `[A-Za-z]` | any one character from the set or range |
| `\w` | a word character (letter, digit, `_`) |
| `\d` | a digit |
| `\.` | a literal period (escaped) |

## Traps
- `'dog | cat'` with spaces matches `'dog '` or `' cat'`, because spaces are part of the pattern. Use `'dog|cat'`.
- A bare `.` matches **anything**. To match only a period, use `'\.'` or `'[.]'`. Inside `[ ]`, `.` is literal.
- `^` goes at the **start** and `$` at the **end**. `'$\w+^'` can never match.
- `*` and `+` need something before them, so `'**'` is an invalid pattern.

## Which patterns match the whole string `'Michael'`?
- ✅ `\w+`, `^\w+$`, `Michael`, `\w*`, `.*`, `M[i]chael`, `[A-Za-z]*`
- ✅ `Mm?i?ch.*e?`: `M`, then `m?` matches nothing, `i`, `ch`, `.*` matches `ael`, and `e?` matches nothing.
- ❌ `$\w+^` (anchors swapped), `**` and `*MATCH_ALL` (invalid), `M?` (only matches `M`)

## Functions
- `re.match(p, s)`: matches at the **start** of `s` only.
- `re.search(p, s)`: finds the first match **anywhere** in `s`.
- `re.fullmatch(p, s)`: the **whole** string must match.
- `re.findall(p, s)`: a list of all matches.
, `\b` | start, end, word boundary |
| `\.`, `\?`, `\+` | escaped literal characters |
| `a\|b` | a or b |

### How matching works
Scan the text left to right. At each position, try to match the pattern one piece at a time. On success, record the match and **continue after it** (matches don't overlap). On failure, move one character forward and restart the pattern.

### Examples (all checked in Python)
```python
txt = "Abc. Hello! 100 + 8"
re.findall(".!+", txt)       # ['o!']   . is "any char", + means "1 or more !"
re.findall(r"\.\!\+", txt)   # []       looks for the 3-char string '.!+'
re.findall("[!.+]", txt)     # ['.', '!', '+']  inside [ ] they're literal

re.findall(r"(csc)", "csccsccsc")        # ['csc', 'csc', 'csc']
re.findall(r"(?:csc){3}", "csccsccsc")   # ['csccsccsc']

re.findall("csc|cs", "csccsccsc")   # ['csc', 'csc', 'csc']
re.findall("cs|csc", "csccsccsc")   # ['cs', 'cs', 'cs']   <- the first alternative that matches wins

txt = "Mike Miller, Mick Furrier, Mike Baker, Myke Mason"
re.findall(r"M[iy]ke \w*", txt)   # ['Mike Miller', 'Mike Baker', 'Myke Mason']
```

### Tasks (solutions pass the slide doctests)
```python
def find_specific(txt: str) -> list[str]:
    """One 'a' followed by one or more 'b'."""
    return re.findall(r'ab+', txt)          # "aaabbbabbacb" -> ['abbb', 'abb']

# Task 2: <= 6 characters; 'a', then 0+ digits, then 'CS'
your_regex = r"a\d*CS"                      # exactly 6 characters

def task3(txt: str) -> bool:
    """True iff txt contains only valid Python variable names."""
    words = txt.split()
    if not words:                           # "" and "   " -> False
        return False
    for w in words:
        if not re.fullmatch(r'[A-Za-z_]\w*', w):
            return False
    return True

def task4(target: str, valid_words: list[str], quality: int = 2) -> list[str]:
    """Words whose last <quality> characters match target's."""
    pattern = re.escape(target[-quality:]) + '
    result = []
    for w in valid_words:
        if re.search(pattern, w):
            result.append(w)
    return result
```

**MCQ 1:** "begins with 'a', zero or more digits, ends with 'CS'" → **B. `a\d*CS`** (`+` would require at least one digit, and D ends in `C`, not `CS`).

Related: [[Strings, Indexing, Slicing, String Methods]]
