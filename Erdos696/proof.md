# Erdős Problem 696

## Statement

Let $h(n)$ be the largest $\ell$ for which there is a sequence of primes

$$
p_1<\cdots<p_\ell,
$$

all dividing $n$, such that

$$
p_{i+1}\equiv 1\pmod {p_i}
$$

for every $i$. Let $H(n)$ be the largest $u$ for which there is a sequence of divisors

$$
d_1<\cdots<d_u
$$

of $n$ such that

$$
d_{i+1}\equiv 1\pmod {d_i}
$$

for every $i$.

Then there are absolute constants $0<c<C<\infty$ such that, for almost all $n$,

$$
c\log_* n\le h(n)\le H(n)\le C\log_* n.
$$

Consequently

$$
h(n)\asymp \log_* n,
\qquad
H(n)\asymp \log_* n
$$

for almost all $n$. In particular, $H(n)/h(n)$ does not tend to infinity for almost all $n$.

## Proof

Throughout, $x\to\infty$, and all implicit constants are absolute unless a dependence is explicitly indicated. Define

$$
\log^{(0)}t=t,
\qquad
\log^{(k+1)}t=\log(\log^{(k)}t),
$$

and

$$
\log_*t=\min\{k\ge 0:\log^{(k)}t\le 1\}.
$$

Changing the cutoff $1$ in this definition changes $\log_*$ by at most an absolute additive constant. We shall also use the elementary fact that replacing $t$ by $t^a(\log t)^b$, where $a>0$ and $b$ are fixed, changes $\log_*t$ by at most $O_{a,b}(1)$.

We shall prove that there are absolute constants $0<c<C<\infty$ such that, for all but $o(x)$ integers $n\le x$,

$$
c\log_*x\le h(n)\le H(n)\le C\log_*x. \tag{A}
$$

The final passage from $\log_*x$ to $\log_*n$ is given at the end.

## Standard estimates used

We use the following three standard estimates.

First, we use the Siegel-Walfisz theorem in the following elementary consequence. Fix $K>0$. For every sufficiently large $B$, every prime $p\le B$, and

$$
Y=\exp(\exp(KB\log B)),
$$

one has

$$
\sum_{\substack{q\le Y\\ q\text{ prime}\\ q\equiv 1\pmod p}}\frac1q
\ge \frac K3\log B. \tag{1}
$$

Indeed, put $A=\exp(p^2)$. For $t\ge A$ we have $p\le (\log t)^{1/2}$, so Siegel-Walfisz gives, uniformly in $p$,

$$
\pi(t;p,1)=\frac{\operatorname{Li}(t)}{p-1}+O\left(t\exp(-c\sqrt{\log t})\right),
$$

where $c>0$ is absolute. Partial summation over $A<q\le Y$ gives

$$
\sum_{\substack{A<q\le Y\\ q\text{ prime}\\ q\equiv 1\pmod p}}\frac1q
=
\frac{\log\log Y-\log\log A}{p-1}+O(1).
$$

Here the error term is uniform, because

$$
\int_A^\infty \exp(-c\sqrt{\log t})\,\frac{dt}{t}
=
\int_p^\infty 2u\exp(-cu)\,du
=O(1).
$$

Since $\log\log Y=KB\log B$, $\log\log A=2\log p$, and $p\le B$, the partial-summation formula is bounded below by

$$
\frac{KB\log B-2\log B}{B}+O(1),
$$

which is at least $\frac K3\log B$ for all sufficiently large $B$. This proves $\text{(1)}$.

Second, we use Chebyshev's bound

$$
\theta(y)=\sum_{q\le y}\log q\ll y. \tag{2}
$$

Third, we use Mertens' product bound

$$
\prod_{p\le y}\left(1-\frac1p\right)\ll \frac1{\log y} \qquad (y\ge 3). \tag{3}
$$

## The scale parameters

Fix once and for all a constant $K>12$. Put

$$
r=\log_*x,
\qquad
B_0=\exp(\sqrt r),
$$

and define recursively

$$
B_{j+1}=\exp(\exp(KB_j\log B_j)).
$$

For all sufficiently large $x$, $KB_0\log B_0\le \frac12\log\log x$. Let $J$ be the largest nonnegative integer such that

$$
KB_J\log B_J\le \frac12\log\log x. \tag{4}
$$

We first record that

$$
J\asymp \log_*x. \tag{5}
$$

Let $T$ be the unique large solution of

$$
KT\log T=\frac12\log\log x.
$$

Then $\log_*T=\log_*x+O_K(1)$. To see this, write $L=\log\log x$. From $KT\log T=L/2$ one has, for all large $L$,

$$
\frac{L}{4K\log L}\le T\le L,
$$

so $L^{1/2}\le T\le L$ for all large $L$. Hence $\log_*T=\log_*L+O_K(1)=\log_*x+O_K(1)$. Since $J$ is maximal and $t\mapsto Kt\log t$ is increasing for large $t$, we have $B_{J+1}>T$.

For large $t$,

$$
\log_*\!\left(\exp(\exp(Kt\log t))\right)
=2+\log_*(Kt\log t)
\le \log_*t+O_K(1),
$$

because $Kt\log t\le t^2$ for all sufficiently large $t$, and replacing $t$ by $t^2$ changes $\log_*t$ by only $O(1)$. Hence

$$
\log_*B_{J+1}
\le \log_*B_0+O_K(J+1).
$$

Using $B_{J+1}>T$, we get

$$
\log_*x+O_K(1)
=\log_*T
\le \log_*B_{J+1}
\le \log_*B_0+O_K(J+1).
$$

But

$$
\log_*B_0=1+\log_*(\sqrt r)=o(r)=o(\log_*x).
$$

Thus $J\gg_K \log_*x$.

Conversely, for every sufficiently large $t$,

$$
\exp(\exp(Kt\log t))>\exp(t).
$$

Therefore $B_{j+1}>\exp(B_j)$, so

$$
\log_*B_{j+1}
=1+\log_*(\log B_{j+1})
\ge 1+\log_*B_j
$$

for every relevant $j$. Iteration gives

$$
J\le \log_*B_J-
\log_*B_0+O(1).
$$

From $\text{(4)}$ and $B_J\to\infty$ we have $B_J\le \log\log x$ for large $x$, whence

$$
\log_*B_J\le \log_*x+O(1).
$$

Thus $J\ll \log_*x$, proving $\text{(5)}$.

## Lower bound for $h(n)$

Fix $0\le j<J$ and a prime $p\le B_j$. Define

$$
\mathcal Q_{p,j}
=
\{q\le B_{j+1}:q\text{ prime and }q\equiv 1\pmod p\},
$$

and

$$
P_{p,j}=\prod_{q\in \mathcal Q_{p,j}}q.
$$

By $\text{(1)}$, applied with $B=B_j$ and $Y=B_{j+1}$,

$$
\sum_{q\in \mathcal Q_{p,j}}\frac1q\ge \frac K3\log B_j. \tag{6}
$$

The integers $n\le x$ divisible by none of the primes in $\mathcal Q_{p,j}$ are exactly those with $(n,P_{p,j})=1$. Counting reduced residue classes modulo the squarefree integer $P_{p,j}$ gives

$$
\#\{n\le x:(n,P_{p,j})=1\}
\le
x\prod_{q\in \mathcal Q_{p,j}}\left(1-\frac1q\right)+P_{p,j}. \tag{7}
$$

By $\text{(6)}$,

$$
\prod_{q\in \mathcal Q_{p,j}}\left(1-\frac1q\right)
\le
\exp\left(-\sum_{q\in \mathcal Q_{p,j}}\frac1q\right)
\le
B_j^{-K/3}. \tag{8}
$$

Also, since $j<J$, we have $B_{j+1}\le B_J$. By Chebyshev's bound $\text{(2)}$,

$$
P_{p,j}
\le \prod_{q\le B_{j+1}}q
=
\exp(\theta(B_{j+1}))
\le \exp(O(B_J))
=x^{o(1)}, \tag{9}
$$

because $B_J\le \log\log x$.

Summing $\text{(7)}$, with $\text{(8)}$ and $\text{(9)}$, over all $0\le j<J$ and all primes $p\le B_j$, the number of exceptional $n\le x$ for which at least one pair $(j,p)$ fails is at most

$$
x\sum_{j<J}\pi(B_j)B_j^{-K/3}
+x^{o(1)}\sum_{j<J}\pi(B_j). \tag{10}
$$

Since $\pi(B_j)\le B_j$, $B_j\ge B_0$, $K>12$, and $J\ll r$, the first sum in $\text{(10)}$ is

$$
\le xJ B_0^{1-K/3}=o(x).
$$

For the second sum, $\pi(B_j)\le B_j\le B_J\le \log\log x$, so

$$
\sum_{j<J}\pi(B_j)\le J B_J=x^{o(1)}.
$$

Hence the second term in $\text{(10)}$ is also $x^{o(1)}=o(x)$.

It follows that, for all but $o(x)$ integers $n\le x$, the following property holds:

for every $0\le j<J$ and every prime $p\le B_j$, there exists a prime $q\mid n$ such that

$$
q\le B_{j+1},
\qquad
q\equiv 1\pmod p. \tag{11}
$$

We also need a starting prime. Let

$$
P_0=\prod_{p\le B_0}p.
$$

By the same residue-class count and by Mertens' bound $\text{(3)}$,

$$
\#\{n\le x:(n,P_0)=1\}
\le
x\prod_{p\le B_0}\left(1-\frac1p\right)+P_0
\ll
\frac{x}{\log B_0}+\exp(O(B_0)).
$$

Here $\log B_0=\sqrt r\to\infty$, and $\exp(O(B_0))=x^{o(1)}$. Thus almost every $n\le x$ has a prime divisor $p_0\le B_0$.

Take $n\le x$ outside the two exceptional sets just described. Choose a prime divisor $p_0\mid n$ with $p_0\le B_0$. Suppose inductively that $p_j\mid n$ and $p_j\le B_j$. Applying $\text{(11)}$ with $p=p_j$ gives a prime divisor $p_{j+1}\mid n$ such that

$$
p_{j+1}\le B_{j+1},
\qquad
p_{j+1}\equiv 1\pmod {p_j}.
$$

The congruence implies $p_{j+1}>p_j$. Therefore

$$
p_0<p_1<\cdots<p_J
$$

is an admissible prime chain of divisors of $n$. By $\text{(5)}$,

$$
h(n)\ge J+1\gg \log_*x \tag{12}
$$

for all but $o(x)$ integers $n\le x$.

## Upper bound for $H(n)$

Set

$$
\alpha=\frac12,
\qquad
D=\lfloor \sqrt{\log_*x}\rfloor.
$$

Call an ordered pair $(d,e)$ a bad divisor edge if

$$
d<e,
\qquad
D<d,
\qquad
e\equiv 1\pmod d,
\qquad
e<\exp(d^\alpha).
$$

If $d\mid n$ and $e\mid n$ for a bad edge $(d,e)$, then $(d,e)=1$, because $e\equiv 1\pmod d$. Hence $de\mid n$, and the number of $n\le x$ containing this particular edge is at most $x/(de)$.

Let $N(n)$ be the number of bad divisor edges contained in $n$. Averaging over $n\le x$ gives

$$
\frac1x\sum_{n\le x}N(n)
\le
\sum_{d>D}\frac1d
\sum_{\substack{e<\exp(d^\alpha)\\ e\equiv 1\pmod d\\ d<e}}\frac1e. \tag{13}
$$

Write $e=1+kd$ with $k\ge 1$. Then

$$
\sum_{\substack{e<\exp(d^\alpha)\\ e\equiv 1\pmod d\\ d<e}}\frac1e
\le
\frac1d\sum_{1\le k\le \exp(d^\alpha)/d}\frac1k
\ll
\frac{1+d^\alpha}{d}
\ll d^{\alpha-1}. \tag{14}
$$

Combining $\text{(13)}$ and $\text{(14)}$ yields

$$
\frac1x\sum_{n\le x}N(n)
\ll
\sum_{d>D}d^{\alpha-2}
\ll
D^{\alpha-1}
=
D^{-1/2}
=o(1). \tag{15}
$$

By Markov's inequality, almost every $n\le x$ contains no bad divisor edge.

Fix such an $n$, and let

$$
d_1<d_2<\cdots<d_u
$$

be any admissible divisor chain of $n$. At most $D$ of the $d_i$ can be at most $D$. Let

$$
a_1<a_2<\cdots<a_m
$$

be the remaining terms of the chain, so every $a_i>D$. If $m\le 2$, there is nothing to prove. Otherwise, since $n$ contains no bad edge, every edge among the $a_i$ satisfies

$$
a_{i+1}\ge \exp(a_i^\alpha). \tag{16}
$$

Let $F(t)=\exp(t^\alpha)$. Since $\alpha=1/2$,

$$
F(F(t))
=
\exp(\exp(\alpha t^\alpha))
\ge \exp(t)
$$

for every sufficiently large $t$. Since $D\to\infty$, this applies to all $t>D$ once $x$ is sufficiently large. Therefore $\text{(16)}$ implies

$$
a_{i+2}\ge \exp(a_i) \tag{17}
$$

for all $1\le i\le m-2$.

Consider the odd-indexed subsequence $a_1,a_3,a_5,\ldots$. By $\text{(17)}$, each term is at least the exponential of the preceding term. If this subsequence has $s$ terms, then applying $s-1$ logarithms to its last term gives

$$
a_1\le \log^{(s-1)}x.
$$

But $a_1>D\ge 1$ and $\log^{(r)}x\le 1$, where $r=\log_*x$. Hence $s\le r+1$. The same argument applied to the even-indexed subsequence gives at most $r+1$ even-indexed terms. Thus

$$
m\le 2r+2.
$$

Adding the at most $D$ initial terms not exceeding $D$, we get

$$
u\le D+2r+2\ll \log_*x.
$$

Since the chain was arbitrary,

$$
H(n)\ll \log_*x \tag{18}
$$

for all but $o(x)$ integers $n\le x$.

Every prime chain is a divisor chain, so $h(n)\le H(n)$. Combining $\text{(12)}$ and $\text{(18)}$, and intersecting the corresponding full-density sets, proves $\text{(A)}$.

## Transfer from $x$ to $n$

Discard the integers $n<\sqrt x$; there are only $O(\sqrt x)=o(x)$ of them. For $\sqrt x\le n\le x$,

$$
\log_*x=\log_*n+O(1)
$$

uniformly. Since $\log_*n\to\infty$ uniformly on this range as $x\to\infty$, the constants in $\text{(A)}$ may be adjusted to obtain absolute constants $0<c<C<\infty$ such that, for all but $o(x)$ integers $n\le x$,

$$
c\log_*n\le h(n)\le H(n)\le C\log_*n.
$$

Equivalently,

$$
h(n)\asymp \log_*n,
\qquad
H(n)\asymp \log_*n
$$

for almost all $n$.

Finally, on this same full-density set,

$$
\frac{H(n)}{h(n)}\le \frac Cc.
$$

Thus, for the fixed constant $M=C/c$,

$$
\#\{n\le x:H(n)/h(n)\le M\}=x-o(x).
$$

Therefore $H(n)/h(n)$ cannot tend to infinity for almost all $n$.
