---
course: MAT102
type: test-prep
test: Term Test 2
date: 2026-11-24
tags: [mat102, tt2, practice]
---
# MAT102 Term Test 2 — Problem Set

All the TT2 practice is collected here: the **Winter 2026 Test 2** (long answer and multiple choice), the **end-of-reading exercises** for Readings 07–09, the **in-class worksheets** for Weeks 7–9, the **tutorial activities** for Weeks 8–10, every **MathMatize** pre-class quiz and Classroom MC question for Weeks 7–9, and a few extra picks of mine. Each solution is in a collapsed **Solution** box, so try the problem before you open it.

Logistics, definitions, theorems and traps: [[MAT102 Test 2 Outline]].

**How to use this:** do Part A under test conditions (110 min, no aids) first, then work through Parts B–F by topic. Every answer to a computation was checked by running it in code.

**⭐ = harder questions that are the most useful for a last review.** Short on time? Do only the starred ones.

Parts marked **(not on our TT2)** come from Readings 05–06 (functions, cardinality), which the Winter test covered and ours doesn't. They're still useful for the final.

**Progress**
- [ ] Part A: Winter 2026 Test 2 (long answer + MC)
- [ ] Part B: Reading exercises (R07, R08, R09)
- [ ] Part C: In-class worksheets (Weeks 7–9)
- [ ] Part D: Tutorial activities (Weeks 8–10)
- [ ] Part E: MathMatize (pre-class quizzes + Classroom MC, Weeks 7–9)
- [ ] Part F: Extra picks

---

## Part A: Winter 2026 Test 2

5 problems, 110 minutes, no aids. Problem 5 is the 10 multiple-choice questions. The solutions are the official ones, slightly expanded.

### A1. Injective / surjective (3 pts each)

Is each function injective, surjective, both, or neither? Justify.

**(i)** $f:\mathbb Z^+\times\mathbb Z^+\to\mathbb Z^+$, $f(x,y)=\gcd(x,y)$

> [!success]- Solution
> **Surjective, not injective.** For any $n\in\mathbb Z^+$, $f(n,n)=\gcd(n,n)=n$.
> Not injective: $\gcd(2,3)=\gcd(2,5)=1$, but $(2,3)\ne(2,5)$.

**(ii)** $g:\mathbb Z^+\times\mathbb Z^+\to\mathbb Z^+$, $g(x,y)=7^x11^y$

> [!success]- Solution
> **Injective, not surjective.** $7$ and $11$ are prime. If $7^x11^y=7^z11^w$, then by the **Fundamental Theorem of Arithmetic** (uniqueness of the factorization), $x=z$ and $y=w$.
> Not surjective: $2$ has prime factorization $2$, so by FTA $7^x11^y\ne2$ for all $x,y$.

**(iii)** $h:\mathbb Z_{15}\to\mathbb Z_{15}$, $h(x)=11x$

> [!success]- Solution
> **Bijective.** Table:
>
> | $x$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 |
> |---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
> | $11x$ | 0 | 11 | 7 | 3 | 14 | 10 | 6 | 2 | 13 | 9 | 5 | 1 | 12 | 8 | 4 |
>
> Every class appears exactly once. Without a table: if $11x\equiv11y\pmod{15}$, then because $\gcd(11,15)=1$ you can **cancel** the $11$, so $x\equiv y$. That makes $h$ injective, and an injective map from a finite set to a set of the same size is also surjective.

### A2. Countably infinite (3 pts each) **(not on our TT2)**

Prove each set is countably infinite: (i) the positive perfect squares; (ii) the finite-length binary strings; (iii) $\{L_{p,q}:(p,q)\in\mathbb Z^+\times\mathbb Z^+\}$, where $L_{p,q}$ is the line through $(0,0)$ and $(p,q)$.

> [!success]- Solution
> **(i)** $f:\mathbb Z^+\to A$, $f(n)=n^2$. Injective: $n^2=m^2\Rightarrow(n-m)(n+m)=0$, and $n+m>0$, so $n=m$. Surjective by the definition of a perfect square.
>
> **(ii)** Let $A_n$ be the set of strings of length $n$ ($2^n$ of them, so finite). Then $A=\bigcup_{n\ge1}A_n$ is a countable union of finite sets, so it is countable. It's infinite because it contains a string of every length.
>
> **(iii)** $f(p,q)=L_{p,q}$ is a surjection from the countable set $\mathbb Z^+\times\mathbb Z^+$, so $|A|\le|\mathbb Z^+\times\mathbb Z^+|$ and $A$ is countable. It's infinite because $n\mapsto L_{1,n}$ is injective: the lines have different slopes $n$.

### ⭐ A3. gcd of $a+b$ and $a-b$ (7 pts)

**(i)** (1 pt) Find coprime positive $a,b$ with $\gcd(a+b,a-b)=1$, and another coprime pair with $\gcd(a+b,a-b)=2$.

> [!success]- Solution
> $a=3,b=2$: $\gcd(5,1)=1$. $\ a=3,b=5$: $\gcd(8,-2)=2$. (Any two distinct odd primes give $2$: their sum and difference are both even.)

**(ii)** (3 pts) If $\gcd(a,b)=1$, show $\gcd(a+b,a-b)\mid2a$ and $\gcd(a+b,a-b)\mid2b$.

> [!success]- Solution
> Let $d=\gcd(a+b,a-b)$. Then $d\mid(a+b)$ and $d\mid(a-b)$, so by Prop 3(ii) $d$ divides their sum and difference:
> $$d\mid(a+b)+(a-b)=2a,\qquad d\mid(a+b)-(a-b)=2b.$$

**(iii)** (3 pts) If $\gcd(a,b)=1$, show $\gcd(a+b,a-b)=1$ or $2$.

> [!success]- Solution
> By (ii), $d$ is a common divisor of $2a$ and $2b$, so $d\mid\gcd(2a,2b)$ (Corollary 15). By the worksheet result $\gcd(ad,bd)=d\gcd(a,b)$ (Part C1):
> $$\gcd(2a,2b)=2\gcd(a,b)=2.$$
> So $d\mid2$, and $d>0$, so $d=1$ or $d=2$.

### ⭐ A4. Sums of two squares (7 pts)

**(i)** (3 pts) Show $n^2\equiv0$ or $1\pmod4$ for every positive integer $n$.

> [!success]- Solution
> If $n=2m$: $n^2=4m^2\equiv0$. If $n=2m+1$: $n^2=4m^2+4m+1\equiv1\pmod4$.
> (Or check the four classes: $0^2\equiv0,\ 1^2\equiv1,\ 2^2\equiv0,\ 3^2\equiv1$.)

**(ii)** (3 pts) Are there integer solutions to $n^2+m^2=2027$?

> [!success]- Solution
> **No.** $2027=4\cdot506+3\equiv3\pmod4$. By (i), $n^2,m^2\in\{0,1\}\pmod4$, so
> $$n^2+m^2\equiv0+0,\ 0+1,\ 1+1\equiv0,1,2\pmod4.$$
> It is never $3$, so there's no solution. (This uses that $+$ is well-defined mod $4$.)

**(iii)** (1 pt) Why are there infinitely many numbers that are not a sum of two squares?

> [!success]- Solution
> By (ii), every number $\equiv3\pmod4$ fails, and $\{4n+3:n\in\mathbb N_0\}$ is infinite.

### A5. Multiple choice (1 pt each)

**MC1.** $f:\mathbb R\times\mathbb R\to\mathbb R$, $f(x,y)=x^2$. What is $f^{-1}([-1,1])$? **(not on our TT2)**
A. $[0,1]$ B. $\mathbb R$ C. $[0,1]\times\mathbb R$ D. $[-1,1]\times\mathbb R$ E. None

> [!success]- Solution
> **D.** $x^2\in[-1,1]\iff x\in[-1,1]$, and $y$ is free. A preimage lives in the **domain** $\mathbb R\times\mathbb R$.

**MC2.** "If $f:A\to B$ is injective, then $|f^{-1}(V)|=|V|$ for all $V\subseteq B$." **(not on our TT2)**
A. Always true B. Never true C. True if $A$ finite D. True if $B$ finite E. None of these

> [!success]- Solution
> **E.** It holds only for $V$ inside the range. If $V$ contains points nobody maps to, $|f^{-1}(V)|<|V|$ (e.g. $V=B$ with $f$ not surjective). It's also sometimes true, so B is wrong.

**MC3.** $\Gamma(f)=\{(a,f(a)):a\in A\}$. Which is true? **(not on our TT2)**
A. $|\Gamma(f)|=|A|$ B. $=|B|$ C. $=|B^A|$ D. $=|A\times B|$ E. None

> [!success]- Solution
> **A.** $a\mapsto(a,f(a))$ is a bijection $A\to\Gamma(f)$.

**MC4.** $a,b,c,m,n\in\mathbb Z^+$. Which is **not** true?
A. $a\equiv b\ (n)$, $m\mid n\Rightarrow a\equiv b\ (m)$
B. $a\equiv b\ (n)\Rightarrow ac\equiv bc\ (cn)$
C. $a\equiv b\ (n)$, $d\mid a,b,n\Rightarrow a/d\equiv b/d\ (n/d)$
D. $a\equiv b\ (n)\Rightarrow ac\equiv bc\ (c)$
E. All are correct

> [!success]- Solution
> **E.** A: $m\mid n\mid(b-a)$. B: $b-a=nk\Rightarrow bc-ac=(cn)k$. C: $\frac bd-\frac ad=\frac nd k$. D: both sides are $\equiv0\pmod c$.

**MC5.** $f:A\to A$. I. $f$ injective $\Rightarrow f\circ f$ injective. II. surjective $\Rightarrow$ surjective. III. bijective $\Rightarrow$ bijective. **(not on our TT2)**

> [!success]- Solution
> **A (all three true).** Compositions of injections are injective, of surjections surjective.

**MC6.** In the Euclidean algorithm for $\gcd(468,192)$, the sum of all remainders is:
A. 85 B. 120 C. 136 D. 140 E. None

> [!success]- Solution
> **B.**
> $$468=192\cdot2+84,\quad192=84\cdot2+24,\quad84=24\cdot3+12,\quad24=12\cdot2+0$$
> $84+24+12+0=120$.

**⭐ MC7.** All integer solutions of $34x+12y=4$:
A. $x=-2+6k,\ y=6-17k$ B. $x=-1+12k,\ y=3-34k$ C. $x=-2+12k,\ y=6-34k$ D. $x=-2+6k,\ y=6+17k$ E. None

> [!success]- Solution
> **A.** $\gcd(34,12)=2$ and $34(-2)+12(6)=-68+72=4$ ✓. Steps are $\frac{12}2=6$ and $\frac{34}2=17$ with **opposite signs**. B fails the particular solution check ($-34+36=2$); C steps by $12, 34$ (misses solutions); D has the same sign.

**⭐ MC8.** Alternate proof of infinitely many primes: $n_1=2$, $n_k=n_1n_2\cdots n_{k-1}+1$. For $r<s$, $d=\gcd(n_r,n_s)$ divides $n_1\cdots n_{s-1}$ and $n_s$, so $d\mid1$. Pairwise coprime numbers each have a distinct prime factor. What's wrong?

> [!success]- Solution
> **E. The proof is correct.** Each $n_k>1$ has a prime factor (FTA). If $n_r$ and $n_s$ shared one, it would divide their gcd, which is $1$. So the prime factors are all different, and there are infinitely many $n_k$.

**⭐ MC9.** $p$ prime, $a\in\{1,\dots,p-1\}$. Which is an integer solution of $ax\equiv b\pmod p$?
A. $a^{p-2}b$ B. $b/a$ C. $\gcd(a,b)$ D. $b^{p-1}$ E. None

> [!success]- Solution
> **A.** By FLT, $a\cdot a^{p-2}b=a^{p-1}b\equiv b\pmod p$. ($b/a$ needn't be an integer.)

**MC10.** Which is **not** correct (all $x\in\mathbb Z$)?
A. $x^2+1\equiv(x+1)^2\ (2)$ B. $x^2\equiv x\ (2)$ C. $x(x+1)\equiv0\ (2)$ D. $(x-1)(x+1)\equiv x\ (2)$ E. None

> [!success]- Solution
> **D.** $(x-1)(x+1)=x^2-1\equiv x-1\equiv x+1\pmod 2$, not $x$ (try $x=0$: $-1\not\equiv0$). A: $(x+1)^2-x^2-1=2x$. B: $x^2-x=x(x-1)$ is even. C: consecutive integers.

---

## Part B: Reading exercises

### Reading 07: The Euclidean Algorithm

**B1 (Ex 2).** For which $n$ is $n\mid0$? For which $n$ is $0\mid n$?

> [!success]- Solution
> $n\mid0$ for **every** $n$ ($0=n\cdot0$). $0\mid n$ only for $n=0$ ($n=0\cdot k$ forces $n=0$).

**B2 (Ex 4).** Prove Prop 3 (iii)–(v): (iii) $a\mid b$, $a\mid(b+c)\Rightarrow a\mid c$; (iv) $a\mid b$, $b\mid a\Rightarrow a=\pm b$; (v) $b\ne0$, $a\mid b\Rightarrow|a|\le|b|$.

> [!success]- Solution
> **(iii)** $b=ak$, $b+c=a\ell$, so $c=a(\ell-k)$.
>
> **(v)** $b=ak$ with $k\ne0$ (since $b\ne0$), so $|k|\ge1$ and $|b|=|a||k|\ge|a|$.
>
> **(iv)** If $a=0$ then $b=0\cdot k=0=a$. Otherwise $b\ne0$ too, and by (v) $|a|\le|b|\le|a|$, so $|a|=|b|$, i.e. $a=\pm b$.

**B3 (Ex 7).** Slick proof that $3\mid n^3-n$.

> [!success]- Solution
> $n^3-n=(n-1)n(n+1)$, a product of three consecutive integers, and one of any three consecutive integers is a multiple of $3$.

**B4 (Ex 9, 12, 20).** Find $\gcd(1053,481)$ and solve $1053x+481y=\gcd(1053,481)$.

> [!success]- Solution
> $$1053=481\cdot2+91,\quad481=91\cdot5+26,\quad91=26\cdot3+13,\quad26=13\cdot2$$
> So $\gcd=13$. Back-substitute:
> $$13=91-3\cdot26=91-3(481-5\cdot91)=16\cdot91-3\cdot481=16(1053-2\cdot481)-3\cdot481$$
> $$13=1053(16)+481(-35)$$
> **Check:** $16848-16835=13$ ✓

**B5 (Ex 18).** If $d=\gcd(a,b)\ne0$, show $\gcd\!\left(\frac ad,\frac bd\right)=1$.

> [!success]- Solution
> By Bézout, $am+bn=d$. Divide by $d$: $\frac ad m+\frac bd n=1$. Any common divisor of $\frac ad,\frac bd$ divides $1$, so the gcd is $1$ (or use Corollary 16 with $d=1$).

**B6 (Exercise 1).** (a) $ac\mid bc$, $c\ne0\Rightarrow a\mid b$. (b) $a\mid b$, $c\mid d\Rightarrow ac\mid bd$.

> [!success]- Solution
> **(a)** $bc=ack\Rightarrow c(b-ak)=0$, and $c\ne0$, so $b=ak$.
>
> **(b)** $b=ak$, $d=c\ell\Rightarrow bd=(ac)(k\ell)$.

**B7 (Exercise 2).** $n$ odd $\Rightarrow4\mid n^2-1$.

> [!success]- Solution
> $n=2k+1$: $n^2-1=4k^2+4k=4k(k+1)$. (In fact $8\mid n^2-1$, since $k(k+1)$ is even.)

**B8 (Exercise 3).** Compute $\gcd(252,198)$, $\gcd(385,595)$, $\gcd(420,378)$, $\gcd(4620,6930)$.

> [!success]- Solution
> - $252=198+54,\ 198=54\cdot3+36,\ 54=36+18,\ 36=18\cdot2$ → $\boxed{18}$
> - $595=385+210,\ 385=210+175,\ 210=175+35,\ 175=35\cdot5$ → $\boxed{35}$
> - $420=378+42,\ 378=42\cdot9$ → $\boxed{42}$
> - $6930=4620+2310,\ 4620=2310\cdot2$ → $\boxed{2310}$

**B9 (Exercise 4).** $n\ge2$, $\gcd(a,n)=1$. Show there is $b$ with $n\mid ab-1$.

> [!success]- Solution
> Bézout: $ax+ny=1$. Take $b=x$: $ab-1=-ny$, which is a multiple of $n$. (This is "$[a]$ has an inverse in $\mathbb Z_n$".)

**⭐ B10 (Exercise 5).** For $a,b\in\mathbb N_0$, show $\gcd(3a+2b,a+b)=\gcd(a,b)$.

> [!success]- Solution
> Use Prop 10 ($x=yq+r\Rightarrow\gcd(x,y)=\gcd(y,r)$) twice:
> $$3a+2b=2(a+b)+a\ \Rightarrow\ \gcd(3a+2b,a+b)=\gcd(a+b,a)$$
> $$a+b=1\cdot a+b\ \Rightarrow\ \gcd(a+b,a)=\gcd(a,b)$$
> Prop 10 doesn't need $r$ to be a true remainder, so this is fine.

### Reading 08: On Primes

**B11 (Ex 2).** Prove Prop 1: $a\mid bc$ and $\gcd(a,b)=1\Rightarrow a\mid c$.

> [!success]- Solution
> Bézout: $am+bn=1$. Multiply by $c$: $c=acm+bcn$. Now $a\mid acm$, and $a\mid bc$ so $a\mid bcn$. Hence $a\mid c$.

**B12 (Ex 5).** Prove Theorem 4: $ax+by=c$ has an integer solution $\iff\gcd(a,b)\mid c$.

> [!success]- Solution
> Let $d=\gcd(a,b)$.
>
> (⇒) If $ax_0+by_0=c$: $d\mid a$ and $d\mid b$, so $d\mid ax_0+by_0=c$.
>
> (⇐) If $c=dk$: Bézout gives $am+bn=d$, so $a(mk)+b(nk)=c$.

**⭐ B13 (Ex 7, 10).** Find all solutions to $1053x+481y=39$.

> [!success]- Solution
> From B4, $1053(16)+481(-35)=13$ and $39=3\cdot13$, so $(48,-105)$ is a solution. With $d=13$: $\frac{481}{13}=37$, $\frac{1053}{13}=81$:
> $$x=48+37n,\qquad y=-105-81n,\qquad n\in\mathbb Z$$
> (Equivalently $x=11+37n$, $y=-24-81n$.)

**B14 (Ex 15).** Show primality is needed in Theorem 13.

> [!success]- Solution
> $p=6$, $a=2$, $b=3$: $6\mid6$, but $6\nmid2$ and $6\nmid3$.

**B15 (Ex 16).** $p$ prime: $p\mid n\iff p\mid n^2$.

> [!success]- Solution
> (⇒) $n=pk\Rightarrow n^2=p(pk^2)$. (⇐) $p\mid n\cdot n$, so by Euclid's lemma $p\mid n$ or $p\mid n$.

**⭐ B16 (Ex 17).** $p$ prime $\Rightarrow\sqrt p$ irrational.

> [!success]- Solution
> Suppose $\sqrt p=\frac ab$ with $\gcd(a,b)=1$. Then $a^2=pb^2$, so $p\mid a^2$, so $p\mid a$ (B15). Write $a=pk$: $p^2k^2=pb^2\Rightarrow b^2=pk^2$, so $p\mid b$. Then $p\mid\gcd(a,b)=1$, a contradiction.

**B17 (Exercise 1).** For each LDE, find one solution, all solutions, and all non-negative solutions.
(a) $221x+143y=13$ (b) $286x+121y=33$ (c) $1700x+867y=17$ (d) $1232x+553y=63$

> [!success]- Solution
> **(a)** $221=143+78,\ 143=78+65,\ 78=65+13,\ 65=13\cdot5$; $d=13$.
> $13=78-65=78-(143-78)=2\cdot78-143=2(221-143)-143=2\cdot221-3\cdot143$.
> $$x=2+11n,\quad y=-3-17n$$
>
> **(b)** $286=121\cdot2+44,\ 121=44\cdot2+33,\ 44=33+11,\ 33=11\cdot3$; $d=11\mid33$ ✓.
> $11=44-33=44-(121-2\cdot44)=3\cdot44-121=3(286-2\cdot121)-121=3\cdot286-7\cdot121$. Times $3$: $(9,-21)$.
> $$x=9+11n,\quad y=-21-26n$$
>
> **(c)** $1700=867+833,\ 867=833+34,\ 833=34\cdot24+17,\ 34=17\cdot2$; $d=17$.
> $17=833-24\cdot34=833-24(867-833)=25\cdot833-24\cdot867=25\cdot1700-49\cdot867$.
> $$x=25+51n,\quad y=-49-100n$$
>
> **(d)** $1232=553\cdot2+126,\ 553=126\cdot4+49,\ 126=49\cdot2+28,\ 49=28+21,\ 28=21+7,\ 21=7\cdot3$; $d=7\mid63$ ✓.
> Back-substitution gives $7=22\cdot1232-49\cdot553$; times $9$: $(198,-441)$.
> $$x=198+79n,\quad y=-441-176n\qquad(\text{or } x=40+79n,\ y=-89-176n)$$
>
> **Non-negative solutions: none in all four.** E.g. (a) needs $2+11n\ge0\Rightarrow n\ge0$ and $-3-17n\ge0\Rightarrow n\le-1$: impossible. With positive $a,b$ and $c$ smaller than $a$ and $b$, a non-negative solution would need $x=y=0$, which gives $0\ne c$.

**B18 (Exercise 2).** How many zeros end $100!$?

> [!success]- Solution
> Each trailing zero is a factor $10=2\cdot5$, and there are more $2$'s than $5$'s. Count the $5$'s: $\lfloor100/5\rfloor+\lfloor100/25\rfloor=20+4=\boxed{24}$.

**B19 (Exercise 3).** (a) $b\mid a\iff b$'s exponents are $\le a$'s. (b) $\gcd$ = product of min exponents (see C2). (c) $\gcd(9^4\cdot10^2,12^3)$.

> [!success]- Solution
> **(a)** (⇐) $a=b\cdot\prod p_i^{a_i-d_i}$, and all exponents are $\ge0$. (⇒) $a=bk$; every prime of $b$ appears in $a$ by FTA uniqueness, and comparing exponents in $a=bk$ gives $d_i\le a_i$.
>
> **(c)** $9^4\cdot10^2=3^8\cdot2^2\cdot5^2$ and $12^3=2^6\cdot3^3$. So
> $$\gcd=2^{\min(2,6)}3^{\min(8,3)}5^{\min(2,0)}=2^2\cdot3^3=\boxed{108}$$

**⭐ B20 (Exercise 4).** (a) Infinitely many primes of the form $4k+3$, $k\in\mathbb Z^+$. (b) Why doesn't it work for $4k+1$?

> [!success]- Solution
> **(a)** Suppose $p_1,\dots,p_n$ are all such primes (they're $7,11,19,\dots$; note $3=4\cdot0+3$ is excluded since $k\ge1$). Let
> $$N=12p_1\cdots p_n-1.$$
> $N\equiv-1\equiv3\pmod4$, so $N$ is odd and its prime factors are odd, i.e. $\equiv1$ or $3\pmod4$. If all were $\equiv1$, their product $N$ would be $\equiv1$. So some prime $q\mid N$ has $q\equiv3\pmod4$. Also $q\ne3$ (since $N\equiv-1\pmod3$), so $q=4k+3$ with $k\ge1$, and $q\ne p_i$ (else $q\mid12p_1\cdots p_n-N=1$). Contradiction.
>
> **(b)** $N=4p_1\cdots p_n+1\equiv1\pmod4$, but a number $\equiv1\pmod4$ can be a product of primes that are all $\equiv3$ (e.g. $21=3\cdot7$). So you can't conclude it has a prime factor of the form $4k+1$.

**B21 (Exercise 5).** (a) Number of positive divisors of $360$. (b) In general. (c) When is $n$ a perfect square?

> [!success]- Solution
> **(a)** $360=2^3\cdot3^2\cdot5$, so $(3+1)(2+1)(1+1)=\boxed{24}$.
>
> **(b)** $\prod(d_i+1)$: each divisor picks an exponent $0..d_i$ for each prime (B19(a)).
>
> **(c)** Every $d_i$ is **even**. Then $n=\left(\prod p_i^{d_i/2}\right)^2$, and conversely squaring doubles every exponent (FTA).

### Reading 09: Modular Arithmetic

**B22 (Ex 5).** If $7\nmid a^2-2$, then $7\nmid a-4$.

> [!success]- Solution
> Contrapositive: if $7\mid a-4$, then $a\equiv4$, so $a^2-2\equiv16-2=14\equiv0\pmod7$.

**B23 (Ex 9).** Prove Corollary 8: $a^p\equiv a\pmod p$ for every $a$.

> [!success]- Solution
> If $p\nmid a$: FLT gives $a^{p-1}\equiv1$; multiply by $a$. If $p\mid a$: both sides are $\equiv0$.

**⭐ B24 (Ex 11).** Find $[22]^{-1}$ in $\mathbb Z_{41}$.

> [!success]- Solution
> $41=22+19,\ 22=19+3,\ 19=3\cdot6+1$. Back:
> $$1=19-6\cdot3=19-6(22-19)=7\cdot19-6\cdot22=7(41-22)-6\cdot22=7\cdot41-13\cdot22$$
> So $[22]^{-1}=[-13]=\boxed{[28]}$. **Check:** $22\cdot28=616=15\cdot41+1$ ✓

**B25 (Exercise 1).** Is exponentiation well-defined: $a\equiv b$, $c\equiv d\pmod n\Rightarrow a^c\equiv b^d$?

> [!success]- Solution
> **No.** Mod $3$: $2\equiv2$ and $0\equiv3$, but $2^0=1$ and $2^3=8\equiv2$. You **can** replace the base ($a^c\equiv b^c$), but never the exponent mod $n$.

**⭐ B26 (Exercise 2).** Last digits of $7^{100}$, $3^{1111}$, $4^{223}$, $8^{400}$.

> [!success]- Solution
> Work mod $10$:
> - $7^4=2401\equiv1$, so $7^{100}=(7^4)^{25}\equiv\boxed1$
> - $3^4=81\equiv1$, $1111=4\cdot277+3$, so $3^{1111}\equiv3^3=27\equiv\boxed7$
> - $4^2=16\equiv6$ and $6\cdot4=24\equiv4$, so odd powers of $4$ end in $4$: $\boxed4$
> - $8^4=4096\equiv6$ and $6^k\equiv6$, so $8^{400}=(8^4)^{100}\equiv\boxed6$

**B27 (Exercise 3).** Digital root: show $r(n)=1+[(n-1)\bmod9]$.

> [!success]- Solution
> $10\equiv1\pmod9$, so $10^k\equiv1$ and $n=\sum d_k10^k\equiv\sum d_k\pmod9$. Summing digits never changes the class mod $9$, so $r(n)\equiv n\pmod9$, and $r(n)\in\{1,\dots,9\}$ for $n\ge1$. The only number in $\{1,\dots,9\}$ congruent to $n$ is $1+[(n-1)\bmod9]$.

**B28 (Exercise 4).** $9\mid10^n-1$.

> [!success]- Solution
> $10\equiv1\pmod9\Rightarrow10^n\equiv1^n=1$.

**B29 (Exercise 5).** $n^2\equiv0$ or $1\pmod4$. (Same as A4(i).)

**B30 (Exercise 6).** Does $7\mid3^{2001}+4^{2001}$?

> [!success]- Solution
> **Yes.** $4\equiv-3\pmod7$, and $2001$ is odd, so $4^{2001}\equiv(-3)^{2001}=-3^{2001}$. The sum is $\equiv0$.

**⭐ B31 (Exercise 7).** $p$ prime: (a) $a^2\equiv b^2\Rightarrow a\equiv\pm b\pmod p$. (b) False for composite modulus.

> [!success]- Solution
> **(a)** $p\mid a^2-b^2=(a-b)(a+b)$, so by Euclid's lemma $p\mid a-b$ or $p\mid a+b$.
>
> **(b)** Mod $8$: $3^2=9\equiv1=1^2$, but $3\not\equiv\pm1\pmod8$.

---

## Part C: In-class worksheets

### C1. Week 7

**Guided:** Prove "$ax+by=c$ has a solution $\iff\gcd(a,b)\mid c$." (Same as B12.)

**⭐ Independent:** For $a,b,d\in\mathbb Z^+$, show $\gcd(ad,bd)=d\gcd(a,b)$.

> [!success]- Solution
> Let $g=\gcd(a,b)$ and $G=\gcd(ad,bd)$. Show each divides the other.
> - $g\mid a\Rightarrow dg\mid ad$, and likewise $dg\mid bd$. So $dg$ is a common divisor, and $dg\mid G$ (Corollary 15).
> - Bézout: $g=am+bn\Rightarrow dg=(ad)m+(bd)n$. $G$ divides both terms, so $G\mid dg$.
>
> Both are positive and divide each other, so $G=dg$.

### C2. Week 8

**Independent:** With $a=\prod p_i^{a_i}$ and $b=\prod p_i^{b_i}$ (common primes, exponents may be $0$), show $\gcd(a,b)=\prod p_i^{\min(a_i,b_i)}$.

> [!success]- Solution
> Let $m=\prod p_i^{\min(a_i,b_i)}$. Since $\min(a_i,b_i)\le a_i$ and $\le b_i$, B19(a) gives $m\mid a$ and $m\mid b$.
>
> Let $c$ be any positive common divisor. By B19(a), $c=\prod p_i^{c_i}$ with $c_i\le a_i$ and $c_i\le b_i$, so $c_i\le\min(a_i,b_i)$, so $c\mid m$ and $c\le m$. So $m$ is the greatest common divisor.

### C3. Week 9

**Guided:** Self-explain the FLT proof. Why is $\gcd(p,(p-1)!)=1$?

> [!success]- Solution
> Each factor $1,\dots,p-1$ is less than $p$, so $p$ doesn't divide it. If $p\mid(p-1)!$, Euclid's lemma (repeatedly) would make $p$ divide one of the factors. So $p\nmid(p-1)!$, and since $p$ is prime its only positive divisors are $1,p$, giving $\gcd=1$. That's what lets you **cancel** $(p-1)!$.

**Independent 1.** Fill in $6x\bmod8$ for $x=0..7$. Does $6x\equiv2\pmod8$ have a solution? $6x\equiv3$?

> [!success]- Solution
> | $x$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
> |---|---|---|---|---|---|---|---|---|
> | $6x$ | 0 | 6 | 4 | 2 | 0 | 6 | 4 | 2 |
>
> $6x\equiv2$: **yes**, $x\equiv3,7\pmod8$. $\ 6x\equiv3$: **no** (only even classes appear).

**Independent 2.** $ax\equiv c\pmod m$ has solution $x_0$ $\iff\exists y_0$ with $ax_0+my_0=c$.

> [!success]- Solution
> $ax_0\equiv c\iff m\mid c-ax_0\iff c-ax_0=my_0$ for some $y_0\iff ax_0+my_0=c$.

**⭐ Independent 3.** Theorem: $ax\equiv c\pmod m$ is solvable $\iff d=\gcd(a,m)\mid c$, and then there are exactly $d$ solutions mod $m$:
$$x\equiv x_0\ \left(\bmod\ \tfrac md\right),\qquad\text{i.e. } x\equiv x_0+k\tfrac md\pmod m,\ k=0,\dots,d-1.$$
(a) Apply to $6x\equiv2\pmod8$. (b) Existence. (c) Form of solutions. (d) Exactly $d$ of them.

> [!success]- Solution
> **(a)** $a=6$, $c=2$, $m=8$, $d=2\mid2$: two solutions mod $8$, $x\equiv3\pmod4$, i.e. $x\equiv3,7\pmod8$. Matches the table.
>
> **(b)** By part 2, a solution exists iff $ax+my=c$ has an integer solution, iff $d\mid c$ (Theorem 4).
>
> **(c)** The LDE $ax+my=c$ has general solution $x=x_0+n\frac md$. So the solutions are exactly $x\equiv x_0\pmod{\frac md}$. Writing $n=qd+k$ with $0\le k<d$: $x=x_0+k\frac md+qm\equiv x_0+k\frac md\pmod m$.
>
> **(d)** $x_0+k_1\frac md\equiv x_0+k_2\frac md\pmod m\iff m\mid(k_1-k_2)\frac md\iff d\mid k_1-k_2$. For $0\le k_1,k_2<d$ this forces $k_1=k_2$, so the $d$ values are all different mod $m$.

---

## Part D: Tutorial activities

(The Week 7 tutorial, "Comparing Proofs", is about a functions problem, so it's not here.)

### D1. Week 8: Divisibility intuition

Prove: **(1.2)** $a\mid b$, $a\mid c\Rightarrow a\mid b+c$. **(1.3)** $a\mid b$, $c\mid d\Rightarrow ac\mid bd$. **(1.4)** $a\mid b\Rightarrow a^n\mid b^n$.

> [!success]- Solution
> **(1.2)** $b=ak$, $c=a\ell\Rightarrow b+c=a(k+\ell)$.
>
> **(1.3)** $b=ak$, $d=c\ell\Rightarrow bd=ac(k\ell)$.
>
> **(1.4)** $b=ak\Rightarrow b^n=a^nk^n$.

**Example 1.5.** True or false? (1) $a\mid b+c\Rightarrow a\mid b$ or $a\mid c$. (2) $a\mid b$, $a\mid c\Rightarrow a^2\mid bc$. (3) $a\mid c$, $b\mid c\Rightarrow ab\mid c$.

> [!success]- Solution
> **(1) False.** $2\mid1+1$, but $2\nmid1$.
>
> **(2) True.** $bc=(ak)(a\ell)=a^2(k\ell)$.
>
> **(3) False.** $a=b=2$, $c=2$: $4\nmid2$. (True if $\gcd(a,b)=1$: see D2.)

### D2. Week 9: Primes and divisibility

**⭐ Prop 1.3.** $a\mid n$, $b\mid n$, $\gcd(a,b)=1\Rightarrow ab\mid n$. Prove with Bézout.

> [!success]- Solution
> $ax+by=1$, so $n=nax+nby$. Since $b\mid n$, $ab\mid na$; since $a\mid n$, $ab\mid nb$. So $ab$ divides both terms, hence $n$.
>
> **At the level of primes:** $a$ and $b$ share no prime, so their prime powers sit in $n$ without overlapping. If $\gcd>1$ they can "share" a prime: $6\mid6$, $6\mid 6$ but $36\nmid6$.

**Prop 1.4.** $\gcd(a,b)=1\Rightarrow\gcd(a^2,b^3)=1$.

> [!success]- Solution
> Suppose not; then some prime $p$ divides both $a^2$ and $b^3$. By Euclid's lemma $p\mid a$ and $p\mid b$, so $p\mid\gcd(a,b)=1$. Contradiction.

**Prop 1.5.** $\gcd(a,b)=\gcd(a,c)=1\Rightarrow\gcd(a,bc)=1$.

> [!success]- Solution
> **Primes:** if a prime $p$ divides $a$ and $bc$, Euclid's lemma gives $p\mid b$ or $p\mid c$, so $p$ divides $\gcd(a,b)$ or $\gcd(a,c)$, both $1$. Contradiction.
>
> **Bézout (bonus):** $1=ax+by$ and $1=au+cv$. Multiply:
> $$1=a(xau+xcv+byu)+bc(yv)$$
> so any common divisor of $a$ and $bc$ divides $1$.

### D3. Week 10: Modular interpretations

**Theorem 1.1.** These are equivalent: (1) $[a]_n=[b]_n$ (2) $a\equiv b\pmod n$ (3) $n\mid b-a$ (4) $b=a+nk$ (5) same remainder mod $n$. Prove (1)⇒(2)⇒…⇒(5)⇒(1).

> [!success]- Solution
> (1)⇒(2): $b\in[b]=[a]$, so $b\equiv a$ (symmetry gives $a\equiv b$). (2)⇒(3): definition. (3)⇒(4): $b-a=nk$. (4)⇒(5): $a=qn+r$ ($0\le r<n$), so $b=(q+k)n+r$, and by uniqueness in the Division Algorithm $r$ is $b$'s remainder too. (5)⇒(1): $a=qn+r$, $b=q'n+r\Rightarrow n\mid b-a$, so $a\equiv b$, and equivalence classes of related elements are equal.

**⭐ Example 1.2.** Find all $x$ with $28x\equiv12\pmod{104}$.

> [!success]- Solution
> $d=\gcd(28,104)=4$ and $4\mid12$, so there are $4$ solutions mod $104$. Divide by $4$: $7x\equiv3\pmod{26}$. $7\cdot15=105\equiv1\pmod{26}$, so $x\equiv3\cdot15=45\equiv19\pmod{26}$.
> $$x\equiv19,\ 45,\ 71,\ 97\pmod{104}$$
> **Check:** $28\cdot19=532=5\cdot104+12$ ✓

**Prop 1.3.** $p$ prime, $p\nmid a$ ⇒ $ax\equiv b\pmod p$ has a solution.

> [!success]- Solution
> It's the LDE $ax+py=b$. $\gcd(a,p)=1$ (since $p\nmid a$ and $p$ is prime), and $1\mid b$, so it's solvable.
> If $p\mid a$, then $ax\equiv0$ for every $x$, so there's no solution unless $p\mid b$.
> **Composite modulus:** $2x\equiv1\pmod4$ has no solution ($2x$ is always even), so $[2]_4$ has no inverse.

**⭐ Example 2.1 (Winter 2025 final).** $p$ prime. (1) $[a]=[a]^{-1}\iff[a]=[1]$ or $[p-1]$. (2) $[(p-1)!]=[p-1]$ (Wilson's Theorem).

> [!success]- Solution
> **(1)** $[a]=[a]^{-1}\iff[a]^2=[1]\iff p\mid a^2-1=(a-1)(a+1)\iff p\mid a-1$ or $p\mid a+1$ (Euclid's lemma) $\iff[a]=[1]$ or $[a]=[-1]=[p-1]$.
>
> **(2)** $[(p-1)!]=[1][2]\cdots[p-1]$ is the product of **all** non-zero classes. Each has an inverse (Theorem 10). Pair every class with its inverse: by (1), the only classes paired with themselves are $[1]$ and $[p-1]$. Each other pair multiplies to $[1]$, so
> $$[(p-1)!]=[1]\cdot[p-1]=[p-1].$$
> ($p=2$: $[1!]=[1]=[p-1]$ directly.)
>
> **Bonus:** for composite $n>4$, $(n-1)!\equiv0\pmod n$. For $n=4$: $3!=6\equiv2$.

---

## Part E: MathMatize

Pre-class quizzes and Classroom MC for Weeks 7–9. (The Week 9 Classroom MC review is locked on MathMatize, so it isn't here.) Select-all questions can have several answers.

### E1. Week 7 Pre-Class Quiz

**Q1.** By the Well-Ordering Principle, which sets have a least element?
(a) $\{n\in\mathbb N:n^2+n<15\}$ (b) $\{n\in\mathbb Q:n^2<2,\ n<0\}$ (c) $\{n\in\mathbb Z:n>5,\ n\text{ prime}\}$ (d) $\{n\in\mathbb R:0\le n\le1\}$

> [!success]- Solution
> **(a) and (c).** Both are non-empty subsets of $\mathbb Z^+$ (or $\mathbb N$): $(a)=\{1,2,3\}$, $(c)$ has least element $7$.
> (b) isn't a set of naturals, and has no least element anyway (values approach $-\sqrt2$). (d) does have a least element, $0$, but **not because of WOP**: WOP only talks about subsets of $\mathbb Z^+$.

**Q2.** Does the left divide the right? $12\,|\,6$, $-3\,|\,27$, $24\,|\,96$, $0\,|\,25$

> [!success]- Solution
> No, yes ($27=-3\cdot-9$), yes ($96=24\cdot4$), no.

**Q3.** Order the proof that $d\mid a,\ d\mid b\Rightarrow d\mid a+b$.

> [!success]- Solution
> 1. We know $d$ divides both $a$ and $b$.
> 2. Thus we can write $a=dk$ and $b=d\ell$ for some integers $k,\ell$.
> 3. Adding $a$ and $b$ results in the following:
> 4. $a+b=dk+d\ell=d(k+\ell)$.
> 5. Therefore $d$ divides $a+b$, as required.

**Q4.** Division Algorithm on $a=52$, $b=21$ gives $q=1$, $r=31$. Which is correct?

> [!success]- Solution
> **"Not correct, since $0\le r<b$ must hold."** $52=21\cdot1+31$ is true arithmetic, but $31\ge21$. The real answer is $52=21\cdot2+10$.

**Q5.** Which are true?
(a) $d=\gcd(a,b)$ and $c$ a common divisor $\Rightarrow ck=d$ for some $k$. (b) $p$ prime $\Rightarrow\gcd(p,a)=1$ for all $a$. (c) $\gcd(a/d,b/d)=1$. (d) Common divisors $d_1,d_2$ of $a,b$ satisfy $d_1\mid d_2$ or $d_2\mid d_1$. (e) Distinct primes $p,q$ have $\gcd(p,q)=1$.

> [!success]- Solution
> **(a), (c), (e)** ((c) assuming $d\ne0$).
> (a) is Corollary 15. (b) fails for $a=p$. (d) fails: $2$ and $3$ both divide $6$ and $6$.

**Q6.** Euclid on $1024,486$: remainders $52,18,16,2$. Without computing, which equal $\gcd(1024,486)$?
$\gcd(52,18)$, $\gcd(486,18)$, $2$, $\gcd(52,16)$, $\gcd(486,52)$

> [!success]- Solution
> **$\gcd(52,18)$, $2$, $\gcd(486,52)$.** Only pairs of **consecutive** terms in the chain $1024,486,52,18,16,2$ keep the gcd (Prop 10). (Indeed $\gcd(486,18)=18$ and $\gcd(52,16)=4$.)

**Q7.** By back-substitution, which solves $1024x+486y=\gcd(1024,486)$?
$(-29,60)$, $(-28,59)$, $(-28,87)$, $(-27,58)$

> [!success]- Solution
> **$(-28,59)$.**
> $$2=18-16=18-(52-2\cdot18)=3\cdot18-52=3(486-9\cdot52)-52=3\cdot486-28\cdot52$$
> $$=3\cdot486-28(1024-2\cdot486)=1024(-28)+486(59)$$
> **Check:** $-28672+28674=2$ ✓

### E2. Week 7 Classroom MC

**Q1.** Which is **false**? (a) $a$ prime, $b$ not a multiple of $a\Rightarrow a\nmid b$ (b) $a,b\ge0$, $a\mid b$, $b\mid a\Rightarrow a=b$ (c) $a\mid0$ (d) $a,b>0$, $a\mid b\Rightarrow a\le b$ (e) $a\mid bc\Rightarrow a\mid b$ or $a\mid c$

> [!success]- Solution
> **(e).** $4\mid2\cdot2$ but $4\nmid2$. It's true only when $a$ is prime.

**Q2–Q4.** Euclid on $2079$ and $825$: second step, the gcd, and the Bézout solution from back-substitution.

> [!success]- Solution
> $$2079=825\cdot2+429,\quad825=429\cdot1+396,\quad429=396\cdot1+33,\quad396=33\cdot12$$
> Second step: $825=429\cdot1+396$. $\gcd=33$.
> $$33=429-396=429-(825-429)=2\cdot429-825=2(2079-2\cdot825)-825=2079(2)+825(-5)$$
> So $(m,n)=(2,-5)$. **Careful:** every option, e.g. $(27,-68)$, also gives $33$ (they're all on the general solution line $m=2+25k$, $n=-5-63k$). The question asks for the one back-substitution produces.

### E3. Week 8 Pre-Class Quiz

**Q1.** Which are linear Diophantine equations? $x^2+y^2=9$, $107x+52y=33$, $4x+2y=\pi$, $-10q-105s=44$, $23r-17s=14$

> [!success]- Solution
> **$107x+52y=33$, $-10q-105s=44$, $23r-17s=14$.** Linear, integer coefficients, integer right side. The variable names don't matter, and solvability doesn't matter either ($\gcd(10,105)=5\nmid44$, so that one has no solutions, but it is still an LDE).

**Q2.** True or false: if $d=\gcd(a,b)\ne0$, then $(x_0,y_0)$ solves $ax+by=c$ iff it solves $\frac adx+\frac bdy=\frac cd$.

> [!success]- Solution
> **True.** Dividing or multiplying both sides by $d\ne0$ is reversible.

**Q3.** $(x_0,y_0)$ solves $ax+by=d$. Which solves $ax+by=4d$?

> [!success]- Solution
> **$(4x_0,4y_0)$.** Multiply the equation by $4$.

**Q4.** Solve $528x+756y=60$: the gcd, a Bézout pair, a particular solution, and the general solution.

> [!success]- Solution
> $756=528+228,\ 528=228\cdot2+72,\ 228=72\cdot3+12,\ 72=12\cdot6$, so $\gcd=12$ and $12\mid60$ ✓.
> $$12=228-3\cdot72=228-3(528-2\cdot228)=7\cdot228-3\cdot528=7(756-528)-3\cdot528=528(-10)+756(7)$$
> Times $5$: $(x_0,y_0)=(-50,35)$. With $\frac{756}{12}=63$, $\frac{528}{12}=44$:
> $$x=-50+63n,\qquad y=35-44n$$

**Q5.** $a\mid bc$ ($a,b,c>0$). Which are true? (a) $a\nmid b$ and $a\nmid c\Rightarrow a$ composite (b) $a$ prime $\Rightarrow a$ divides exactly one of $b,c$ (c) $\gcd(a,c)=1\Rightarrow a\mid b$ (d) $a\mid b$ or $a\mid c$

> [!success]- Solution
> **(a) and (c).** (a) is the contrapositive of Euclid's lemma ($a\ne1$, since $1$ divides everything; so $a$ is not prime means composite). (c) is the coprime lemma. (b): "cannot divide both" is false ($2\mid2\cdot2$). (d): false ($4\mid2\cdot2$).

**Q6.** $p_1^{a_1}p_2^{a_2}p_3^{a_3}=p_1^{b_1}p_2^{b_2}p_3^{b_3}$ (distinct primes). Which are correct?

> [!success]- Solution
> **$a_i=b_i$ for all $i$** (FTA), and therefore also **$a_1+a_2+a_3=b_1+b_2+b_3$** and the **min-exponent gcd formula** (it's just the gcd of a number with itself). "$a_1=a_2=a_3$" doesn't follow.

**Q7.** $S=\{p_1,\dots,p_n\}$ primes, $P=p_1\cdots p_n+1$. Which must be true?

> [!success]- Solution
> **Only "there is a prime $q\notin S$ with $q\mid P$."** $P$ might be prime ($2\cdot3+1=7$) or composite ($2\cdot3\cdot5\cdot7\cdot11\cdot13+1=59\cdot509$), and no $p_i$ divides $P$ (it would divide $1$).

### E4. Week 8 Classroom MC

**Q1.** $38x+34y=200$ has the solution $(-800,900)$. General solution?

> [!success]- Solution
> **$x=-800+17n,\ y=900-19n$.** $\gcd(38,34)=2$, so the steps are $\frac{34}2=17$ (on $x$) and $\frac{38}2=19$ (on $y$). Stepping by $34$ and $38$ misses half the solutions; swapping them gives non-solutions.

**⭐ Q2.** Which $n$ give positive $x$ and $y$?

> [!success]- Solution
> **There are no positive solutions.** $x>0\iff n>\frac{800}{17}\approx47.06$, so $n\ge48$. $y>0\iff n<\frac{900}{19}\approx47.37$, so $n\le47$. ($n=47$ gives $x=-1$.) Always solve both inequalities; don't eyeball.

**Q3.** $3^a9^b=3^c9^d$. Which must be true?

> [!success]- Solution
> **Only $a+2b=c+2d$.** $3^{a+2b}=3^{c+2d}$, so FTA gives equal exponents. $a=1,b=1,c=3,d=0$ shows $a=c$ need not hold.

**Q4.** Which is **false**? (a) $3\mid a,3\mid b\Rightarrow3\mid a+b$ (b) $2\mid a^2\Rightarrow2\mid a$ (c) $7\mid ab\Rightarrow7\mid a$ or $7\mid b$ (d) $6\mid ab\Rightarrow6\mid a$ or $6\mid b$

> [!success]- Solution
> **(d).** $6\mid2\cdot3$. (b) and (c) are Euclid's lemma since $2$ and $7$ are prime.

### E5. Week 9 Pre-Class Quiz

**Q1.** $a\equiv b\pmod n$. Which **could be false**? $3a\equiv3b$, $a^3\equiv b^3$, $2a\equiv2b$, $a+4b\equiv5b$

> [!success]- Solution
> **None.** All four follow because $+$ and $\times$ are well-defined mod $n$ (e.g. $a+4b\equiv b+4b$). The trap goes the other way: **cancelling** ($3a\equiv3b\Rightarrow a\equiv b$) can fail.

**Q2.** $[3]_5+[4]_5=[\ ]_5$; $[2]_{13}[\ ]_{13}=[7]_{13}$; additive inverse of $[3]$ in $\mathbb Z_{11}$; multiplicative inverse of $[2]$ in $\mathbb Z_7$; number of elements of $\mathbb Z_9$ with no inverse.

> [!success]- Solution
> $[2]_5$; $\ [10]_{13}$ ($20=13+7$); $\ [8]_{11}$; $\ [4]_7$ ($8\equiv1$); $\ $**3** ($[0],[3],[6]$, the classes with $\gcd(a,9)\ne1$).

**Q3.** Last digit of $7^{20}$?

> [!success]- Solution
> **1.** $7^4\equiv1\pmod{10}$, so $7^{20}=(7^4)^5\equiv1$.

**Q4.** In $\mathbb Z_7$: $2[x]+3[y]=[4]$ and $5[x]+[y]=[6]$. Which pairs solve it? $([1],[2])$, $([3],[6])$, $([4],[0])$, $([2],[4])$, $([0],[6])$

> [!success]- Solution
> **$([0],[6])$ only.** Check: $0+18=18\equiv4$ ✓ and $0+6=6$ ✓. Solving: from eq. 2, $y=6-5x$; substitute: $2x+18-15x\equiv4\Rightarrow-13x\equiv-14\Rightarrow x\equiv0$ (since $-13\equiv1$ and $-14\equiv0$), so $y=6$.

**Q5.** How many $x\in\{0,\dots,12\}$ satisfy $3x\equiv5\pmod{13}$?

> [!success]- Solution
> **1** ($x=6$: $18\equiv5$). $13$ is prime and $13\nmid3$, so $[3]$ is invertible and the solution is unique.

---

## Part F: Extra picks

These target things the sources above use less: Well-Ordering proofs, gcd tricks, combining FLT with coprime moduli, and inverses in $\mathbb Z_n$.

**F1.** Use the Well-Ordering Principle to prove every integer $n>1$ has a prime divisor.

> [!success]- Solution
> Suppose not, and let $S$ be the set of integers $n>1$ with no prime divisor. $S\ne\varnothing$, so by WOP it has a least element $m$. $m$ is not prime (it would divide itself), so $m=rs$ with $1<r<m$. $r\notin S$ (it's smaller than $m$), so $r$ has a prime divisor $p$; then $p\mid r\mid m$. Contradiction.

**F2.** Show $\gcd(n,n+1)=1$ and $\gcd(2n+1,3n+1)=1$ for every $n\in\mathbb Z$.

> [!success]- Solution
> $(n+1)\cdot1+n\cdot(-1)=1$, so by Corollary 16 the gcd is $1$.
> $(3n+1)\cdot2+(2n+1)\cdot(-3)=6n+2-6n-3=-1$, so any common divisor divides $1$.

**⭐ F3.** Show $30\mid n^5-n$ for every integer $n$.

> [!success]- Solution
> By Corollary 8 ($a^p\equiv a$):
> - $p=5$: $n^5\equiv n\pmod5$.
> - $p=3$: $n^3\equiv n$, so $n^5=n^3n^2\equiv n\cdot n^2=n^3\equiv n\pmod3$.
> - $p=2$: $n^2\equiv n$, so $n^5\equiv n\pmod2$.
>
> So $2,3,5$ all divide $n^5-n$. They're pairwise coprime, so by D2 Prop 1.3 (applied twice), $30\mid n^5-n$.

**⭐ F4.** Find $3^{100}\bmod7$ and the remainder of $5^{2026}$ divided by $11$.

> [!success]- Solution
> $3^6\equiv1\pmod7$ (FLT). $100=6\cdot16+4$, so $3^{100}\equiv3^4=81\equiv\boxed4$.
> $5^{10}\equiv1\pmod{11}$. $2026=10\cdot202+6$, so $5^{2026}\equiv5^6=(5^2)^3=25^3\equiv3^3=27\equiv\boxed5$.

**F5.** Which classes in $\mathbb Z_{12}$ are invertible? Find $[5]^{-1}$ and $[7]^{-1}$.

> [!success]- Solution
> Those with $\gcd(a,12)=1$: $[1],[5],[7],[11]$. Each is its own inverse: $25=2\cdot12+1$, $49=4\cdot12+1$ (and $121=10\cdot12+1$). So $[5]^{-1}=[5]$ and $[7]^{-1}=[7]$. That's 4 square roots of $[1]$, which can't happen mod a prime (B31).

**⭐ F6.** Find all positive integer solutions of $15x+21y=261$.

> [!success]- Solution
> $\gcd(15,21)=3\mid261$. Divide: $5x+7y=87$. $5\cdot3+7\cdot(-2)=1$; times $87$, $(261,-174)$ is a solution. General solution:
> $$x=261+7n,\qquad y=-174-5n.$$
> $x>0\iff n>-37.3\iff n\ge-37$; $\ y>0\iff n<-34.8\iff n\le-35$. So $n\in\{-37,-36,-35\}$:
> $$(x,y)=(2,11),\ (9,6),\ (16,1)$$
> **Check:** $30+231=261$ ✓, $135+126=261$ ✓, $240+21=261$ ✓
