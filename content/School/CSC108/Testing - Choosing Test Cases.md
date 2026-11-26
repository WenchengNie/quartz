---
course: CSC108
lecture: W09B
date: 2026-11-13
tags:
  - csc108
  - testing
  - pcrs
  - after-tt2
week: W09B
---
# W09B — Testing Part 1: Choosing Test Cases

> [!info] Lecture: Testing Part 1 (Nov 13). Not on Test 2.
> Interactive slides: https://engine14.github.io/csc108-testing-/
> PCRS: *Factors in Testing* and *Testing: Choosing cases*.

## Black-box testing and equivalence classes
- **Black-box testing**: choose tests from the docstring alone, without reading the code.
- Group the possible inputs into **equivalence classes**. These are groups of inputs that should behave the same way, for example: empty, one element, all match, none match, mixed, negative values.
- You only need **one test per class**. A test is **redundant** ("adds nothing") if it repeats a pattern that an earlier test already covered. Bigger numbers or different letters don't make a new case.

## Test case factors
| Factor | Ask yourself | Example |
|---|---|---|
| **Size** | Does the length or size matter? Test 0, 1, and many. | `''`, `'a'`, `'abc'` |
| **Dichotomies** | Is there a yes/no split in the data? | lists with odd ints vs. lists without odd ints |
| **Boundaries** | Is there a threshold where the behaviour changes? | freezing point: 273.15 K, 0 °C, 32 °F |
| **Order** | Does the position matter? Test front, middle, and end. | a digit at the start, middle, or end of `s` |

PCRS factor answers:
- `count_digits(s)` → **Size, Order**. Even/odd length doesn't matter. `'0'`–`'9'` are characters, not numeric thresholds.
- `filter_out_odds(lst)` → **Size, Dichotomies, Order**. 0 being the boundary between positive and negative is irrelevant to whether a number is odd.
- `is_above_freezing(temperature, unit)` → **Boundaries**. Test each unit at its freezing point.
- `count_occurrences(s, ch)`: the best set is `''/'a'`, `'a'/'a'`, `'a'/'b'`, `'abc'/'b'`, `'abc'/'d'`, `'abcabca'/'a'`.
  - It covers empty, size 1 with and without a match, longer strings with and without a match, and multiple matches.
  - Adding `'1'` or `'123'` is redundant, because digits are just characters.

## "Mark the redundant tests" MCQs
Work through the tests in order and ask: *does this test show a behaviour I haven't seen yet?*

- **`remove_multiple(x, lst)`**: the new cases are `[]`, `[5]` (a single element that gets removed), a mixed list with a negative (`[15, -10, 7, 8]`), and a negative `x` (`x = -6`).
  - Larger numbers like `x = 75` or `x = 750` are redundant.
  - ⚠️ Not confirmed: whether `[7, 9, 12]` ("nothing removed") counts as new. Keeping non-multiples was already shown by `7, 8` in an earlier test.
- **`add_key_values(x)`** (character counts): the new cases are `""`, `"a"`, `"ab"` (all distinct), `"aab"` (a repeat next to itself), and `"cabba"` (a repeat that isn't next to itself).
  - Digits, punctuation, and longer words (`"1233"`, `"a,aa33b"`, `"midterm"`, …) are redundant.
- **`check_division_int(x, y)`**: once `1,1`, `1,2`, `0,2`, `4,2`, and `5,4` are covered, `2,2`, `2,3`, `9,3`, and `3,2` add nothing.

## "Which test case fails?" (finding the bug)
Look for an input that breaks an **assumption** the code makes.

**`product_except_self`** computes the total product, then does `product // nums[i]`.
- It fails when `nums` contains a **0**: `ZeroDivisionError`. Also, the products for the other positions would all be 0, which is wrong.
- Failing test: `[1, 2, 0, 4]`

**`evalRPN`** (Reverse Polish Notation: operators come after their operands, so `3 4 +` means $3 + 4$). The code only stores `left` and `right`, so a 3rd operand in a row overwrites `right`.
- Failing test: `[1, 2, 3, '/', '+']`
- It gives $1/3 + 3 \approx 3.33$. The correct answer is $1 + 2/3 \approx 1.67$.
- A correct version uses a **stack**: push numbers, and when you see an operator, pop two numbers and push the result.

Related: [[Testing with unittest and Mutation]], [[Functions, Scope and Doctests]]
