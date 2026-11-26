---
course: MAT137
type: test-prep
test: Term Test 2
date: 2026-11-20
tags:
  - mat137
  - tt2
  - practice
share_link: https://htmlto.link/adg3e37n
share_updated: 2026-11-19T05:25:43.523-05:00
---
	# MAT137 Term Test 2 — Problem Set

Everything in one place: the prof's **extra pre-test practice problems**, the **Fall 2025, Fall 2023 and Fall 2022 Test 2s**, and some extra problems I picked. Every solution is in a collapsed **Solution** box, so try the problem first.

Logistics and coverage: [[MAT137 Test 2 Study Guide]].

Old tests had different coverage. Parts marked **(not on our TT2)** use Rolle's Theorem or arcsin/arcsec (videos 4.12–4.14, Playlist 5). They're still good practice for the final.

**⭐ Short on time? Do the starred ones first.** They cover what TT2 is most likely to test: ε-δ proofs and proving a limit DNE, IVT/EVT proofs, the derivative from the definition, implicit differentiation, related rates, inverses, true/false counterexamples, and new-definition questions. If you only do one past test, do Part B, because it's the most recent.

**Progress**
- [ ] ⭐ Starred problems only
- [ ] Part A: Extra pre-test practice problems
- [ ] Part B: Fall 2025 Test 2
- [ ] Part C: Fall 2023 Test 2
- [ ] Part D: Fall 2022 Test 2
- [ ] Part E: Extra picks
- [ ] Part F: Tutorial worksheets (Weeks 6–10), including ⭐ W10 Q3
- [ ] Part G: 2SA3 Stage 1

---

## Part A: Extra pre-test practice problems (Fall 2026)

The prof posted these without solutions. Every solution below is mine.

**A1.** Go over (and understand) all tutorial, lecture, homework and playlist practice problems first.

### ⭐ A2. Limit-law proofs from the definition

Let $f,g$ have domain $\mathbb R$ and let $a\in\mathbb R$. Prove each directly from the definitions (no limit laws). Re-watch video 2.11 first.

**(a)** If $\displaystyle\lim_{x\to0}f(x)=L$ and $\displaystyle\lim_{x\to0}g(x)=M$, then

$$\lim_{x\to0}\big[f(x)+g(2x)\big]=L+M$$

> [!success]- Solution
> Let $\varepsilon>0$. Choose $\delta_1>0$ with $0<|x|<\delta_1\implies|f(x)-L|<\frac\varepsilon2$, and $\delta_2>0$ with $0<|x|<\delta_2\implies|g(x)-M|<\frac\varepsilon2$.
>
> Let $\delta=\min\left(\delta_1,\dfrac{\delta_2}{2}\right)$ and let $0<|x|<\delta$. Then $0<|x|<\delta_1$, and $0<|2x|<\delta_2$, so
> $$|f(x)+g(2x)-(L+M)|\le|f(x)-L|+|g(2x)-M|<\frac\varepsilon2+\frac\varepsilon2=\varepsilon$$
> The key step is applying the $g$ definition to the input $2x$, which is why $\delta_2$ gets halved.

**(b)** If $\displaystyle\lim_{x\to a}f(x)=L$ and $\displaystyle\lim_{x\to a}g(x)=M$, then

$$\lim_{x\to a}\big[f(x)+2g(x)\big]=L+2M$$

> [!success]- Solution
> Let $\varepsilon>0$. Choose $\delta_1$ with $0<|x-a|<\delta_1\implies|f(x)-L|<\frac\varepsilon2$, and $\delta_2$ with $0<|x-a|<\delta_2\implies|g(x)-M|<\frac\varepsilon4$. Let $\delta=\min(\delta_1,\delta_2)$. If $0<|x-a|<\delta$:
> $$|f(x)+2g(x)-L-2M|\le|f(x)-L|+2|g(x)-M|<\frac\varepsilon2+2\cdot\frac\varepsilon4=\varepsilon$$

**(c)** If $\displaystyle\lim_{x\to a}f(x)=-\infty$, then

$$\lim_{x\to a}\frac1{f(x)}=0$$

> [!success]- Solution
> Let $\varepsilon>0$. By the definition of $-\infty$ with $N=-\frac1\varepsilon$, there is $\delta>0$ with $0<|x-a|<\delta\implies f(x)<-\frac1\varepsilon$. For such $x$, $f(x)<0$ and $|f(x)|>\frac1\varepsilon$, so
> $$\left|\frac1{f(x)}-0\right|=\frac1{|f(x)|}<\varepsilon$$

**(d)** If $f(x)<0$ for all $x\in\mathbb R$ and $\displaystyle\lim_{x\to\infty}f(x)=0$, then

$$\lim_{x\to\infty}\frac1{f(x)}=-\infty$$

> [!success]- Solution
> We need: $\forall N\in\mathbb R,\ \exists R,\ \forall x,\ x>R\implies\frac1{f(x)}<N$.
>
> Let $N\in\mathbb R$ and set $N'=\min(N,-1)<0$. Let $\varepsilon=-\frac1{N'}>0$. Since $f(x)\to0$, there is $R$ with $x>R\implies|f(x)|<\varepsilon$. As $f(x)<0$, this means $-\varepsilon<f(x)<0$, so
> $$\frac1{f(x)}<-\frac1\varepsilon=N'\le N$$
> (Taking $N'<0$ handles $N\ge0$, where any negative bound works.)

### A3. True or false? Justify.

**(a)** If $ac<bc$, then $a<b$.

> [!success]- Solution
> **False.** $a=2,\ b=1,\ c=-1$: $ac=-2<-1=bc$, but $a>b$. (Dividing by negative $c$ flips the inequality.)

**(b)** For any sets $A,B$: $(A\cap B)^c=A^c\cap B^c$.

> [!success]- Solution
> **False.** De Morgan says $(A\cap B)^c=A^c\cup B^c$. With universe $\{1,2\}$, $A=\{1\}$, $B=\{2\}$: $(A\cap B)^c=\{1,2\}$ but $A^c\cap B^c=\{2\}\cap\{1\}=\varnothing$.

**(c)** If $f$ is bounded, then $\displaystyle\lim_{x\to\infty}f(x)$ exists.

> [!success]- Solution
> **False.** $f(x)=\sin x$ is bounded by $1$ but oscillates forever.

**(d)** If $\displaystyle\lim_{x\to\infty}f(x)$ exists, then $f$ is bounded.

> [!success]- Solution
> **False.** $f(x)=\frac1x$ (domain $x\ne0$) has limit $0$ at $\infty$, but is unbounded near $0$.

**(e)** If $\displaystyle\lim_{x\to a}f(x)$ does not exist, then $\displaystyle\lim_{x\to a}f^2(x)$ does not exist.

> [!success]- Solution
> **False.** $a=0$, $f(x)=1$ for $x\ge0$ and $f(x)=-1$ for $x<0$. $\lim_{x\to0}f$ DNE (one-sided limits $1\ne-1$), but $f^2\equiv1$.

### A4.

Find

$$\lim_{x\to0}\big(\sin(x)\cdot\chi_{\mathbb Q}(x)\big),\qquad \chi_{\mathbb Q}(x)=\begin{cases}1&x\in\mathbb Q\\0&x\notin\mathbb Q\end{cases}$$

> [!success]- Solution
> Since $0\le\chi_{\mathbb Q}\le1$:
> $$-|\sin x|\le\sin(x)\chi_{\mathbb Q}(x)\le|\sin x|$$
> Both bounds $\to0$, so by the **Squeeze Theorem** the limit is $\boxed0$.

### A5.

Let $f(x)=x^3$, $g(x)=\sin x$, $h(x)=e^x$. Differentiate $f\circ g$, $\ h\circ g\circ4f$, $\ h\circ(f\cdot h)$, $\ g\circ(f/h)$.

> [!success]- Solution
> $$(f\circ g)(x)=\sin^3x\ \implies\ 3\sin^2x\cos x$$
> $$(h\circ g\circ 4f)(x)=e^{\sin(4x^3)}\ \implies\ e^{\sin(4x^3)}\cos(4x^3)\cdot12x^2$$
> $$(h\circ(f\cdot h))(x)=e^{x^3e^x}\ \implies\ e^{x^3e^x}\left(3x^2e^x+x^3e^x\right)$$
> $$(g\circ(f/h))(x)=\sin\!\left(x^3e^{-x}\right)\ \implies\ \cos\!\left(x^3e^{-x}\right)\left(3x^2e^{-x}-x^3e^{-x}\right)$$

### A6. Find the derivatives

$$\text{(a) } y=x^3\sin(\cos x)\qquad\text{(b) } y=\sin\!\left(\frac{x}{x+1}\right)\qquad\text{(c) } y=x\cos(x)e^x\qquad\text{(d) } y=\sin\!\left(e^{x^2+1}\right)$$

$$\text{(e) } y=x^{\sin x}\qquad\text{(f) } y=\frac{x^2\sin x\,(2x+5)^{26}}{(2x-3)^2(x+1)^{25}}\qquad\text{(g) } y=\cos(\sin x)$$

> [!success]- Solution
> $$\text{(a) } y'=3x^2\sin(\cos x)-x^3\cos(\cos x)\sin x$$
> $$\text{(b) } y'=\cos\!\left(\frac x{x+1}\right)\cdot\frac{1}{(x+1)^2}$$
> $$\text{(c) } y'=e^x\big(\cos x-x\sin x+x\cos x\big)$$
> $$\text{(d) } y'=\cos\!\left(e^{x^2+1}\right)e^{x^2+1}\cdot2x$$
> $$\text{(e) } y'=x^{\sin x}\left(\cos x\ln x+\frac{\sin x}{x}\right)\quad\text{(log differentiation)}$$
> (f) Log differentiation: $\ln|y|=2\ln|x|+\ln|\sin x|+26\ln|2x+5|-2\ln|2x-3|-25\ln|x+1|$, so
> $$y'=y\left(\frac2x+\cot x+\frac{52}{2x+5}-\frac{4}{2x-3}-\frac{25}{x+1}\right)$$
> $$\text{(g) } y'=-\sin(\sin x)\cos x$$

**A7.** Make up ugly functions, differentiate them, check with Wolfram Alpha. Repeat until it's automatic.

### A8.

Let $x^3y^4-xy^2=e^{xy}$. Find $y'$.

> [!success]- Solution
> Differentiate implicitly:
> $$3x^2y^4+4x^3y^3y'-y^2-2xyy'=e^{xy}(y+xy')$$
> Collect $y'$:
> $$y'=\frac{ye^{xy}+y^2-3x^2y^4}{4x^3y^3-2xy-xe^{xy}}$$

### ⭐ A9.

Find all points on $x^2y^2+xy=2$ where the tangent line is parallel to $y=-x$.

> [!success]- Solution
> Differentiate:
> $$2xy^2+2x^2yy'+y+xy'=0\implies y'=-\frac{y(2xy+1)}{x(2xy+1)}=-\frac yx$$
> (OK to cancel: with $u=xy$, the curve is $u^2+u-2=0$, so $xy=1$ or $xy=-2$, and $2xy+1\ne0$.)
>
> Slope $-1$ means $y=x$. Then $xy=1\implies x^2=1$, and $xy=-2\implies x^2=-2$ (impossible). Points: $\boxed{(1,1)\text{ and }(-1,-1)}$.

### A10.

Ivan runs at $5$ m/s away from the base of a $5$ m guard tower. A spotlight on top follows him. How fast is the light's angle changing when he is $50$ m from the base?

> [!success]- Solution
> Let $x$ = distance from the base, and $\theta$ = angle between the beam and the tower. Then
> $$\tan\theta=\frac x5\implies\sec^2\theta\,\theta'=\frac{x'}5$$
> At $x=50$: $\tan\theta=10$, so $\sec^2\theta=1+100=101$. Then
> $$\theta'=\frac{5}{5\cdot101}=\boxed{\frac1{101}\ \text{rad/s}}$$
> (Measuring the angle from the ground instead gives $-\frac1{101}$: same speed, opposite sign.)

### ⭐ A11.

Car A drives north on Hurontario at $60$ km/h, Car B east on Dundas at $50$ km/h. How fast is the distance between them changing when A is $2$ km **south** of the intersection and B is $1$ km east?

> [!success]- Solution
> Let $a$ = A's distance south of the intersection (shrinking, so $a'=-60$) and $b$ = B's distance east ($b'=50$). Then $D^2=a^2+b^2$ and
> $$DD'=aa'+bb'$$
> At $a=2,\ b=1$, $D=\sqrt5$:
> $$D'=\frac{2(-60)+1(50)}{\sqrt5}=-\frac{70}{\sqrt5}=\boxed{-14\sqrt5\approx-31.3\ \text{km/h}}$$
> The distance is decreasing.

### A12. Let $f(x)=x^n$ ($n\ge1$).

(a) Max on $[-1,1]$? (b) Bounded on $[-1,1]$? On $(-1,1)$? (c) Bounded on any $(a,b)\subseteq[-1,1]$? (d) Max on any $(a,b)\subseteq[-1,1]$?

> [!success]- Solution
> **(a)** Yes. $f$ is continuous on the closed, bounded interval $[-1,1]$, so by the **EVT** it has a max (it's $1$, at $x=1$).
>
> **(b)** Yes, $|x^n|\le1$ on $[-1,1]$, and so also on the subset $(-1,1)$.
>
> **(c)** Yes, for the same reason: it's a subset of $[-1,1]$.
>
> **(d)** **No.** On an open interval, $x^n$ is either monotone (so the sup is approached at an endpoint but never reached), or for even $n$ decreases then increases (so again the sup is at an endpoint, which isn't in the interval). The EVT doesn't apply because $(a,b)$ isn't closed.

### A13.

Does the following function have a maximum on $[-137,2022]$? Explain.

$$f(x)=x^3-e^x\sin x\cos x-\sqrt{|x+1|}$$

> [!success]- Solution
> **Yes.** Every piece is continuous on $\mathbb R$ ($|x+1|\ge0$, and $\sqrt{\ }$ is continuous on $[0,\infty)$), so $f$ is continuous on the closed, bounded interval $[-137,2022]$. By the **EVT**, it has a maximum.

### A14.

The square with vertices $(0,0),(x,0),(x,x),(0,x)$: the point $(x,x)$ moves along $y=x$ so that when $x=4$ the area is changing at rate $10$. Find the rates of change of its $x$ and $y$ coordinates.

> [!success]- Solution
> $A=x^2\implies A'=2xx'$. At $x=4$: $10=8x'$, so $x'=\frac54$. Since $y=x$, also $y'=\boxed{\frac54}$.

### ⭐ A15.

Is this function continuous anywhere? Differentiable anywhere? Justify your answer.

$$f(x)=\begin{cases}x^2&x\in\mathbb Q\\0&x\notin\mathbb Q\end{cases}$$

> [!success]- Solution
> **Shortest full answer:** show $f'(0)$ exists (the bound below). Then $f$ is differentiable at $0$, and so continuous at $0$, since differentiable ⟹ continuous. That answers both "anywhere?" questions with "yes, at $0$". The rest below shows $0$ is the *only* such point, which goes beyond what's asked.
>
> **At $0$:** $0\le|f(x)|\le x^2\to0$, so by squeeze $\lim_{x\to0}f(x)=0=f(0)$: **continuous at $0$**. Also
> $$\left|\frac{f(h)-f(0)}{h}\right|\le\frac{h^2}{|h|}=|h|\to0$$
> so $f$ is **differentiable at $0$** with $f'(0)=0$.
>
> **At $a\ne0$:** rationals near $a$ give values near $a^2\ne0$ and irrationals give $0$, so $\lim_{x\to a}f(x)$ DNE. So $f$ is not continuous there, and therefore not differentiable either.

### A16.

Is $g(x)=|x|\sin x$ differentiable everywhere?

> [!success]- Solution
> **Yes.** For $x\ne0$ it's a product of differentiable functions. At $0$:
> $$\lim_{h\to0}\frac{|h|\sin h-0}{h}=\lim_{h\to0}|h|\cdot\frac{\sin h}{h}=0\cdot1=0$$
> so $g'(0)=0$.

### A17.

Is $h$ continuous at $0$? Differentiable at $0$?

$$h(x)=\begin{cases}x\sin(1/x)&x\ne0\\0&x=0\end{cases}$$

> [!success]- Solution
> **Continuous:** $|h(x)|\le|x|\to0$ (squeeze).
>
> **Not differentiable:** $\dfrac{h(t)-h(0)}{t}=\sin(1/t)$, which has no limit as $t\to0$.

### A18.

For which $k$ is $f(x)=|x|^k\chi_{\mathbb Q}(x)$ continuous at $0$? Differentiable at $0$?

> [!success]- Solution
> For $k<0$, $f$ isn't defined at $0$, and $k=0$ gives $f=\chi_{\mathbb Q}$ (with $0^0=1$), which is discontinuous. So take $k>0$, where $f(0)=0$.
>
> **Continuous at $0$ for all $k>0$:** $0\le|f(x)|\le|x|^k\to0$.
>
> **Differentiable at $0$ iff $k>1$:**
> - If $k>1$: $\left|\frac{f(h)}h\right|\le|h|^{k-1}\to0$, so $f'(0)=0$.
> - If $0<k\le1$: along irrational $h$ the quotient is $0$, but along rational $h\to0^+$ it is $h^{k-1}$, which is $1$ (if $k=1$) or $\to\infty$ (if $k<1$). So the limit DNE.

### A19.

Prove that $\cos x=x$ has a solution.

> [!success]- Solution
> Let $g(x)=\cos x-x$. It is continuous on $[0,\frac\pi2]$, with $g(0)=1>0$ and $g(\frac\pi2)=-\frac\pi2<0$. By the **IVT** (with $M=0$), there is $c\in(0,\frac\pi2)$ with $g(c)=0$, i.e. $\cos c=c$.

### ⭐ A20.

$f:[-1,1]\to[-1,1]$ is continuous. Prove the graph of $f$ meets $y=x$.

> [!success]- Solution
> Let $g(x)=f(x)-x$, continuous on $[-1,1]$. Since $f$'s values lie in $[-1,1]$:
> $$g(-1)=f(-1)+1\ge0,\qquad g(1)=f(1)-1\le0$$
> If either is $0$, we're done. Otherwise $g(-1)>0>g(1)$, and the **IVT** gives $c\in(-1,1)$ with $g(c)=0$. Either way $f(c)=c$, so $(c,c)$ is on both the graph and the line.

### ⭐ A21.

Prove the following function is injective. Find the domain of $f^{-1}$, a formula for $f^{-1}$, and $(f^{-1})'$.

$$f(x)=\frac{2x+1}{x-4}$$

> [!success]- Solution
> **Injective:** suppose $f(x_1)=f(x_2)$ with $x_1,x_2\ne4$. Cross-multiply:
> $$(2x_1+1)(x_2-4)=(2x_2+1)(x_1-4)\implies-8x_1+x_2=-8x_2+x_1\implies9x_2=9x_1\implies x_1=x_2$$
> **Inverse:** solve $y=\frac{2x+1}{x-4}$: $\ yx-4y=2x+1\implies x(y-2)=4y+1$, so
> $$f^{-1}(x)=\frac{4x+1}{x-2},\qquad\operatorname{dom}f^{-1}=\operatorname{range}f=\mathbb R\setminus\{2\}$$
> ($y=2$ would need $2x+1=2x-8$, which is impossible.)
>
> **Derivative:**
> $$(f^{-1})'(x)=\frac{4(x-2)-(4x+1)}{(x-2)^2}=-\frac{9}{(x-2)^2}$$

### A22.

Give an example of a function differentiable at only one point.

> [!success]- Solution
> $f(x)=x^2\chi_{\mathbb Q}(x)$ from A15: differentiable at $0$ only.

### A23.

Give $f,g$ with $f\circ g$ injective but $g\circ f$ not.

> [!success]- Solution
> $f(x)=x^2$ and $g(x)=\sqrt x$ (domain $[0,\infty)$).
> - $(f\circ g)(x)=(\sqrt x)^2=x$ for $x\ge0$: injective.
> - $(g\circ f)(x)=\sqrt{x^2}=\lvert x\rvert$ for all $x$: not injective, since $x=\pm1$ give the same output.
>
> If a question requires domain $\mathbb R$, $\sqrt x$ isn't allowed. Use $g(x)=e^x$ instead: $f\circ g=e^{2x}$ is injective, but $g\circ f=e^{x^2}$ isn't.

### ⭐ A24. True or false? Justify.

**(a)** If $f\circ g$ is differentiable and $f,g$ are continuous, then $f,g$ are differentiable.

> [!success]- Solution
> **False.** $f(x)=x^3$, $g(x)=\sqrt[3]x$: both continuous, $f\circ g(x)=x$ is differentiable, but $g$ isn't differentiable at $0$ (vertical tangent).

**(b)** If $f\circ g$ is invertible and $f$ is invertible, then $g$ is invertible.

> [!success]- Solution
> **True.** $g=f^{-1}\circ(f\circ g)$ is a composition of invertible functions, so it is invertible, with inverse $(f\circ g)^{-1}\circ f$.

**(c)** If $f+g$ is differentiable, then $f$ and $g$ are differentiable.

> [!success]- Solution
> **False.** $f(x)=|x|$, $g(x)=-|x|$: $f+g=0$ is differentiable, but neither is at $0$.

**(d)** If $f:\mathbb R\to\mathbb R$ is invertible, then $f(x)=M$ has a solution for every $M$.

> [!success]- Solution
> **True** with the strict definition: invertible means bijective onto the stated codomain $\mathbb R$, and surjective onto $\mathbb R$ is exactly "every $M$ is hit".
>
> With the calculus convention (invertible = injective, codomain ignored), it's **false**: $e^x$ is injective but never equals $-1$. Read the question's wording: here the codomain $\mathbb R$ is written, so go with true.

---

## Part B: Fall 2025 Test 2

8 questions, 40 points, 110 minutes.

### B1. True/False, no justification (1 pt each)

(a) If $f'(x)$ exists for all $x\in\mathbb R$, then $f'$ is continuous everywhere.
(b) If a circle's radius increases at a constant rate, its circumference increases at the **same** constant rate.
(c) If $f\circ g$ is injective, then $g$ must be injective.
(d) $\arcsin\left(\sin\frac{5\pi}6\right)=\frac{5\pi}6$ **(not on our TT2)**
(e) For $x\in(-\infty,-1]\cup[1,\infty)$, $\operatorname{arcsec}(x)=\arccos\left(\frac1x\right)$ **(not on our TT2)**

> [!success]- Solution
> **(a) False.** $f(x)=x^2\sin(1/x)$, $f(0)=0$ is differentiable everywhere, but $f'$ isn't continuous at $0$.
>
> **(b) False.** $C=2\pi r\implies C'=2\pi r'\ne r'$.
>
> **(c) True.** If $x_1\ne x_2$ but $g(x_1)=g(x_2)$, then $f(g(x_1))=f(g(x_2))$, so $f\circ g$ wouldn't be injective.
>
> **(d) False.** The range of $\arcsin$ is $[-\frac\pi2,\frac\pi2]$. Actually $\arcsin(\sin\frac{5\pi}6)=\frac\pi6$.
>
> **(e) True.** $\theta=\operatorname{arcsec}x\implies\sec\theta=x\implies\cos\theta=\frac1x\implies\theta=\arccos\frac1x$.

### B2. Derivatives (2 pts each)

(a) $F(x)=\dfrac{xe^x}{\ln x}$. Compute $F'(e)$.
(b) $g$ differentiable, $g(1)=2$, $g'(1)=7$, $G(x)=\sin(x^2+g(x))$. Compute $G'(1)$.
(c) $H(x)=2x+(3x)^{4x}$. Compute $H'(\frac13)$.

> [!success]- Solution
> **(a)** By the quotient and product rules:
> $$F'(x)=\frac{(e^x+xe^x)\ln x-\frac1x\cdot xe^x}{(\ln x)^2}\implies F'(e)=\frac{e^e+e^{e+1}-e^e}{1}=\boxed{e^{e+1}}$$
> **(b)** By the chain rule:
> $$G'(1)=\cos(1+g(1))\,(2+g'(1))=\boxed{9\cos3}$$
> **(c)** Let $f(x)=(3x)^{4x}$. Then $\ln f=4x\ln(3x)$, so
> $$\frac{f'}{f}=4\ln(3x)+4x\cdot\frac{3}{3x}=4\ln(3x)+4$$
> At $x=\frac13$: $f=1^{4/3}=1$ and $\ln1=0$, so $f'(\frac13)=4$ and
> $$H'\!\left(\tfrac13\right)=2+4=\boxed6$$

### ⭐ B3 and B4. Graph questions

The graph of $f$ on domain $[-10,10]$ (vertical asymptote at $x=6$):

![[F25-TT2-graph.png]]

**B3** (5 pts)
(a) $x$-coordinates in $(-10,10)$ where $f$ is **continuous but not differentiable**.
(b) Where $f$ is **differentiable but not continuous**.
(c) Global minima and global maxima.
(d) Local minima and local maxima (points and/or intervals). Use the MAT137 definition of local extrema.

> [!success]- Solution
> **(a)** $-8,\ -4,\ -2,\ -1,\ 1$. These are corners, plus the vertical tangent at $-4$.
>
> **(b)** None. That's impossible, since differentiable implies continuous.
>
> **(c)** Global min at $x=-6$ and $x=2$ (value $-4$). **No** global max ($f\to\infty$ near $6$).
>
> **(d)** In MAT137, local extrema are only at **interior** points of the domain, so not at $\pm10$.
> - Local minima: $-6,\ (-1,1),\ 2,\ 6$
> - Local maxima: $-8,\ [-1,1],\ 8$
>
> On the flat piece, every point of $[-1,1]$ is a local max, but only points of $(-1,1)$ are local mins. At $x=\pm1$ there are smaller values on one side.

**B4** (5 pts)
(a) $A$ = largest interval containing $x=-4$ on which $f$ is injective, and $B$ = the same for $x=4$.
(b) Domains of $f_A^{-1}$ and $f_B^{-1}$ (restrictions to $A$, $B$).
(c) Compute $(f_B^{-1})'(-3)$.
(d) Is $f_A^{-1}$ differentiable at $0$? If so, find $(f_A^{-1})'(0)$.

> [!success]- Solution
> **(a)** $A=[-6,-1]$, $B=[2,6)$.
>
> **(b)** Each domain is the range of the restriction: $\operatorname{dom}f_A^{-1}=\{-4\}\cup(-2,4]$ and $\operatorname{dom}f_B^{-1}=[-4,-2]\cup(0,\infty)$.
>
> **(c)** $f(3)=-3$, so $f_B^{-1}(-3)=3$. The segment there has slope $1$, so
> $$(f_B^{-1})'(-3)=\frac{1}{f_B'(3)}=\frac11=\boxed1$$
> **(d)** **Yes.** $f(-4)=0$ and $f$ has a **vertical** tangent at $(-4,0)$, so $f_A^{-1}$ has a **horizontal** tangent at $(0,-4)$:
> $$(f_A^{-1})'(0)=0$$

### ⭐ B5. Implicit differentiation (4 pts)

Curve:

$$8\arctan(xy)=\pi(x^2+y^2)$$

(a) Verify $(1,1)$ is on it. (b) Find the tangent line at $(1,1)$.

> [!success]- Solution
> **(a)** $\arctan1=\frac\pi4$, so LHS $=2\pi$ and RHS $=\pi(1+1)=2\pi$. ✓
>
> **(b)** Differentiate implicitly:
> $$\frac{8}{1+(xy)^2}\,(y+xy')=\pi(2x+2yy')$$
> At $(1,1)$: $4(1+y')=2\pi+2\pi y'$, so
> $$y'=\frac{4-2\pi}{2\pi-4}=-1$$
> Tangent line: $y-1=-(x-1)$, i.e. $\boxed{y=-x+2}$.

### B6. Definitions (2 pts each)

(a) "$f$ is differentiable at $c$" (domain $\mathbb R$).
(b) "$f$ has a global/absolute minimum" (domain $D$).
(c) State Rolle's Theorem. **(not on our TT2)**

> [!success]- Solution
> **(a)** The limit below exists (equivalently, $\displaystyle\lim_{x\to c}\frac{f(x)-f(c)}{x-c}$ exists):
> $$\lim_{h\to0}\frac{f(c+h)-f(c)}{h}$$
> **(b)** $\exists c\in D$ such that $\forall x\in D,\ f(x)\ge f(c)$.
>
> **(c)** Let $a<b$ and let $f$ be defined on $[a,b]$. If $f$ is continuous on $[a,b]$, differentiable on $(a,b)$, and $f(a)=f(b)$, then $\exists c\in(a,b)$ with $f'(c)=0$.

### ⭐ B7. Related rates (4 pts)

A student runs straight toward a prison wall at $10$ m/s. A spotlight on the ground is $30$ m from the wall, and he runs past it, casting a shadow on the wall. He is $1.5$ m tall (and weighs $55$ kg). How fast is the shadow's length changing when he's $20$ m from the wall? Increasing or decreasing?

> [!success]- Solution
> Let $x$ = distance from the light to the student ($x'=+10$, since he runs away from the light) and $y$ = shadow height. By similar triangles,
> $$\frac{y}{1.5}=\frac{30}{x}\implies y=\frac{45}{x}\implies\frac{dy}{dt}=-\frac{45}{x^2}\frac{dx}{dt}$$
> At $20$ m from the wall, $x=10$:
> $$\frac{dy}{dt}=-\frac{45}{100}\cdot10=\boxed{-4.5\ \text{m/s}}$$
> The shadow is **shrinking**. (The weight is irrelevant.)

### B8. Proof (5 pts) **(uses Rolle's Theorem: not on our TT2)**

**(a)** Let $a<b<c$, and let $f$ (domain $\mathbb R$) be differentiable everywhere. If $f(a)=-1$, $f(b)=8$, $f(c)=6$, prove that there is $d\in(a,c)$ with $f'(d)=0$. Verify the hypotheses of every theorem you use.

**(b)** Is it still true if $f$ is only continuous on $\mathbb R$ and differentiable everywhere except one point $p\in(a,c)$?

> [!success]- Solution
> **(a)** $f$ is differentiable on $\mathbb R$, hence continuous on every interval, so the IVT and Rolle's Theorem apply on any closed interval.
> - $f(a)=-1<6<8=f(b)$, so by the **IVT** on $[a,b]$ there is $c_1\in(a,b)$ with $f(c_1)=6=f(c)$.
> - $c_1<b<c$, so $c_1\ne c$. By **Rolle's Theorem** on $[c_1,c]$ (continuous, differentiable inside, equal endpoint values) there is $d\in(c_1,c)\subseteq(a,c)$ with $f'(d)=0$.
>
> **(b)** **No.** Counterexample with $a=0,\ b=1,\ c=2$:
> $$f(x)=\begin{cases}9x-1&x\le1\\10-2x&x>1\end{cases}$$
> $f$ is continuous, with $f(0)=-1$, $f(1)=8$, $f(2)=6$. It is differentiable except at $p=1$ (a corner), and $f'\in\{9,-2\}$ is never $0$.

---

## Part C: Fall 2023 Test 2

### C1. Derivatives (2 pts each)

(a) $h$ twice differentiable, $h(0)=0$, $h'(0)=-1$, $h''(0)=-2$, $f(x)=e^{-h(x)}$. Compute $f''(0)$.
(b) $g(x)=x^2+(\sin x)^{\cos x}$. Compute $g'(\frac\pi2)$.
(c) $f(x)=2\arctan(\ln x)+\cos x$. Compute $f'(e)$.

> [!success]- Solution
> **(a)** First $f'=-h'e^{-h}$, then
> $$f''=-h''e^{-h}+(h')^2e^{-h}\implies f''(0)=-(-2)(1)+(-1)^2(1)=\boxed3$$
> **(b)** Let $k=(\sin x)^{\cos x}$. Then $\ln k=\cos x\ln(\sin x)$, so
> $$\frac{k'}{k}=-\sin x\ln(\sin x)+\frac{\cos^2x}{\sin x}$$
> At $\frac\pi2$: $k=1$ and both terms are $0$, so $k'=0$ and
> $$g'\!\left(\tfrac\pi2\right)=2\cdot\tfrac\pi2+0=\boxed\pi$$
> **(c)**
> $$f'(x)=\frac{2}{1+(\ln x)^2}\cdot\frac1x-\sin x\implies f'(e)=\frac22\cdot\frac1e-\sin e=\boxed{\frac1e-\sin e}$$

### C2. Implicit differentiation (3 pts)

Curve:

$$\sin(x+y)=x\cos y$$

(a) Find $\frac{dy}{dx}$. (b) Find the tangent line at $(\frac\pi2,\frac\pi2)$.

> [!success]- Solution
> **(a)** Differentiate implicitly:
> $$\cos(x+y)(1+y')=\cos y-x\sin y\,y'\implies\frac{dy}{dx}=\frac{\cos y-\cos(x+y)}{\cos(x+y)+x\sin y}$$
> **(b)** The point is on the curve: $\sin\pi=0=\frac\pi2\cos\frac\pi2$. ✓ The slope is
> $$\frac{0-(-1)}{-1+\frac\pi2}=\frac{2}{\pi-2}$$
> so the tangent line is
> $$y-\frac\pi2=\frac{2}{\pi-2}\left(x-\frac\pi2\right)$$

### C3. Related rates (4 pts)

You walk along a straight path at $2$ m/s. A cat sits $2$ m from the path and watches you. How fast (rad/s) is the cat's head turning when you're $20$ m from her?

> [!success]- Solution
> Let $x$ = your position along the path, measured from the point nearest the cat, and $\theta$ = the angle of the cat's head from the perpendicular. Then
> $$\tan\theta=\frac x2\implies\sec^2\theta\,\theta'=\frac12x'$$
> At distance $L=20$: $\sec\theta=\frac{\text{hyp}}{\text{adj}}=\frac{20}2=10$. So
> $$100\,\theta'=\frac12\cdot2\implies\theta'=\boxed{\frac1{100}\ \text{rad/s}}$$

### ⭐ C4. Limit definition of the derivative (6 pts)

$f$ (domain $\mathbb R$) is continuous everywhere and differentiable at $3$.

(a) Show that $g$ is continuous everywhere (no $\varepsilon$-$\delta$ needed):

$$g(x)=\begin{cases}\dfrac{f(x)-f(3)}{x-3}&x\ne3\\[2mm]f'(3)&x=3\end{cases}$$

(b) Let $h(x)=\left[f(\sqrt x)\right]^2$. Prove, **from the limit definition only** (limit theorems OK, no chain rule), that $h$ is differentiable at $9$ with

$$h'(9)=\frac{f'(3)f(3)}{3}$$

> [!success]- Solution
> **(a)** For $x\ne3$: $f(x)-f(3)$ and $x-3$ are continuous and $x-3\ne0$, so $g$ is continuous there by the limit laws. At $3$:
> $$\lim_{x\to3}g(x)=\lim_{x\to3}\frac{f(x)-f(3)}{x-3}=f'(3)=g(3)$$
> by the definition of the derivative.
>
> **(b)** Use a difference of squares, and $x-9=(\sqrt x-3)(\sqrt x+3)$. For $x\ne9$, $\sqrt x\ne3$:
> $$\frac{h(x)-h(9)}{x-9}=\frac{f(\sqrt x)-f(3)}{\sqrt x-3}\cdot\frac{f(\sqrt x)+f(3)}{\sqrt x+3}=g(\sqrt x)\cdot\frac{f(\sqrt x)+f(3)}{\sqrt x+3}$$
> As $x\to9$:
> - $\sqrt x\to3$ and $g$ is continuous at $3$, so $g(\sqrt x)\to g(3)=f'(3)$;
> - $f$ is continuous, so $f(\sqrt x)\to f(3)$.
>
> By the limit laws,
> $$h'(9)=f'(3)\cdot\frac{2f(3)}{6}=\frac{f'(3)f(3)}3$$

### C5. Statements (2 pts each)

(a) State the IVT. (b) State Rolle's Theorem **(not on our TT2)**. (c) Define "$f$ has a local minimum at $c$".

> [!success]- Solution
> **(a)** Let $a<b$ and let $f$ be defined on $[a,b]$. If $f$ is continuous on $[a,b]$ and $M$ is between $f(a)$ and $f(b)$, then $\exists c\in(a,b)$ with $f(c)=M$. (If $M$ equals $f(a)$ or $f(b)$, take $c\in[a,b]$.)
>
> **(b)** See B6(c).
>
> **(c)** For $c$ an interior point of the domain: $\exists\delta>0$ such that $\forall x$, $|x-c|<\delta\implies f(x)\ge f(c)$.

### ⭐ C6. Variations on the IVT (6 pts)

**(a)** "Beginner Value Theorem": if $f$ is continuous on $[a,b]$, then $\exists c\in(a,b)$ with $f(c)=f(a)$.
(i) Give a continuous $f$ on $[0,10]$ for which the conclusion holds. (ii) Is the "theorem" true?

**(b)** "Advanced Value Theorem": if $f$ is continuous on $[a,b]$, then $\forall M\in\mathbb R,\ \exists c\in(a,b)$ with $f(c)=M$.
(i) Prove **no** continuous function on $[a,b]$ satisfies this conclusion. (ii) Give a **non-continuous** $f$ on $[0,10]$ that does.

> [!success]- Solution
> **(a)(i)** $f(x)=\sin x$: $f(0)=0=f(\pi)$ and $\pi\in(0,10)$.
>
> **(a)(ii)** **False.** $f(x)=x$: $f(c)=c\ne a=f(a)$ for every $c\in(a,b)$.
>
> **(b)(i)** If it did, $f$ would hit every real number, so it would have no max (and no min). That contradicts the **EVT** for a continuous $f$ on the closed interval $[a,b]$.
>
> **(b)(ii)** Fill in the gaps of $\tan$:
> $$f(x)=\begin{cases}\tan x&x\in[0,10],\ x\in\operatorname{dom}\tan\\0&\text{otherwise}\end{cases}$$
> On $(\frac\pi2,\frac{3\pi}2)\subseteq(0,10)$, $\tan$ already takes every real value. (Something like $\frac1{x-5}$ fails: it isn't defined on all of $[0,10]$, and it misses some values.)

### C7. True or false, with proof or counterexample (2 pts each)

**(a)** This function is differentiable everywhere:

$$h(x)=\begin{cases}\sin\!\left(\frac1{x^2}\right)\sin x&x\ne0\\0&x=0\end{cases}$$

**(b)** If $f\circ g$ is injective, then both $f$ and $g$ must be injective.

> [!success]- Solution
> **(a) False.** The difference quotient at $0$ is
> $$\frac{h(x)-h(0)}{x}=\frac{\sin x}{x}\sin\!\left(\frac1{x^2}\right)$$
> If its limit $L$ existed, then by the limit laws $\sin(1/x^2)=\frac{h(x)}{x}\cdot\frac{x}{\sin x}$ would tend to $L\cdot1$. But $\lim_{x\to0}\sin(1/x^2)$ DNE. Intuitively, $\frac{\sin x}x\to1$ can't damp the oscillation.
>
> **(b) False.** $g$ must be injective, but $f$ need not be: $f(x)=x^2$, $g(x)=e^x$. Then $f\circ g=e^{2x}$ is injective, but $f$ isn't.

### ⭐ C8. Graph sketch (5 pts)

Sketch $y=f(x)$ satisfying all of these at once:
(i) domain $\mathbb R$; (ii) $f$ injective; (iii) continuous everywhere except $0$; (iv) $\operatorname{dom}f^{-1}=(-\infty,-1)\cup[1,\infty)$; (v) differentiable everywhere except $0$ and $2$; (vi) $(f^{-1})'(-2)=2$; (vii) $(f^{-1})'(3)=0$.

> [!success]- Solution
> - **For $x<0$:** the line $y=\frac x2-1$. It passes through $(-2,-2)$ with slope $\frac12$, so $(f^{-1})'(-2)=\frac{1}{1/2}=2$. It approaches $-1$ at $0$ (open circle). Range $(-\infty,-1)$.
> - **For $x\ge0$:** start at $(0,1)$ (closed dot) and increase forever. Put a **vertical tangent** at $(2,3)$, so $f^{-1}$ has a horizontal tangent at $(3,2)$, i.e. $(f^{-1})'(3)=0$. Range $[1,\infty)$.
>
> The prof's sketch:
> ![[F23-TT2-Q8-solution-sketch.png]]
> (Only the derivative at the point matters for (vi): you need $f'(x_0)=\frac12$ where $f(x_0)=-2$, so $x_0$ doesn't have to be $-2$.)

---

## Part D: Fall 2022 Test 2

### D1. Derivatives (show which rules you use)

**(a)** (2 pts) $v$ differentiable, $v(0)=0$, $v'(0)=A$. Find $h'(0)$ in terms of $A$:

$$h(x)=e^{v(x)}\cos(3v(x))$$

**(b)** (3 pts) $w:(1,3)\to(1,3)$ differentiable, $w(\frac\pi2)=3$, $w'(\frac\pi2)=1$. Find $h'(\frac\pi2)$:

$$h(x)=(\sin x)^{w(x)}$$

**(c)** (3 pts) Find $y'$ in terms of $x,y$:

$$x^2y^3=\sin(xy)$$

> [!success]- Solution
> **(a)** By the product and chain rules:
> $$h'=v'e^{v}\cos(3v)-3v'e^{v}\sin(3v)\implies h'(0)=A\cdot1\cdot1-0=\boxed A$$
> **(b)** By log differentiation, $\ln h=w\ln(\sin x)$, so
> $$\frac{h'}{h}=w'\ln(\sin x)+w\frac{\cos x}{\sin x}$$
> At $\frac\pi2$: $\ln1=0$ and $\cos\frac\pi2=0$, so $h'(\frac\pi2)=\boxed0$.
>
> **(c)** Differentiate implicitly:
> $$2xy^3+3x^2y^2y'=\cos(xy)(y+xy')\implies y'=\frac{y\cos(xy)-2xy^3}{3x^2y^2-x\cos(xy)}$$

### ⭐ D2. IVT proof (8 pts)

$g:[0,1]\to[0,1]$ is continuous with $g(0)\ne0$ and $g(1)\ne1$. Let $n\in\mathbb N$. Prove $\exists c\in(0,1)$ with $g(c)=c^n$.

> [!success]- Solution
> Let $f(x)=g(x)-x^n$, which is continuous on $[0,1]$ (a difference of continuous functions).
> - $g(0)\in[0,1]$ and $g(0)\ne0$, so $f(0)=g(0)>0$.
> - $g(1)\le1$ and $g(1)\ne1$, so $f(1)=g(1)-1<0$.
>
> By the **IVT** with $M=0$, there is $c\in(0,1)$ with $f(c)=0$, i.e. $g(c)=c^n$.

### ⭐ D3. (8 pts)

$f:[-1,1]\to\mathbb R$ is continuous.
(a) Must $f$ be bounded on $[-1,1]$?
(b) Prove that for every integer $n\ge1$, $g(x)=x^nf(x)$ is differentiable at $0$.

> [!success]- Solution
> **(a)** **Yes.** By the **EVT**, $f$ has a max $M$ and a min $m$ on $[-1,1]$, so $|f(x)|\le\max(|M|,|m|)$.
>
> **(b)** From the definition:
> $$g'(0)=\lim_{x\to0}\frac{x^nf(x)-0}{x}=\lim_{x\to0}x^{n-1}f(x)$$
> - $n=1$: the limit is $\lim f(x)=f(0)$, since $f$ is continuous at $0$.
> - $n\ge2$: $x^{n-1}\to0$ and $f(x)\to f(0)$, so the limit is $0\cdot f(0)=0$ by the product law.
>
> Either way the limit exists, so $g$ is differentiable at $0$.

### D4. Related rates (8 pts)

A $5$ m ladder leans on a wall. The base is pulled away at $5$ m/s. Let $\theta$ be the angle between the ladder and the ground. How fast is $\theta$ changing when the top is $1$ m from the ground?

> [!success]- Solution
> Let $x$ = distance from the base to the wall. Then
> $$x=5\cos\theta\implies x'=-5\sin\theta\,\theta'$$
> The top is $1$ m high, so $\sin\theta=\frac15$. Then
> $$5=-5\cdot\frac15\,\theta'\implies\theta'=\boxed{-5\ \text{rad/s}}$$
> The angle is decreasing.

### ⭐ D5. True or false, with proof or counterexample (2 pts each)

$f,g:\mathbb R\to\mathbb R$.
(a) If $f,g$ are differentiable, then $f^2-2f\cdot g+g^2$ is differentiable.
(b) If $f\circ g$ is differentiable and $f$ is a differentiable bijection, then $g$ is differentiable.
(c) If $f\circ g$ is not differentiable, then $f$ or $g$ is not differentiable.
(d) If $f\circ g$ and $g\circ f$ are both injective, then $f$ and $g$ are both injective.

> [!success]- Solution
> **(a) True.** By the product and sum rules, $f^2=f\cdot f$, $fg$ and $g^2$ are differentiable, so the combination is too. (It equals $(f-g)^2$.)
>
> **(b) False.** $f(x)=x^3$ is a differentiable bijection and $g(x)=\sqrt[3]x$. Then $f\circ g=x$ is differentiable, but $g$ isn't differentiable at $0$.
>
> **(c) True.** The contrapositive is "if $f$ and $g$ are differentiable, then $f\circ g$ is differentiable", which is the chain rule.
>
> **(d) True.** $f\circ g$ injective $\implies g$ injective, and $g\circ f$ injective $\implies f$ injective (same argument as B1(c)).

---

## Part E: Extra picks

These target the TT2 skills the past tests used less: proving a limit DNE, the limit laws' hypotheses, abstract IVT, the derivative from the definition, the Inverse Function Theorem, and a "new definition" question.

### E1. $\varepsilon$-$\delta$ proof

Prove from the definition:

$$\lim_{x\to2}x^2=4$$

> [!success]- Solution
> Let $\varepsilon>0$ and set $\delta=\min\left(1,\dfrac\varepsilon5\right)$. Let $0<|x-2|<\delta$. Since $|x-2|<1$, we have $1<x<3$, so $|x+2|<5$. Then
> $$|x^2-4|=|x-2|\,|x+2|<\frac\varepsilon5\cdot5=\varepsilon$$

### ⭐ E2. Proving a limit does not exist

Prove from the definition that $\displaystyle\lim_{x\to0}\sin\frac1x$ does not exist.

> [!success]- Solution
> We show: $\forall L,\ \exists\varepsilon>0,\ \forall\delta>0,\ \exists x$ with $0<|x|<\delta$ and $|\sin\frac1x-L|\ge\varepsilon$.
>
> Suppose for contradiction that the limit is $L$. Take $\varepsilon=1$ and get the corresponding $\delta$. Choose $n$ large enough that
> $$x_1=\frac{1}{\frac\pi2+2\pi n}\qquad\text{and}\qquad x_2=\frac{1}{\frac{3\pi}2+2\pi n}$$
> are both in $(0,\delta)$. Then $\sin\frac1{x_1}=1$ and $\sin\frac1{x_2}=-1$, so
> $$2=|1-(-1)|\le\left|1-L\right|+\left|L-(-1)\right|<1+1=2$$
> That says $2<2$, a contradiction.

### ⭐ E3. Limit laws need their hypotheses

Find $f,g$ with $\lim_{x\to0}(f+g)$ existing but neither $\lim f$ nor $\lim g$ existing. Do the same for $f\cdot g$.

> [!success]- Solution
> **Sum:** $f(x)=\sin\frac1x$ and $g(x)=-\sin\frac1x$. Then $f+g=0$.
>
> **Product:** $f=g=\begin{cases}1&x\ge0\\-1&x<0\end{cases}$. Then $fg=1$, but $\lim f$ DNE.
>
> The moral: you may only write $\lim(f+g)=\lim f+\lim g$ **after** checking that both limits exist.

### E4. Main Continuity Theorem

Prove: if $f$ and $g$ are continuous at $a$, then $fg$ is continuous at $a$.

> [!success]- Solution
> By continuity, $\lim_{x\to a}f(x)=f(a)$ and $\lim_{x\to a}g(x)=g(a)$. Both limits **exist**, so the product law applies:
> $$\lim_{x\to a}f(x)g(x)=\Big(\lim_{x\to a}f(x)\Big)\Big(\lim_{x\to a}g(x)\Big)=f(a)g(a)$$
> So $fg$ is continuous at $a$.

### E5. Abstract IVT (2SA3 style)

$f$ is continuous on $[0,2]$ with $f(0)=f(2)$. Prove there is $c\in[0,1]$ with $f(c)=f(c+1)$.

> [!success]- Solution
> Let $g(x)=f(x+1)-f(x)$, continuous on $[0,1]$. Using $f(2)=f(0)$:
> $$g(1)=f(2)-f(1)=f(0)-f(1)=-g(0)$$
> If $g(0)=0$, take $c=0$. Otherwise $g(0)$ and $g(1)$ have opposite signs, so $0$ is between them, and the **IVT** gives $c\in(0,1)$ with $g(c)=0$, i.e. $f(c)=f(c+1)$.

### ⭐ E6. Differentiability of a piecewise function

Find $a,b$ so that the following is differentiable at $1$:

$$f(x)=\begin{cases}x^2&x\le1\\ax+b&x>1\end{cases}$$

> [!success]- Solution
> **Differentiable ⟹ continuous:** $\lim_{x\to1^+}(ax+b)=a+b$ must equal $f(1)=1$, so $a+b=1$.
>
> **One-sided derivatives at $1$**, using the definition:
> $$\lim_{h\to0^-}\frac{(1+h)^2-1}{h}=\lim_{h\to0^-}(2+h)=2$$
> $$\lim_{h\to0^+}\frac{a(1+h)+b-1}{h}=\lim_{h\to0^+}\frac{ah}{h}=a\qquad(\text{using }a+b=1)$$
> They must agree, so $a=2$ and $b=-1$.

### E7. Inverse Function Theorem

Let $f(x)=x^5+x^3+x$. Show that $f$ is injective, then compute $(f^{-1})'(3)$.

> [!success]- Solution
> $x^5$, $x^3$ and $x$ are each strictly increasing, so their sum is strictly increasing, and therefore injective.
>
> $f(1)=3$, so $f^{-1}(3)=1$. Also $f'(x)=5x^4+3x^2+1$, so $f'(1)=9\ne0$. Then
> $$(f^{-1})'(3)=\frac{1}{f'(f^{-1}(3))}=\frac1{f'(1)}=\boxed{\frac19}$$
> Plug in $f^{-1}(3)=1$, **not** $3$.

### E8. Related rates with a given formula

Air is pumped into a spherical balloon at $100$ cm³/s. How fast is the radius growing when the diameter is $50$ cm? ($V=\frac43\pi r^3$.)

> [!success]- Solution
> $$V'=4\pi r^2r'$$
> The diameter is $50$, so $r=25$:
> $$100=4\pi(625)r'\implies r'=\boxed{\frac{1}{25\pi}\ \text{cm/s}}$$

### ⭐ E9. New-definition question

**Definition.** $f$ is **flat at $a$** if $\displaystyle\lim_{h\to0}\frac{f(a+h)-f(a)}{h^2}$ exists.

(a) Prove: if $f$ is flat at $a$, then $f$ is differentiable at $a$ and $f'(a)=0$.
(b) Is the converse true?

> [!success]- Solution
> **(a)** Let $L$ be the limit in the definition. For $h\ne0$:
> $$\frac{f(a+h)-f(a)}{h}=h\cdot\frac{f(a+h)-f(a)}{h^2}$$
> Both factors have limits ($0$ and $L$), so by the product law the left side tends to $0\cdot L=0$. So $f'(a)=0$.
>
> **(b)** **False.** $f(x)=|x|^{3/2}$ at $a=0$: $\frac{f(h)}{h}=\pm|h|^{1/2}\to0$, so $f'(0)=0$. But $\frac{f(h)}{h^2}=|h|^{-1/2}\to\infty$, so $f$ is not flat at $0$.


---

## Part F: Tutorial worksheets (Weeks 6–10)

Everything from the worksheets except the "review last week / make up your own" items. Problems that repeat an earlier one point back to it. Official solutions are on Quercus; these are mine.

### Week 6: $\varepsilon$-$\delta$ practice

**W6 Q2(a).** In class, $\displaystyle\lim_{x\to0}(x^3+x^2)=0$ was proved by first assuming $|x|<1$, which gives $|x+1|<2$ and $\delta=\min\left(1,\sqrt{\tfrac\varepsilon2}\right)$. Show that **any** $C>0$ works in place of $1$, i.e. find $\delta=\min(C,\ \text{something in }\varepsilon, C)$.

> [!success]- Solution
> Let $\varepsilon>0$ and set $\delta=\min\left(C,\sqrt{\dfrac{\varepsilon}{C+1}}\right)$. If $0<|x|<\delta$, then $|x|<C$, so $|x+1|\le|x|+1<C+1$. Therefore
> $$|x^3+x^2|=x^2|x+1|<(C+1)x^2<(C+1)\cdot\frac{\varepsilon}{C+1}=\varepsilon$$

**⭐ W6 Q2(b).** Consider $\displaystyle\lim_{x\to1}\frac1x=1$.
(i) Prove it with $\delta=\min\left(\frac12,\frac\varepsilon2\right)$.
(ii) Explain why $1$ can't replace $\frac12$, i.e. why $\delta=\min(1,c\varepsilon)$ fails for every $c>0$.

> [!success]- Solution
> **(i)** Let $\varepsilon>0$ and $0<|x-1|<\delta$. Since $|x-1|<\frac12$, we get $x>\frac12$, so $\frac1{|x|}<2$. Then
> $$\left|\frac1x-1\right|=\frac{|x-1|}{|x|}<2\cdot\frac\varepsilon2=\varepsilon$$
> **(ii)** The constant must keep $x$ away from $0$, where $\frac1x$ blows up. $|x-1|<1$ allows any $x\in(0,2)$.
>
> Concretely: take $\varepsilon$ big enough that $c\varepsilon\ge1$, so $\delta=1$. Then $x=\frac1{\varepsilon+2}$ satisfies $|x-1|<1$, but
> $$\left|\frac1x-1\right|=\varepsilon+1>\varepsilon$$
> So the "proof" fails for that $\varepsilon$.

**W6 Q3.** Prove: if $\displaystyle\lim_{x\to0}f(x)=L$ and $\displaystyle\lim_{x\to0}g(x)=M$, then

$$\lim_{x\to0}\big[2f(x)+g(2x)\big]=2L+M$$

> [!success]- Solution
> Combine A2(a) and A2(b). Let $\varepsilon>0$. Take $\delta_1$ with $0<|x|<\delta_1\implies|f(x)-L|<\frac\varepsilon4$, and $\delta_2$ with $0<|x|<\delta_2\implies|g(x)-M|<\frac\varepsilon2$. Let $\delta=\min\left(\delta_1,\frac{\delta_2}2\right)$. If $0<|x|<\delta$, then $0<|2x|<\delta_2$, so
> $$|2f(x)+g(2x)-2L-M|\le2|f(x)-L|+|g(2x)-M|<\frac\varepsilon2+\frac\varepsilon2=\varepsilon$$

**W6 Q4.** Let $a\in\mathbb R$. If $f$ is positive and $\displaystyle\lim_{x\to a}f(x)=0$, then

$$\lim_{x\to a}\frac1{f(x)}=\infty$$

> [!success]- Solution
> Let $N\in\mathbb R$ and set $N'=\max(N,1)>0$. With $\varepsilon=\frac1{N'}$, there is $\delta>0$ with $0<|x-a|<\delta\implies|f(x)|<\frac1{N'}$. Since $f>0$, this gives $0<f(x)<\frac1{N'}$, so
> $$\frac1{f(x)}>N'\ge N$$
> (Compare A2(d), the $-\infty$ version.)

### Week 7: Limits and continuity

**W7 Q2.** Compute (distinguish DNE / $\pm\infty$). For each, note which limit laws you use and check their hypotheses.

$$\text{(a) }\lim_{x\to2}\frac{x^2-4}{x-2}\qquad\text{(b) }\lim_{x\to1}(x^2+2^x)\qquad\text{(c) }\lim_{x\to3}\frac{2-x}{x-3}\qquad\text{(d) }\lim_{x\to3}\frac{2-x}{(x-3)^2}$$

$$\text{(e) }\lim_{x\to0}\frac{\sqrt{x+4}-2}{2x}\qquad\text{(f) }\lim_{x\to\infty}\frac{x^3+2x+1}{4x^3-x^2+6}\qquad\text{(g) }\lim_{x\to\infty}\frac{\sqrt{x^2+1}+2x}{5x}$$

$$\text{(h) }\lim_{x\to1}\frac{\sin x}{x}\qquad\text{(i) }\lim_{x\to\infty}\frac{\sin x}{x}\qquad\text{(j) }\lim_{x\to0}\frac{1-\cos x}{x^2}\qquad\text{(k) }\lim_{y\to1}\frac{\sqrt{y+4}-\sqrt{4y+1}}{\sqrt y-1}$$

> [!success]- Solution
> **(a)** $4$. The hidden step: for $x\ne2$, $\frac{x^2-4}{x-2}=x+2$, and a limit at $2$ only looks at $x\ne2$, so the two limits are equal. That step isn't a limit law. Then $\lim(x+2)=4$ by the sum law.
>
> **(b)** $3$ (continuity).
>
> **(c)** **DNE.** The top $\to-1$ and the bottom $\to0$ but changes sign: the limit is $-\infty$ from the right and $+\infty$ from the left.
>
> **(d)** $-\infty$. The top $\to-1$ and the bottom $\to0^+$.
>
> **(e)** Multiply by the conjugate:
> $$\frac{x}{2x(\sqrt{x+4}+2)}=\frac{1}{2(\sqrt{x+4}+2)}\to\frac18$$
> **(f)** $\frac14$ (divide by $x^3$).
>
> **(g)** For $x>0$, $\frac{\sqrt{x^2+1}}{x}=\sqrt{1+\frac1{x^2}}\to1$, so the limit is $\frac{1+2}{5}=\frac35$.
>
> **(h)** $\sin1$ (continuity).
>
> **(i)** $0$, by squeeze: $\left|\frac{\sin x}x\right|\le\frac1x$.
>
> **(j)** Multiply by $1+\cos x$:
> $$\frac{1-\cos x}{x^2}=\left(\frac{\sin x}x\right)^2\cdot\frac{1}{1+\cos x}\to1\cdot\frac12=\frac12$$
> **(k)** Multiply the top by its conjugate, and use $y-1=(\sqrt y-1)(\sqrt y+1)$:
> $$\frac{(y+4)-(4y+1)}{(\sqrt y-1)(\sqrt{y+4}+\sqrt{4y+1})}=\frac{-3(\sqrt y+1)}{\sqrt{y+4}+\sqrt{4y+1}}\to\frac{-6}{2\sqrt5}=-\frac{3}{\sqrt5}$$

**W7 Q3.** Same as A4: the answer is $0$, by squeeze.

**W7 Q4.** Use the Squeeze Theorem to show the limit below is $0$. Then prove it from the definition.

$$\lim_{x\to\infty}\frac{\sin x}{\sqrt x}=0$$

> [!success]- Solution
> **Squeeze:** $-\frac1{\sqrt x}\le\frac{\sin x}{\sqrt x}\le\frac1{\sqrt x}$, and both bounds $\to0$.
>
> **Definition:** let $\varepsilon>0$ and $R=\frac1{\varepsilon^2}$. If $x>R$, then
> $$\left|\frac{\sin x}{\sqrt x}\right|\le\frac1{\sqrt x}<\frac1{\sqrt R}=\varepsilon$$

**⭐ W7 Q5 (= W8 Q2).** Compute (distinguish DNE / $\pm\infty$):

$$\text{(a) }\lim_{u\to2}\frac{1}{2-u}\left(\sqrt{\frac{u+2}{u-1}}-2\right)\qquad\text{(b) }\lim_{x\to\infty}\left[x+\sqrt{x^2-x}\right]\qquad\text{(c) }\lim_{x\to-\infty}\left[x+\sqrt{x^2-x}\right]$$

> [!success]- Solution
> **(a)** Multiply by the conjugate $\sqrt{\cdot}+2$:
> $$\frac{\frac{u+2}{u-1}-4}{(2-u)\left(\sqrt{\frac{u+2}{u-1}}+2\right)}=\frac{\frac{3(2-u)}{u-1}}{(2-u)(\cdots)}=\frac{3}{(u-1)\left(\sqrt{\frac{u+2}{u-1}}+2\right)}\to\frac{3}{1\cdot4}=\frac34$$
> **(b)** $\infty$: both terms $\to\infty$, so there's no indeterminate form.
>
> **(c)** This one is $-\infty+\infty$, so multiply by the conjugate:
> $$x+\sqrt{x^2-x}=\frac{x^2-(x^2-x)}{x-\sqrt{x^2-x}}=\frac{x}{x-\sqrt{x^2-x}}$$
> For $x<0$: $\sqrt{x^2-x}=|x|\sqrt{1-\frac1x}=-x\sqrt{1-\frac1x}$. So
> $$\frac{x}{x\left(1+\sqrt{1-\frac1x}\right)}=\frac{1}{1+\sqrt{1-\frac1x}}\to\frac12$$
> The trap is writing $\sqrt{x^2}=x$ when $x<0$.

### Week 8: More continuity and basic derivatives

**W8 Q3.** Show that the following equation has at least two different solutions:

$$5x^2=2\cos x$$

> [!success]- Solution
> Let $g(x)=5x^2-2\cos x$, which is continuous. $g(0)=-2<0$ and $g(1)=5-2\cos1\ge3>0$, so by the **IVT** there is $c\in(0,1)$ with $g(c)=0$.
>
> $g$ is even, so $g(-c)=g(c)=0$ too, and $-c\ne c$ because $c>0$. That's two solutions.

**⭐ W8 Q4.** Let $f$ be continuous on $\mathbb R$ with $\displaystyle\lim_{x\to\infty}f(x)=\infty$ and $\displaystyle\lim_{x\to-\infty}f(x)=-\infty$. Prove $f$ is surjective.

> [!success]- Solution
> Let $v\in\mathbb R$.
> - By the definition of $\lim_{x\to\infty}f=\infty$ (with $N=v$), there is $R_1$ with $x>R_1\implies f(x)>v$. Pick $b>R_1$, so $f(b)>v$.
> - By the definition of $\lim_{x\to-\infty}f=-\infty$, there is $R_2$ with $x<R_2\implies f(x)<v$. Pick $a<\min(R_2,b)$, so $f(a)<v$ and $a<b$.
>
> $f$ is continuous on $[a,b]$ and $f(a)<v<f(b)$, so by the **IVT** there is $c\in(a,b)$ with $f(c)=v$.

**W8 Q5.** Tangent line to the graph at $x=4$:

$$f(x)=3x^2-2\sqrt x-50$$

> [!success]- Solution
> $f(4)=48-4-50=-6$ and $f'(x)=6x-\frac1{\sqrt x}$, so $f'(4)=24-\frac12=\frac{47}2$. The tangent line is
> $$y=-6+\frac{47}{2}(x-4)$$

**W8 Q6.** Find the two lines tangent to $y=x^2$ that pass through $\left(\frac34,0\right)$.

> [!success]- Solution
> The tangent at $(a,a^2)$ is $y=a^2+2a(x-a)=2ax-a^2$. For it to pass through $(\frac34,0)$:
> $$0=\frac32a-a^2\implies a=0\text{ or }a=\frac32$$
> The lines are $\boxed{y=0}$ and $\boxed{y=3x-\frac94}$.

**⭐ W8 Q7.** $f$ has domain $\mathbb R$ and $|f(x)|\le|\sin x|$ for all $x$. Prove that $g(x)=xf(x)$ is differentiable at $0$.

> [!success]- Solution
> $|f(0)|\le|\sin0|=0$, so $f(0)=0$ and $g(0)=0$. Then
> $$\frac{g(x)-g(0)}{x-0}=\frac{xf(x)}{x}=f(x)$$
> and $-|\sin x|\le f(x)\le|\sin x|$, with both bounds $\to0$. By squeeze, $f(x)\to0$. So $g'(0)=0$.

**W8 Q8 (Taylor polynomials).**
(a) Find a cubic $p$ with $p(0)=1$, $p'(0)=5$, $p''(0)=-7$, $p'''(0)=2$.
(b) Find the lowest-degree $q$ with $q^{(k)}(0)=c_k$ for $k=0,\dots,n$ ($c_n\ne0$).
(c) $f(x)=(x-3)^7$: find $f^{(n)}(3)$.
(d) The same as (b), but with $q^{(k)}(a)=c_k$.

> [!success]- Solution
> **(a)** Write $p=ax^3+bx^2+cx+d$. Then $d=1$, $c=5$, $2b=-7$, $6a=2$, so
> $$p(x)=\frac{x^3}3-\frac72x^2+5x+1$$
> **(b)** The $k$-th derivative of $x^k$ at $0$ is $k!$, so
> $$q(x)=\sum_{k=0}^{n}\frac{c_k}{k!}x^k$$
> This has degree $n$.
>
> **(c)** $f^{(7)}(3)=7!=5040$, and $f^{(n)}(3)=0$ for every $n\ne7$ (for $n<7$ a factor $(x-3)$ remains; for $n>7$ the derivative is identically $0$).
>
> **(d)**
> $$q(x)=\sum_{k=0}^{n}\frac{c_k}{k!}(x-a)^k$$

### Week 9: More derivatives

**W9 Q2.** Differentiate (try two ways each):

$$\text{(a) }\frac{1+x\sin x}{x+\cos x}\qquad\text{(b) }\sqrt{\frac{x+1}{x-1}}\qquad\text{(c) }\sqrt{x+\sqrt{x+\sqrt{x+1}}}\qquad\text{(d) }\sin^2x+\sin(x^2)+\sin(2x)+\sin^2(x^2)$$

> [!success]- Solution
> **(a)** Quotient rule:
> $$f'=\frac{(\sin x+x\cos x)(x+\cos x)-(1+x\sin x)(1-\sin x)}{(x+\cos x)^2}$$
> **(b)** Chain rule, then the quotient rule inside:
> $$f'=\frac12\sqrt{\frac{x-1}{x+1}}\cdot\frac{(x-1)-(x+1)}{(x-1)^2}=-\frac{1}{(x-1)^2}\sqrt{\frac{x-1}{x+1}}$$
> **(c)** Chain rule, layer by layer:
> $$f'=\frac{1+\dfrac{1}{2\sqrt{x+\sqrt{x+1}}}\left(1+\dfrac{1}{2\sqrt{x+1}}\right)}{2\sqrt{x+\sqrt{x+\sqrt{x+1}}}}$$
> **(d)**
> $$f'=2\sin x\cos x+2x\cos(x^2)+2\cos(2x)+4x\sin(x^2)\cos(x^2)=\sin2x+2x\cos(x^2)+2\cos2x+2x\sin(2x^2)$$

**W9 Q3.** Curve:

$$x^2y^3-2xy=\sin(xy)$$

(a) Why doesn't $\frac{dy}{dx}$ make sense at $(0,0)$? (b) Find $\frac{dy}{dx}$ in terms of $x$ and $y$.

> [!success]- Solution
> **(a)** Every point with $x=0$ satisfies the equation ($0=\sin0$), and so does every point with $y=0$. So **both axes** are part of the curve, and they cross at $(0,0)$ in different directions. There's no single tangent slope there.
>
> **(b)** Differentiate implicitly:
> $$2xy^3+3x^2y^2y'-2y-2xy'=\cos(xy)(y+xy')$$
> $$y'=\frac{y\cos(xy)+2y-2xy^3}{3x^2y^2-2x-x\cos(xy)}$$
> At $(0,0)$ this is $\frac00$, which matches (a). The slope depends on both $x$ and $y$ because different points of the curve can share an $x$-value.

**W9 Q5.** When we implicitly differentiate, can we always isolate $y'$?

> [!success]- Solution
> Algebraically, almost: the chain rule only ever produces $y'$ to the **first power**, so the equation is linear in $y'$, i.e. $A(x,y)\,y'=B(x,y)$.
>
> But dividing needs $A(x,y)\ne0$. Where $A=0$ (vertical tangents, or crossing points like $(0,0)$ in Q3), you can't solve for $y'$. Implicit differentiation also assumes $y$ is a differentiable function of $x$ near the point, which can fail.

**⭐ W9 Q6.** True or false?
(a) If $f\circ f$ is differentiable, then $f$ is differentiable.
(b) If $f\circ g$ is not differentiable at $a$, then $f$ is not differentiable at $g(a)$ or $g$ is not differentiable at $a$.
(c) If $f\circ g$ and $g$ are differentiable on $\mathbb R$, then $f$ is differentiable on $\mathbb R$.
(d) If $f\circ g$ and $f$ are differentiable on $\mathbb R$, then $g$ is differentiable on $\mathbb R$.

> [!success]- Solution
> **(a) False.** $f=\chi_{\mathbb Q}$: $f$ only outputs $0$ and $1$, both rational, so $f(f(x))=1$ for all $x$. That's differentiable, but $f$ is continuous nowhere.
>
> **(b) True.** This is the contrapositive of the chain rule.
>
> **(c) False.** $g(x)=0$ and $f(x)=|x|$: $f\circ g=0$ and $g$ are differentiable, but $f$ isn't at $0$.
>
> **(d) False.** $f(x)=x^3$ and $g(x)=\sqrt[3]x$: $f\circ g=x$. (Or $f\equiv0$, $g=|x|$.) Compare D5(b).

**⭐ W9 Q7.** Sand falls at $10$ m³/min onto a conical pile whose height is always $\frac38$ of the base diameter. How fast are the height and radius changing when the pile is $2$ m high?

> [!success]- Solution
> $h=\frac38(2r)=\frac34r$, so $r=\frac43h$. Then
> $$V=\frac13\pi r^2h=\frac13\pi\cdot\frac{16h^2}{9}\cdot h=\frac{16\pi}{27}h^3\implies V'=\frac{16\pi}{9}h^2h'$$
> At $h=2$:
> $$10=\frac{64\pi}9h'\implies h'=\boxed{\frac{45}{32\pi}\approx0.45\ \text{m/min}}\qquad r'=\frac43h'=\boxed{\frac{15}{8\pi}\approx0.60\ \text{m/min}}$$

### Week 10: Related rates, logarithmic differentiation, inverses

**W10 Q1.** A watermelon is dropped from a building. You film it from $20$ m across the street, keeping the camera on it. It falls at a constant $2$ m/s. How fast is the camera's angle with the ground changing when the watermelon is $1$ m above the ground?

> [!success]- Solution
> Let $y$ = the watermelon's height ($y'=-2$) and $\theta$ = the camera angle. Then
> $$\tan\theta=\frac{y}{20}\implies\sec^2\theta\,\theta'=\frac{y'}{20}$$
> At $y=1$: $\sec^2\theta=1+\frac1{400}=\frac{401}{400}$, so
> $$\theta'=-\frac{2}{20}\cdot\frac{400}{401}=\boxed{-\frac{40}{401}\approx-0.0998\ \text{rad/s}}$$

**W10 Q2.** A rope of fixed length runs from David's foot, up through a point $P$ on the ceiling ($4$ m above point $Q$ on the floor), and down to Pouya's foot. Pouya is on one side of $Q$ and David on the other. David runs away from Pouya, dragging him. How fast is Pouya moving when David is $4$ m from $Q$, they are $6$ m apart, and David's speed is $1$ m/s?

> [!success]- Solution
> Let $p$ and $d$ be Pouya's and David's distances from $Q$. The rope length is constant:
> $$\sqrt{p^2+16}+\sqrt{d^2+16}=\text{const}\implies\frac{pp'}{\sqrt{p^2+16}}+\frac{dd'}{\sqrt{d^2+16}}=0$$
> At this instant $d=4$, $p=6-4=2$, $d'=1$, so $\sqrt{p^2+16}=2\sqrt5$ and $\sqrt{d^2+16}=4\sqrt2$:
> $$\frac{2p'}{2\sqrt5}=-\frac{4}{4\sqrt2}\implies p'=-\frac{\sqrt5}{\sqrt2}=-\frac{\sqrt{10}}2$$
> Pouya is dragged toward $Q$ at $\boxed{\frac{\sqrt{10}}2\approx1.58\ \text{m/s}}$.

**W10 Q3** ⭐ *(Ivan called this one really good)*. Let $f(x)>0$ for all $x$ and $h(x)=[f(x)]^{g(x)}$. Derive a formula for $h'(x)$.

> [!success]- Solution
> Assume $f$ and $g$ are differentiable. Rewrite with base $e$ (possible since $f>0$):
> $$h(x)=e^{g(x)\ln f(x)}$$
> By the chain rule and product rule:
> $$h'(x)=e^{g\ln f}\left(g'\ln f+g\cdot\frac{f'}{f}\right)=\boxed{[f(x)]^{g(x)}\left(g'(x)\ln f(x)+\frac{g(x)f'(x)}{f(x)}\right)}$$
> Log differentiation gives the same thing: $\ln h=g\ln f\implies\frac{h'}{h}=g'\ln f+g\frac{f'}{f}$.
>
> **Why it's a great check:** it contains both special cases.
> - $g$ constant ($g=n$): $h'=f^n\cdot\frac{nf'}{f}=nf^{n-1}f'$, the power rule + chain rule.
> - $f$ constant ($f=a$): $h'=a^g\,g'\ln a$, the exponential rule + chain rule.

**W10 Q4.** Differentiate:

$$\text{(a) }\left(\sin(x^2)\right)^{x^2}\qquad\text{(b) }(\sin x)^{(\cos x)^{\tan x}}\qquad\text{(c) }\log_{x^2+1}(\sin x)\qquad\text{(d) }\ln(cx),\ c\ne0$$

> [!success]- Solution
> **(a)** Using Q3 with $f=\sin(x^2)$ and $g=x^2$:
> $$f'=\left(\sin x^2\right)^{x^2}\left(2x\ln(\sin x^2)+x^2\cdot\frac{2x\cos x^2}{\sin x^2}\right)=\left(\sin x^2\right)^{x^2}\left(2x\ln(\sin x^2)+2x^3\cot(x^2)\right)$$
> **(b)** Let $u=(\cos x)^{\tan x}$. By Q3,
> $$u'=u\left(\sec^2x\ln(\cos x)-\tan^2x\right)$$
> Then $f=(\sin x)^u$, and by Q3 again:
> $$f'=(\sin x)^u\left(u'\ln(\sin x)+u\cot x\right)=(\sin x)^u\,u\Big[\big(\sec^2x\ln\cos x-\tan^2x\big)\ln\sin x+\cot x\Big]$$
> **(c)** By change of base, $f=\dfrac{\ln(\sin x)}{\ln(x^2+1)}$, so
> $$f'=\frac{\cot x\,\ln(x^2+1)-\ln(\sin x)\cdot\frac{2x}{x^2+1}}{\left(\ln(x^2+1)\right)^2}$$
> **(d)** By the chain rule, $\frac{c}{cx}=\frac1x$, whatever the sign of $c$. (Or: $\ln(cx)=\ln|c|+\ln|x|$ on its domain.)

**⭐ W10 Q5.** Let $f(x)=\dfrac{x-3}{x+4}$.
(a) Natural domain and range. (b) Prove $f$ is injective. (c) Find $f^{-1}$. (d) Compute $(f^{-1})'$ two ways. (Compare A21.)

> [!success]- Solution
> **(a)** Domain $\mathbb R\setminus\{-4\}$ and range $\mathbb R\setminus\{1\}$, since $f(x)=1-\dfrac{7}{x+4}$ never equals $1$.
>
> **(b)** If $f(x_1)=f(x_2)$, then $1-\frac7{x_1+4}=1-\frac7{x_2+4}$, so $x_1+4=x_2+4$ and $x_1=x_2$.
>
> **(c)** Solve $y=\frac{x-3}{x+4}$: $\ x(y-1)=-3-4y$, so
> $$f^{-1}(x)=\frac{4x+3}{1-x}$$
> **(d)** Directly:
> $$(f^{-1})'(x)=\frac{4(1-x)+(4x+3)}{(1-x)^2}=\frac{7}{(1-x)^2}$$
> With the inverse function theorem: $f'(t)=\frac{7}{(t+4)^2}$ and $f^{-1}(x)+4=\frac{7}{1-x}$, so
> $$(f^{-1})'(x)=\frac{(f^{-1}(x)+4)^2}{7}=\frac{49}{7(1-x)^2}=\frac{7}{(1-x)^2}\ ✓$$

**W10 Q6.** Let $f:[0,\infty)\to[0,\infty)$, $f(x)=\sqrt x$. Show $f$ is bijective, find $f^{-1}$, and compute $(f^{-1})'$ two ways.

> [!success]- Solution
> **Injective:** $\sqrt a=\sqrt b\implies a=b$ (square both sides). **Surjective:** for $y\ge0$, $f(y^2)=y$.
>
> So $f^{-1}(x)=x^2$ on $[0,\infty)$, and directly $(f^{-1})'(x)=2x$.
>
> **Inverse function theorem:** $f'(t)=\frac1{2\sqrt t}$, so
> $$(f^{-1})'(x)=\frac{1}{f'(x^2)}=2\sqrt{x^2}=2x\qquad(x>0)$$
> At $x=0$ the formula breaks, because $f'(0)$ doesn't exist ($\sqrt x$ has a vertical tangent there). Yet $(f^{-1})'(0)=0$ is fine: vertical tangent ↔ horizontal tangent.

**W10 Q7.** $f(x)=\cos(2x)+e^x+3x+1$ is injective. Find $(f^{-1})'(3)$.

> [!success]- Solution
> Find the input that gives $3$: $f(0)=1+1+0+1=3$, so $f^{-1}(3)=0$.
>
> $f'(x)=-2\sin(2x)+e^x+3$, so $f'(0)=4$. Then
> $$(f^{-1})'(3)=\frac{1}{f'(0)}=\boxed{\frac14}$$


---

## Part G: 2SA3 Stage 1

The TT2 page says 2SA2 and 2SA3 content is fair game, and any new definitions will be given to you. Full notes on the definitions: [[2SA3 - Strong and Shrinking Functions (Uniform Continuity and Lipschitz)]].

### ⭐ G1. IVT and EVT from limits at infinity (7 pts)

$f$ has domain $\mathbb R$ and is continuous everywhere, with

$$\lim_{x\to\infty}f(x)=137,\qquad\lim_{x\to-\infty}f(x)=4,\qquad f(0)=0$$

(a) Prove $f(x)=\pi$ has at least two **different** solutions.
(b) Must $f$ have a global minimum on $\mathbb R$? Prove your answer.

You must use the **definitions** of the two limits before applying any theorem.

> [!success]- Solution
> **(a)** Use the limit definitions to find points where $f>\pi$.
> - $\lim_{x\to\infty}f=137$ with $\varepsilon=137-\pi>0$: there is $R_1$ with $x>R_1\implies|f(x)-137|<137-\pi$, so $f(x)>\pi$. Pick $b>\max(R_1,0)$. Then $f(b)>\pi$.
> - $\lim_{x\to-\infty}f=4$ with $\varepsilon=4-\pi>0$: there is $R_2$ with $x<R_2\implies|f(x)-4|<4-\pi$, so $f(x)>\pi$. Pick $a<\min(R_2,0)$. Then $f(a)>\pi$.
>
> $f$ is continuous on $[a,0]$ and $[0,b]$, and $f(0)=0<\pi$. By the **IVT**:
> - on $[a,0]$ there is $c_1\in(a,0)$ with $f(c_1)=\pi$;
> - on $[0,b]$ there is $c_2\in(0,b)$ with $f(c_2)=\pi$.
>
> $c_1<0<c_2$, so they are different.
>
> **(b)** **Yes.** The idea: far out, $f$ is positive, and $f(0)=0$, so the minimum is in the middle.
> - With $\varepsilon=137$: there is $R_1$ with $x>R_1\implies f(x)>0$.
> - With $\varepsilon=4$: there is $R_2$ with $x<R_2\implies f(x)>0$.
>
> Let $a<\min(R_2,0)$ and $b>\max(R_1,0)$. $f$ is continuous on the closed interval $[a,b]$, so by the **EVT** it has a minimum there at some $c\in[a,b]$. Since $0\in[a,b]$:
> $$f(c)\le f(0)=0$$
> Outside $[a,b]$: if $x>b$ then $x>R_1$, so $f(x)>0\ge f(c)$; if $x<a$ then $x<R_2$, so $f(x)>0\ge f(c)$. So $f(c)\le f(x)$ for **all** $x\in\mathbb R$, a global minimum.

### New definitions (for G2–G4)

$f$ has domain an interval $D$.

**$f$ is strong:**

$$\forall\varepsilon>0,\ \exists\delta>0\text{ such that }\forall x,y\in D,\ |x-y|<\delta\implies|f(x)-f(y)|<\varepsilon$$

**$f$ is $\alpha$-shrinking** ($\alpha>0$ constant):

$$\forall x,y\in D,\ |f(x)-f(y)|\le\alpha|x-y|$$

Compare **continuous**, where $\delta$ is chosen after the point $y$:

$$\forall y\in D,\ \forall\varepsilon>0,\ \exists\delta>0\text{ such that }\forall x\in D,\ |x-y|<\delta\implies|f(x)-f(y)|<\varepsilon$$

### G2. Shrinking ⇒ strong ⇒ continuous (4 pts)

$D$ is an open interval.
(a) If $f$ is $\alpha$-shrinking for some $\alpha>0$, then $f$ is strong.
(b) If $f$ is strong, then $f$ is continuous.

> [!success]- Solution
> **(a)** Let $\varepsilon>0$ and let $\delta=\dfrac\varepsilon\alpha>0$. Let $x,y\in D$ with $|x-y|<\delta$. Then
> $$|f(x)-f(y)|\le\alpha|x-y|<\alpha\delta=\varepsilon$$
> **(b)** Let $y\in D$ and $\varepsilon>0$. Since $f$ is strong, there is a $\delta>0$ that works for **all** pairs in $D$. Use that $\delta$. For any $x\in D$ with $|x-y|<\delta$, the pair $(x,y)$ is one of those pairs, so $|f(x)-f(y)|<\varepsilon$.
>
> Don't write $\delta=\varepsilon/\alpha$ here: there's no $\alpha$ in this part. You assume strong, so you just **take** the $\delta$ it gives you.

### ⭐ G3. The domain matters (6 pts)

(a) $g(x)=x^2$ on $D=[0,7]$. Prove $g$ is strong.
(b) $h(x)=x^2$ on $D=(0,\infty)$. Prove $h$ is **not** strong.

> [!success]- Solution
> **(a)** For $x,y\in[0,7]$:
> $$|x^2-y^2|=|x+y|\,|x-y|\le14|x-y|$$
> So $g$ is $14$-shrinking, and therefore strong by G2(a). (Directly: $\delta=\frac\varepsilon{14}$.)
>
> **(b)** Negation of strong:
> $$\exists\varepsilon>0,\ \forall\delta>0,\ \exists x,y\in D,\ |x-y|<\delta\text{ and }|h(x)-h(y)|\ge\varepsilon$$
> Take $\varepsilon=1$. Let $\delta>0$ and choose
> $$y=\frac1\delta,\qquad x=\frac1\delta+\frac\delta2$$
> Both are positive, and $|x-y|=\frac\delta2<\delta$. But
> $$|x^2-y^2|=(x+y)|x-y|=\left(\frac2\delta+\frac\delta2\right)\frac\delta2=1+\frac{\delta^2}4\ge1$$
> **Intuition:** pairs a fixed distance apart get outputs further and further apart as you move right, because $x^2$ gets steeper. So no single $\delta$ works everywhere.

### ⭐ G4. Products and compositions (5 pts)

$f,g$ have domain $\mathbb R$, $f$ is $\alpha$-shrinking and $g$ is $\beta$-shrinking. True or false?
(a) $fg$ is $\gamma$-shrinking for some $\gamma>0$.
(b) $f\circ g$ is $\gamma$-shrinking for some $\gamma>0$.

> [!success]- Solution
> **(a) False.** $f(x)=g(x)=x$ are both $1$-shrinking. Suppose $x^2$ were $\gamma$-shrinking. Take $x=\gamma+1$ and $y=0$:
> $$|x^2-y^2|=(\gamma+1)^2>\gamma(\gamma+1)=\gamma|x-y|$$
> That's a contradiction, so no $\gamma$ works.
>
> **(b) True**, with $\gamma=\alpha\beta$. For all $x,y$:
> $$|f(g(x))-f(g(y))|\le\alpha|g(x)-g(y)|\le\alpha\beta|x-y|$$

### G5. Warm-ups

**(i)** Write the definitions of "$f$ is not strong" and "$f$ is not $\frac17$-shrinking".

> [!success]- Solution
> Not strong:
> $$\exists\varepsilon>0,\ \forall\delta>0,\ \exists x,y\in D,\ |x-y|<\delta\ \text{and}\ |f(x)-f(y)|\ge\varepsilon$$
> Not $\frac17$-shrinking:
> $$\exists x,y\in D,\ |f(x)-f(y)|>\frac17|x-y|$$

**(iv)** $f(x)=mx+b$ with $m\ne0$, domain $\mathbb R$. Prove $f$ is strong and find **all** $\alpha$ for which it is $\alpha$-shrinking.

> [!success]- Solution
> $|f(x)-f(y)|=|m|\,|x-y|$, so $f$ is $\alpha$-shrinking exactly when $\alpha\ge|m|$. (If $\alpha<|m|$, then $x=1,y=0$ gives $|m|>\alpha$.) It is strong by G2(a).

**(v)** If $f$ (domain $\mathbb R$) is $\alpha$-shrinking for **every** $\alpha>0$, then $f$ is constant.

> [!success]- Solution
> Suppose $f(x)\ne f(y)$ for some $x,y$ (so $x\ne y$). Take
> $$\alpha=\frac{|f(x)-f(y)|}{2|x-y|}>0$$
> Then $|f(x)-f(y)|\le\alpha|x-y|=\frac12|f(x)-f(y)|$, which is impossible for a positive number. So $f(x)=f(y)$ for all $x,y$.

**(vii)** For $0<\alpha<\beta$, find $f$ that is $\beta$-shrinking but not $\alpha$-shrinking.

> [!success]- Solution
> $f(x)=\beta x$, by (iv).

**⭐ (ix)** $f(x)=\sqrt x$ on $[0,1]$. (a) Prove $f$ is strong (you may use $|\sqrt x-\sqrt y|\le\sqrt{|x-y|}$). (b) Prove $f$ is not $\alpha$-shrinking for any $\alpha>0$.

> [!success]- Solution
> **(a)** Let $\varepsilon>0$ and $\delta=\varepsilon^2$. If $|x-y|<\delta$:
> $$|\sqrt x-\sqrt y|\le\sqrt{|x-y|}<\sqrt\delta=\varepsilon$$
> **(b)** Let $\alpha>0$. With $y=0$, $\alpha$-shrinking would need $\sqrt x\le\alpha x$ for all $x\in[0,1]$. Take
> $$x=\min\left(1,\frac{1}{4\alpha^2}\right)>0$$
> Then $\alpha\sqrt x\le\alpha\cdot\frac1{2\alpha}=\frac12$, so $\alpha x=\sqrt x\cdot\alpha\sqrt x\le\frac12\sqrt x<\sqrt x$. That breaks the inequality.
>
> So strong does **not** imply shrinking: $\sqrt x$ is too steep near $0$.
