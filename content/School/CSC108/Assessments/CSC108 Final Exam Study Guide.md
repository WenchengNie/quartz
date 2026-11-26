---
course: CSC108
type: test-prep
test: Final Exam
date: 2026-12-17
tags: [csc108, final, study-guide]
---
# CSC108 Final Exam — Study Guide

> [!warning] Official format and coverage not posted yet
> Piazza @ (Final Exam Schedule released, Oct 23) only links the official exam schedule and says there will be an **exam review at the end of November / beginning of December**. Format and Coverage are **TBA** until then.

## Logistics
- **When:** Thursday, **Dec 17, 2026**, 9–11 AM (from your To-Do; confirm on the official UTM exam schedule linked on Piazza).
- **Where:** RA Gym A/B; DV Gym C (from your To-Do; confirm your room by surname on the official schedule).
- **Aids:** TBA (Test 2 came with an API/reference sheet, `T2_API.pdf`).
- **PCRS Week 13 Final Exam Review** is due Dec 8 (already in your To-Do).

## Format
TBA.

## Coverage
**TBA.** For reference only, what's been taught since Test 2 (Nov 12):

| Week | Topic | Note |
|---|---|---|
| 9 | Testing (choosing test cases), Lazy Literature part 2 | [[Testing - Choosing Test Cases]], [[Lazy Literature (Random Text Generation)]] |
| 10 | unittest, regex | [[Testing with unittest and Mutation]], [[Regular Expressions]] |
| 10–11 | Selection, insertion, bubble sort | [[Sorting Algorithms (Selection, Insertion, Bubble)]] |
| 11 | Timing and time complexity | [[Time Complexity and Big-Oh]] |
| 12 | Object Oriented Programming (announced as "next time") | — |

Earlier material: [[CSC108 Test 2 Study Guide]], [[Test Cheat Sheet - Methods and Built-ins]].

## Code patterns to know (so far)
```python
# swap two list items (used by every sort)
L[i], L[j] = L[j], L[i]

# unittest skeleton
import unittest
class TestFoo(unittest.TestCase):
    def test_case_name(self):
        self.assertEqual(expected, foo(arg))
unittest.main()

# regex
import re
re.fullmatch(r'[A-Za-z_]\w*', name)   # whole string must match
re.findall(r'\d{3}-\d{4}', txt)       # list of all matches
```

## Top traps
1. Sort functions mutate and return `None`.
2. Selection sort's front = the smallest items, final; insertion sort's front = sorted but can still change; bubble sort's back = the largest items, final.
3. $O(1)$ means the work doesn't grow with $n$, even for a huge constant loop.
4. Loop variable doubling ⇒ $O(\log n)$; nested loops over the list ⇒ $O(n^2)$.
5. `re.match` only checks the start; use `re.fullmatch` for "the whole string".

## Practice materials
**Practice questions and links to past tests: [[CSC108 Final Exam Problem Set]].**
- PCRS Week 10–13 quests; Lab 9 (Regex, QuickTA) backup exercises in `Practical9.pdf`; Lab 10 (Sorting).
- Past CSC108 exams: library link on the Quercus front page (sign-in required).
