---
course: CSC108
lecture: W07C
date: 2026-11-02
tags:
  - csc108
  - dictionaries
  - after-tt2
week: W07C
---
# W07C — Dictionaries

> [!warning] **NOT on Test 2.** Piazza @308 excludes it, but it's fair game for the final exam.

## The motivating problem
Character frequency of `"helloworld"`. Possible encodings:
- **Two parallel lists:** `['h','e','l','o','w','r','d']` and `[1,1,3,2,1,1,1]`. Look up with `L2[L1.index(key)]`.
- **One-to-one encoding:** a list of 26 counts, indexed by `ord(ch) - ord('a')`.

Both are a **key → value mapping**. A dictionary lets you index directly with the key.

## Definition
A **dictionary** stores `key: value` pairs.
- **Mutable**, and keeps **insertion order** (since Python 3.7).
- **Keys must be immutable** (`str`, `int`, `tuple`, ...). Values can be anything.
```python
H = {"red": ["apple", "firetrucks", "cars"],
     "yellow": ["banana", "cars"],
     "blue": ["sky", "cars"]}
```

## Operations
| Expression | Result |
|---|---|
| `H["blue"]` | `['sky', 'cars']` |
| `H["green"]` | **`KeyError`** |
| `H.get("green")` | `None` (no error) |
| `"blue" in H` | `True` (`in` checks **keys**, not values) |
| `H["green"] = ["leaves"]` | adds a new key (assigning is fine) |
| `H.keys()` | `dict_keys(['red', 'yellow', 'blue'])` |
| `H.values()` | `dict_values([[...], [...], [...]])` |
| `H.items()` | `dict_items([('red', [...]), ...])`, a sequence of (key, value) **tuples** |
| `for key in H:` | loops over the **keys** |

## Counting pattern (the most important one)
```python
def char_freq(cs: str) -> dict[str, int]:
    H = {}
    for c in cs.lower():
        if c in H:
            H[c] += 1
        else:
            H[c] = 1
    return H
```

## Tasks
```python
def char_index(s: str) -> dict[str, list[int]]:
    result = {}
    for i in range(len(s)):
        if s[i] not in result:
            result[s[i]] = []
        result[s[i]].append(i)
    return result

def reverse_lookup(d: dict, item: object) -> list:
    keys = []
    for k in d:
        if d[k] == item:
            keys.append(k)
    return keys

def combine(d1: dict[int, list[int]], d2: dict[int, list[int]]) -> dict[int, int]:
    result = {}
    for k in d1:
        if k in d2:
            result[k] = sum(d1[k]) + sum(d2[k])
    return result
# combine({1: [2], 4: [5, 6]}, {4: [8]}) -> {4: 19}
```

Related: [[W08A - Tuples and Nested Dictionaries|Tuples and Nested Dictionaries]]
