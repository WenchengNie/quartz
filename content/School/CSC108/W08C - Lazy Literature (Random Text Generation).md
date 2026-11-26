---
course: CSC108
lecture: W08C
date: 2026-11-09
tags:
  - csc108
  - dictionaries
  - design
  - random
  - after-tt2
week: W08C
---
# W08C — Lazy Literature (Random Text Generation), Part 1

> [!warning] Not on Test 2: it comes after the cutoff and uses dictionaries. Part 2 is Nov 11.
> Interactive slides: https://engine14.github.io/csc108-random-text/
> Corpus files on Quercus: `alice.txt`, `seuss1–6.txt`, `shakespeare.txt`, `tolk1–3.txt`

## Idea
Phone predictive text is a simple form of generative AI: it suggests the next word based on the last one. **Lazy Literature** does the same thing:
1. **Learn**: read a text and store, for each word, the list of words that **follow** it.
2. **Generate**: start from a word, repeatedly pick a random follower, and build gibberish in the same style.

## Learn phase: the data structure
`dict[str, list[str]]`, where each key is a word and its value lists every word that came right after it (duplicates included, so common pairs come up more often).

For "Did you get the sword from the old man on top of the waterfall?":
```python
{'': ['Did'], 'Did': ['you'], 'you': ['get'], 'get': ['the'],
 'the': ['sword', 'old', 'waterfall?'], 'sword': ['from'], 'from': ['the'],
 'old': ['man'], 'man': ['on'], 'on': ['top'], 'top': ['of'], 'of': ['the']}
```
The key `''` stands for "start of text". The last word (`'waterfall?'`) has no followers, so it isn't a key.

## Task 1: `make_dictionary`
```python
def make_dictionary(filename: str) -> dict[str, list[str]]:
    word_dict = {}
    prev = ''
    with open(filename) as f:
        for line in f:
            for word in line.split():
                if prev not in word_dict:
                    word_dict[prev] = []
                word_dict[prev].append(word)
                prev = word
    return word_dict
```

## Task 2: `mimic_text`
```python
import random

def mimic_text(word_dict: dict[str, list[str]], num_words: int) -> str:
    words = []
    current = ''
    for _ in range(num_words):
        if current not in word_dict:      # dead end, e.g. the last word
            current = ''
        current = random.choice(word_dict[current])
        words.append(current)
    return ' '.join(words)
```
`random.choice(xs)` picks a random element of `xs`.

## Things to think about (for Part 2)
- Does the output sound natural? Using **more context** (the previous 2+ words as the key) gives more sensible text. That's the same idea as an $n$-gram / Markov chain.
- What should happen at the last word, which has no followers? (Above, it restarts from `''`.)
- Starting from `''` every time always produces the book's first word. Pick a random key to start instead.

Related: [[W07C - Dictionaries|Dictionaries]], [[W04B - For Loops over Strings|For Loops over Strings]]
