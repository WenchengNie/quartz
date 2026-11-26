---
course: CSC108
lecture: W09-PCRS
date: 2026-11-15
tags:
  - csc108
  - testing
  - unittest
  - mutation
  - pcrs
  - after-tt2
week: W09
---
# W09 — Testing with `unittest` and Mutation

> [!info] From PCRS: *Testing with unittest* and the mutation exercises. These follow up on Testing Part 1 (Nov 13), and the next lecture likely continues the topic. Not on Test 2.

## unittest structure
```python
import unittest
import underperformers   # the module being tested

class TestSomething(unittest.TestCase):
    """Tests for underperformers.some_function."""

    def test_case_name(self) -> None:      # method names MUST start with test_
        """Describe the case."""
        actual = underperformers.some_function(...)
        expected = ...
        self.assertEqual(actual, expected)

if __name__ == '__main__':
    unittest.main(exit=False)
```
- Each `test_` method is one test case. Each one runs on its own, so one failure doesn't stop the others.
- Common assertions: `assertEqual(a, b)`, `assertTrue(x)`, `assertFalse(x)`.
- **PCRS note**: the PCRS sandbox doesn't include `assertIsNone`, so use `self.assertEqual(actual, None)` instead.

### Converting a doctest to unittest
For a function that **returns** a value, compare the return value:
```python
d = {'a': ['apple'], 'b': ['beet', 'banana'], 'c': ['carrot', 'cucumber']}
actual = words.word_frequency(d)
expected = {'a': 1, 'b': 2, 'c': 2}     # key order doesn't matter for dict ==
self.assertEqual(actual, expected)
```
> [!warning] Don't compare the *input* `d` to `expected`. The function returns a new dict and doesn't change `d`.

## Testing functions that mutate
For a function that mutates its input and returns `None`, check **both** the return value **and** the changed argument.

```python
def remove_shared(L1: list, L2: list) -> None:
    """Remove items from L1 that are in both L1 and L2."""
    for v in L2:
        if v in L1:
            L1.remove(v)
```
Test: `list_1 = [1, 2, 3]` and `list_2 = [3, 2, 1]`. After the call, `list_1 == []` and `list_2 == [3, 2, 1]`, because `L2` is never changed.

**Low-threshold test for `keep_underperformers`** (mutates the list in place):
```python
def test_low_threshold(self) -> None:
    """Test keep_underperformers with a threshold for which there
    are no underperformers."""
    nums = [4, 5, 6]
    actual_return = underperformers.keep_underperformers(nums, 1)
    self.assertEqual(actual_return, None)   # mutating functions return None
    self.assertEqual(nums, [])
```

## Testing that a function does NOT mutate
1. Make a **copy** of the input before the call.
2. Call the function.
3. Assert the original still equals the copy.

```python
def test_mutation(self) -> None:
    """Confirm that collect_underperformers does not mutate the list
    it is given."""
    nums = [1, 5, 10]
    copy_nums = nums[:]
    underperformers.collect_underperformers(nums, 5)
    self.assertEqual(nums, copy_nums)
```
> [!tip] Choose an input that forces real work
> Use a **mixed** list, with some items below the threshold and some above (like `[1, 5, 10]` with threshold `5`). If every item matches, or none do, a buggy version might not change anything and the test would pass by accident.
> (The PCRS version `nums = [4, 5, 6]` with threshold `10` was also accepted, but every item there is an underperformer, so it's weaker at catching a bug.)

### Nested data: copy deeply enough
```python
def test_mutation(self) -> None:
    """Confirm that most_popular does not mutate the dict it is given."""
    company_to_placements = {'Super Shoes': [1, 2, 3], 'Fast Feet': [4, 5]}
    copy_dict = {}
    for company in company_to_placements:
        copy_dict[company] = company_to_placements[company][:]
    running.most_popular(company_to_placements)
    self.assertEqual(company_to_placements, copy_dict)
```
> [!warning] A shallow copy isn't enough
> `dict.copy()` makes a new dict, but its values are the **same list objects** (aliases). If the function mutates an inner list, the "copy" changes too and the test can't detect it. Copy each inner list with `[:]`. See [[Aliasing, Loops and Operators]].

Other test for `most_popular`, with one item: `{'Super Shoes': [1, 2, 3]}` → expected `['Super Shoes']`.

Related: [[Testing - Choosing Test Cases]], [[PCRS Practice - Dictionaries, Files and Palindromes]]
