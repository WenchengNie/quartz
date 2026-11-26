---
course: MAT137
topic: derivatives and graphs
date: 2026-10-19
tags:
  - MAT137
  - derivatives
  - graph-sketching
  - concavity
prereq:
  - "[[W06 - The Derivative - Definition and Meaning|The Derivative - Definition and Meaning]]"
  - "[[W02 - Increasing Functions|Increasing Functions]]"
week: W07
---

# Reading the Graph of f from f'


Related: [[W06 - Tangent Lines and the Derivative|Tangent Lines and the Derivative]], [[W06 - Differentiability Implies Continuity|Differentiability Implies Continuity]]

## What f' tells you about f

| On the graph of $f'$ | Meaning for $f$ |
|---|---|
| $f' > 0$ (above axis) | $f$ increasing |
| $f' < 0$ (below axis) | $f$ decreasing |
| $f' = 0$ | horizontal tangent |
| $f'$ increasing | $f$ concave up |
| $f'$ decreasing | $f$ concave down |
| $f'$ jumps (one-sided values differ) | $f$ has a **corner** (still continuous if given) |
| $f'$ very large / unbounded | $f$ very steep (near-vertical tangent) |

> [!warning] Sign vs. slope of f'
> Increasing/decreasing of $f$ comes from the **sign** of $f'$. Concavity of $f$ comes from whether $f'$ is **rising or falling**. Check both separately.

> [!tip] Straight vs. curved pieces
> $f$ is a straight line only where $f'$ is **constant**. If $f'$ is changing on a piece, that piece of $f$ is curved.

## Example (identify the shape of f near each point)

The graph of $f'$ near each point, and the resulting shape of $f$:

**Near $x = 1$:** $f' \ge 0$, touching $0$ at $x=1$; $f'$ falls then rises.

$$f \text{ increasing, concave down} \;\to\; \text{flat at } x=1 \;\to\; \text{increasing, concave up}$$

Horizontal inflection point (like $x^3$).

**Near $x = 3$:** $f'$ jumps from negative (and falling) to positive (and falling).

$$f \text{ decreasing, concave down} \;\to\; \text{corner} \;\to\; \text{increasing, concave down}$$

A local min at a corner with both pieces curved (not a straight V).

**Near $x = 5$:** $f'$ is continuous, decreasing, crossing from $+$ to $-$.

$$f \text{ increasing} \;\to\; \text{flat} \;\to\; \text{decreasing}, \quad \text{concave down throughout}$$

A smooth local max ($\cap$).

**Near $x = 7$:** left: $f' < 0$ rising to $0$; right: $f'$ huge and falling.

$$f \text{ decreasing, concave up, flattening} \;\to\; \text{steep increase, concave down}$$

A local min where the left side arrives flat and the right side leaves almost vertically.
