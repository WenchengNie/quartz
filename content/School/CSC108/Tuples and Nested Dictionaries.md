---
course: CSC108
lecture: W08A
date: 2026-11-04
tags:
  - csc108
  - tuples
  - dictionaries
  - nested
  - after-tt2
week: W08A
---
# W08A — Tuples and Nested Dictionaries

> [!warning] **NOT on Test 2.** Excluded in Piazza @308, but it's on the final.

## Tuples
A **tuple** is an ordered sequence of elements. An $n$-tuple has exactly $n$ elements. You create one with `( )`.
```python
xs = (1, 2)
type(xs)     # <class 'tuple'>
xs[0]        # 1   <- indexing and slicing work
xs[0] = 2    # TypeError: 'tuple' object does not support item assignment
```
| | list | tuple | str |
|---|---|---|---|
| mutable? | yes | **no** | no |
| can be a dict key? | no | **yes** | yes |

## Warm-up: invert a dictionary
```python
def invert(H: dict) -> dict:
    result = {}
    for key in H:
        value = H[key]
        if value not in result:
            result[value] = []
        result[value].append(key)
    return result
# invert({1: 10, 2: 10, 3: 'A'}) -> {10: [1, 2], 'A': [3]}
```

## Nested dictionaries
```python
book_series = {
    'Animorphs': {'author': 'K.A. Applegate', 'number': 54, 'genre': 'middle grade'},
    'Inheritance Games': {'author': 'Jennifer Lynn Barnes', 'number': 2, 'genre': 'adult'},
    'Shopaholic': {'author': 'Sophie Kinsella', 'number': 10, 'genre': 'adult'},
}
book_series['Animorphs']['author']    # 'K.A. Applegate'

for series in book_series:
    for detail in book_series[series]:
        print(detail, book_series[series][detail])
```

```python
def find_books(book_series: dict[str, dict], genre: str) -> list[str]:
    result = []
    for series in book_series:
        if book_series[series]['genre'] == genre:
            result.append(series)
    return result
# Challenge version: append [info['number'], info['author']] instead
```

## A trie as nested dictionaries
Each level of nesting is the next letter, and an empty dict `{}` marks the end of a word.
```python
trie = {'t': {'h': {'a': {'t': {}}, 'e': {'r': {'e': {}}}, 'i': {'s': {}}}}}

def in_trie(word: str, trie: dict[str, dict]) -> bool:
    node = trie
    for ch in word:
        if ch not in node:
            return False
        node = node[ch]
    return node == {}      # word must end at a leaf (in this simple version)
```

Related: [[Dictionaries]], [[Lazy Literature (Random Text Generation)]]
