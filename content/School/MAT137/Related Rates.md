---
course: MAT137
topic: related rates
date: 2026-11-09
tags:
  - MAT137
  - derivatives
  - related-rates
prereq:
  - "[[Chain Rule]]"
  - "[[Implicit Differentiation]]"
next: "[[Inverse Functions]]"
week: W08
---

# Related Rates

Related: [[Chain Rule]] · [[Implicit Differentiation]]

## Method

1. Draw a picture. Name every changing quantity as a function of time $t$.
2. Write an equation relating them, true **at all times**.
3. Differentiate both sides with respect to $t$ (chain rule).
4. Plug in the values at the moment you care about, **only after** differentiating.

> [!warning] Common mistake
> Plugging numbers in before you differentiate turns a variable into a constant, so its rate becomes 0.

## Example: lake ripple (Week 8 slides)

The videos split every problem into two parts:
- **Modelling** (the hard part): picture, which quantities are **constant** and which **depend on $t$**, what you **want**, what you **know**, and the **relation** between the quantities.
- **Computation:** differentiate the relation with respect to $t$, solve, substitute.

Statements can include irrelevant data (the prisoner's weight below). Ignore it.

The radius is $r=2$ m and growing at $r'=10$ cm/s $=0.1$ m/s. How fast is the area growing?

$$A=\pi r^2\implies A'=2\pi r\,r'=2\pi(2)(0.1)=\boxed{0.4\pi\ \text{m}^2/\text{s}}$$

## Example: dripping cone

The cup is 16 cm tall with an 8 cm diameter at the top. Water leaves at $2$ cm³/min. How fast is the level falling when the water is $12$ cm deep?

By similar triangles, $\dfrac rh=\dfrac4{16}$, so $r=\dfrac h4$. Then

$$V=\frac\pi3r^2h=\frac{\pi h^3}{48}\implies V'=\frac{\pi h^2}{16}\,h'$$

At $h=12$: $-2=\dfrac{144\pi}{16}h'=9\pi h'$, so $h'=-\dfrac{2}{9\pi}$. The level falls at $\boxed{\frac{2}{9\pi}\ \text{cm/min}}$.

## Example: flashlight "disco ball"

A TA spins in the centre of an 8 m square room at 3 rev/s. How fast does the light move along a wall when the spot is 2 m from a corner?

- The wall is 4 m from the centre. Measure the spot from the wall's midpoint: $x=4\tan\theta$.
- $\theta'=3\cdot2\pi=6\pi$ rad/s.
- Then $x'=4\sec^2\theta\;\theta'$.
- 2 m from a corner means $x=2$, so $\tan\theta=\frac12$ and $\sec^2\theta=1+\frac14=\frac54$.

$$x'=4\cdot\frac54\cdot6\pi=\boxed{30\pi\approx94.2\ \text{m/s}}$$

## Bonus: ants on a clock at 3:00

The minute hand is 25 cm and the hour hand is 12.5 cm. Let $\theta$ be the angle between them.

- The minute hand turns at $\frac{2\pi}{60}$ rad/min and the hour hand at $\frac{2\pi}{720}$ rad/min.
- Just after 3:00 the minute hand is catching up, so the angle shrinks: $\theta'=-\left(\frac{2\pi}{60}-\frac{2\pi}{720}\right)=-\frac{11\pi}{360}$ rad/min.

By the law of cosines:
$$D^2=25^2+12.5^2-2(25)(12.5)\cos\theta \implies 2DD'=2(312.5)\sin\theta\;\theta'$$

At 3:00, $\theta=\frac\pi2$ and $D=\sqrt{781.25}=12.5\sqrt5$, so

$$D'=\frac{312.5\cdot\left(-\frac{11\pi}{360}\right)}{12.5\sqrt5}=-\frac{55\pi}{72\sqrt5}\approx-1.07\ \text{cm/min}$$

The ants are getting closer.

## Example: plane and radar (video 6.1)

A plane flies horizontally at altitude $10$ km and passes directly over a radar station. Later, the radar measures the distance to the plane as $20$ km, increasing at $1000$ km/h. How fast is the plane going?

**Model.**
- Constant: altitude $h=10$ km.
- Depend on $t$: horizontal position $x$ (from the point above the station) and distance $z$ from the station.
- Want: $\dfrac{dx}{dt}$. Know: $z=20$ and $\dfrac{dz}{dt}=1000$ at that instant. (The radar can only measure $z$ and $z'$, not the plane's speed.)
- Relation (Pythagoras):
$$z^2=x^2+h^2$$

**Compute.** Differentiate with respect to $t$ ($h$ is constant, so its derivative is $0$):
$$2z\frac{dz}{dt}=2x\frac{dx}{dt}\implies\frac{dx}{dt}=\frac zx\,\frac{dz}{dt}$$

At that instant,
$$x=\sqrt{z^2-h^2}=\sqrt{20^2-10^2}=10\sqrt3\ \text{km}$$
so
$$\frac{dx}{dt}=\frac{20}{10\sqrt3}\cdot1000=\boxed{\frac{2000}{\sqrt3}\approx1155\ \text{km/h}}$$

## Example: prisoner's shadow (video 6.2)

A spotlight on the ground is $30$ m from a wall. A $1.8$ m tall prisoner (weighing $85$ kg, irrelevant) runs straight toward the wall. How fast is his shadow on the wall changing when he is $20$ m from the wall, running at $8$ m/s?

**Model.**
- Constants: light-to-wall distance $a=30$ m and prisoner height $h=1.8$ m.
- Depend on $t$: prisoner's distance from the light $x$, and shadow height $y$.
- Want: $\dfrac{dy}{dt}$. Know: $20$ m from the wall means $x=30-20=10$ m, and $\dfrac{dx}{dt}=8$ m/s.
- Relation (similar triangles: height $h$ over base $x$, and height $y$ over base $a$):
$$\frac hx=\frac ya$$

**Compute.** Write $y=\dfrac{ah}{x}$ and differentiate ($a,h$ constant):
$$\frac{dy}{dt}=-\frac{ah}{x^2}\,\frac{dx}{dt}=-\frac{30\cdot1.8}{10^2}\cdot8=\boxed{-4.32\ \text{m/s}}$$

The shadow is **shrinking**, as expected since he's getting closer to the wall.
