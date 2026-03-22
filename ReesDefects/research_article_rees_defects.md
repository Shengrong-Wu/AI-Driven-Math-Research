# Conductor-Reduced Defect Decompositions for Rees Algebras and a Fiber-Corrected Bridge to Linear Type

**Shengrong Wu**

_Automatic Research With GenAI_

## Abstract

Let $(A,\mathfrak m)$ be an excellent normal local domain of dimension $d\ge 2$, and let $I$ be an $\mathfrak m$-primary ideal. Write
$$
\mathcal R(I)=A[It],\qquad
\mathcal R(I)^*=\bigoplus_{n\ge 0}\overline{I^n}t^n,
\qquad
\mathcal U(I)=\bigoplus_{n\ge 0}(I^n)_1t^n,
$$
where $(I^n)_1$ is the first coefficient ideal of $I^n$. The quotient
$$
\mathcal C(I)=\mathcal R(I)^*/\mathcal U(I)
$$
is the pure codimension-one defect controlling Serre's $R_1$ condition for $\mathcal R(I)$, while the quotient
$$
\mathcal E(I)=J/L
$$
between the defining ideal $J$ of $\mathcal R(I)$ and the ideal $L$ of linear relations measures failure of linear type.

This paper records a verified theorem package extracted from the interaction of Puthenpurakal's $R_1$ criterion and the conductor formalism of Gasanova--Herzog--Kling--Moradi. For every nonzero conductor element $r\in \mathfrak m\cap \mathfrak c(I)$ we define the reduced comparison map
$$
\phi_n^r:\operatorname{Sym}_A^n(I)/r\operatorname{Sym}_A^n(I)\longrightarrow \overline{I^n}/r\overline{I^n},
$$
and prove:

1. the exact index formula
   $$
   \lambda(\ker\phi_n^r)-\lambda(\operatorname{coker}\phi_n^r)
   =
   \lambda((J/L)_n);
   $$
2. the exact decomposition
   $$
   \nu_r(n)=d_r(n)+\kappa_r(n)-\tau_r(n),
   \qquad
   \nu_r(n):=\lambda\!\left(\frac{\overline{I^n}}{I^n+r\overline{I^n}}\right),
   $$
   where $d_r$ is the first-coefficient correction, $\kappa_r$ is the conductor-sliced codimension-one defect, and $\tau_r$ is an explicit intersection defect;
3. the asymptotic criterion
   $$
   \mathcal R(I)\text{ is }R_1
   \iff
   \deg \nu_r(n)\le d-2,
   $$
   while in the non-$R_1$ case one has $\deg \nu_r(n)=d-1$;
4. a fiber-corrected bridge theorem: if the fiber-cone equation ideal
   $$
   J_{\mathrm{fib}}=\ker\!\big(\operatorname{Sym}_k(I/\mathfrak mI)\to F(I)\big)
   $$
   vanishes, then there exists a constant $C>0$ such that
   $$
   \lambda((J/L)_n)\le C\,\lambda((I^n)_1/I^n)\qquad\text{for all }n\ge 1,
   $$
   hence
   $$
   \lambda((J/L)_n)=O(n^{d-2}).
   $$

The raw bridge between equation defects and codimension-one defects fails in general: if $J_{\mathrm{fib}}\neq 0$, then the equation defect has maximal symmetric-fiber dimension. Thus the honest contribution is a corrected bridge theorem, not an unconditional one.

## Introduction

### Context and motivation

For an $\mathfrak m$-primary ideal $I$ in a normal local domain, two natural defects govern two different failures of regularity in the blow-up algebra of $I$.

The first is the **equation defect**
$$
\mathcal E(I)=J/L,
$$
where $J$ is the defining ideal of the Rees algebra $\mathcal R(I)$ inside a polynomial presentation of $\operatorname{Sym}_A(I)$, and $L$ is the ideal of linear relations. The module $\mathcal E(I)$ vanishes exactly when $I$ is of linear type.

The second is the **codimension-one normalization defect**
$$
\mathcal C(I)=\mathcal R(I)^*/\mathcal U(I),
$$
where
$$
\mathcal U(I)=\bigoplus_{n\ge 0}(I^n)_1t^n
$$
is the first-coefficient Rees algebra. Puthenpurakal proved that $\mathcal C(I)$ detects the $R_1$ property of $\mathcal R(I)$:
$$
\mathcal R(I)\text{ is }R_1
\iff
\mathcal C(I)=0
\iff
\overline{I^n}=(I^n)_1\ \text{for all }n\ge 1.
$$

These two defects live on different sides of the symmetric--Rees comparison:
$$
\operatorname{Sym}_A(I)\twoheadrightarrow \mathcal R(I)\subseteq \mathcal R(I)^*.
$$
The conductor formalism of Gasanova--Herzog--Kling--Moradi supplies the bridge on the equation side:
$$
\mathfrak c(I)=L:_A J=\operatorname{Ann}_A(J/L).
$$
The guiding question of the research program summarized here was whether one can compare the equation defect and the codimension-one defect quantitatively.

### Related work

Two recent results form the base of this paper.

First, Puthenpurakal showed that for an excellent normal local ring $(A,\mathfrak m)$ of dimension at least $2$ and an $\mathfrak m$-primary ideal $I$, the $R_1$ property of the Rees algebra is equivalent to equality between integral closures and first coefficient ideals:
$$
\mathcal R(I)\text{ is }R_1
\iff
\overline{I^n}=(I^n)_1\ \text{for all }n\ge 1.
$$

Second, Gasanova--Herzog--Kling--Moradi introduced the conductor $\mathfrak c(I)=L:_A J$, proved that it localizes, and in the domain case obtained the identity
$$
J=L:r\qquad\text{for every }0\neq r\in \mathfrak c(I).
$$
This turns multiplication by a conductor element into an equation detector inside the symmetric algebra.

The present paper does not improve the base $R_1$ theorem itself. It reorganizes the mechanism behind it and records the strongest verified bridge statements obtained in the subsequent research log.

### Main result

The strongest theorem package proved in the research log is the following.

For every nonzero conductor element $r\in \mathfrak m\cap \mathfrak c(I)$, the reduced comparison map
$$
\phi_n^r:\operatorname{Sym}_A^n(I)/r\operatorname{Sym}_A^n(I)\to \overline{I^n}/r\overline{I^n}
$$
has finite-length kernel and cokernel, and satisfies the exact index formula
$$
\lambda(\ker\phi_n^r)-\lambda(\operatorname{coker}\phi_n^r)=\lambda((J/L)_n).
$$
Its cokernel is the reduced normalization defect
$$
\nu_r(n)=\lambda\!\left(\frac{\overline{I^n}}{I^n+r\overline{I^n}}\right),
$$
and one has the exact decomposition
$$
\nu_r(n)=d_r(n)+\kappa_r(n)-\tau_r(n),
$$
where
$$
d_r(n)=\lambda\!\left(0:_{(I^n)_1/I^n}r\right),
\qquad
\kappa_r(n)=\lambda\!\left(0:_{\overline{I^n}/(I^n)_1}r\right),
$$
and
$$
\tau_r(n)=
\lambda\!\left(
\frac{(I^n)_1\cap (I^n+r\overline{I^n})}{I^n+r(I^n)_1}
\right).
$$
The leading term of $\nu_r(n)$ detects $R_1$.

The second main theorem is a corrected bridge to linear type. Let
$$
F(I)=\bigoplus_{n\ge 0}I^n/\mathfrak m I^n
$$
be the fiber cone and
$$
J_{\mathrm{fib}}=\ker\!\big(\operatorname{Sym}_k(I/\mathfrak m I)\to F(I)\big)
$$
its equation ideal over $k=A/\mathfrak m$. If $J_{\mathrm{fib}}=0$, then
$$
\lambda((J/L)_n)\le C\,\lambda((I^n)_1/I^n)
$$
for a constant $C$ independent of $n$, hence $\lambda((J/L)_n)=O(n^{d-2})$.

### What is genuinely new

The paper centers on the mechanism, not on a stronger replacement for Puthenpurakal's theorem.

The genuinely new verified outputs are:

1. the **reduced comparison map** $\phi_n^r$ and its exact index formula;
2. the exact defect decomposition
   $$
   \nu_r=d_r+\kappa_r-\tau_r;
   $$
3. the identification of $\tau_r$ as an explicit **intersection defect**;
4. the **fiber-corrected bridge theorem**, which is the strongest true bridge between equation defect and codimension-one defect obtained in the research log;
5. the obstruction theorem showing why the raw uncorrected bridge cannot hold in general.

### Paper outline

Section 2 fixes notation and collects the exact sequences inherited from the two source papers. Section 3 develops the conductor-reduced mechanism and proves the structural identity $\nu_r=d_r+\kappa_r-\tau_r$. Section 4 states the main results. Section 5 proves them. Section 6 discusses the remaining obstruction and the only currently viable route to stronger theorems. Appendix A records the special-fiber obstruction theorem.

## Background and Preliminaries

### Setup and notation

Throughout the paper:

- $(A,\mathfrak m)$ is an excellent normal local domain;
- $\dim A=d\ge 2$;
- $I$ is an $\mathfrak m$-primary ideal;
- $Q(A)$ is the fraction field of $A$;
- $k=A/\mathfrak m$.

Write
$$
\mathcal R(I)=\bigoplus_{n\ge 0}I^n t^n\subseteq A[t],
\qquad
\mathcal R(I)^*=\bigoplus_{n\ge 0}\overline{I^n}t^n\subseteq Q(A)[t].
$$

For each $n\ge 1$, let $U_n=(I^n)_1$ be the first coefficient ideal of $I^n$, and define
$$
\mathcal U(I)=\bigoplus_{n\ge 0}U_n t^n.
$$
Following the notation of the research log, set
$$
D_n:=U_n/I^n,\qquad
C_n:=\overline{I^n}/U_n,\qquad
B_n:=\overline{I^n}/I^n,
$$
and globally
$$
\mathcal D=\bigoplus_{n\ge 1}D_n,\qquad
\mathcal C=\bigoplus_{n\ge 1}C_n,\qquad
\mathcal B=\bigoplus_{n\ge 1}B_n.
$$

On the symmetric side, fix a polynomial presentation
$$
T=A[y_1,\dots,y_m],\qquad
\operatorname{Sym}_A(I)=T/L,\qquad
\mathcal R(I)=T/J,
$$
where $L\subseteq J$ and
$$
\mathcal E:=J/L.
$$

### Standard exact sequences

The inclusions
$$
\mathcal R(I)\subseteq \mathcal U(I)\subseteq \mathcal R(I)^*
$$
yield exact sequences
$$
0\to \mathcal R(I)\to \mathcal U(I)\to \mathcal D\to 0, \tag{2.1}
$$
$$
0\to \mathcal U(I)\to \mathcal R(I)^*\to \mathcal C\to 0, \tag{2.2}
$$
$$
0\to \mathcal D\to \mathcal B\to \mathcal C\to 0. \tag{2.3}
$$

The symmetric--Rees presentation yields
$$
0\to \mathcal E\to \operatorname{Sym}_A(I)\to \mathcal R(I)\to 0. \tag{2.4}
$$

Splicing (2.4) with
$$
0\to \mathcal R(I)\to \mathcal R(I)^*\to \mathcal B\to 0
$$
gives
$$
0\to \mathcal E\to \operatorname{Sym}_A(I)\to \mathcal R(I)^*\to \mathcal B\to 0. \tag{2.5}
$$

### Inherited structural facts

We use the following results proved in the source papers and already extracted in the research log.

1. $\mathcal D$ is a finite graded $\mathcal U(I)$-module and
   $$
   \dim \mathcal D\le d-1.
   $$
2. $\mathcal C$ is a finite graded $\mathcal U(I)$-module and
   $$
   \mathcal C=0\quad\text{or}\quad \dim \mathcal C=d.
   $$
3. One has
   $$
   \mathcal R(I)\text{ is }R_1
   \iff
   \mathcal C=0
   \iff
   \overline{I^n}=U_n\ \text{for all }n\ge 1.
   $$
4. The conductor
   $$
   \mathfrak c(I):=L:_A J
   $$
   satisfies
   $$
   \mathfrak c(I)=\operatorname{Ann}_A(\mathcal E),
   $$
   it localizes, and for every nonzero $r\in \mathfrak c(I)$,
   $$
   J=L:r.
   $$

We also use the elementary finite-length identity
$$
\lambda(0:_M r)=\lambda(M/rM) \tag{2.6}
$$
for any finite-length $A$-module $M$ and any $r\in \mathfrak m$.

### Fiber-cone notation

Let
$$
F(I)=\mathcal R(I)\otimes_A k=\bigoplus_{n\ge 0}I^n/\mathfrak m I^n
$$
be the fiber cone. Set
$$
V:=I/\mathfrak m I,
\qquad
S_k:=\operatorname{Sym}_k(V),
$$
and define the fiber-cone equation ideal
$$
J_{\mathrm{fib}}:=\ker(S_k\to F(I)).
$$

## Mechanism and Main Structural Identity

### Conductor-reduced comparison maps

Fix a nonzero element
$$
r\in \mathfrak m\cap \mathfrak c(I).
$$
For each $n\ge 1$ define
$$
\phi_n^r:\operatorname{Sym}_A^n(I)/r\operatorname{Sym}_A^n(I)\longrightarrow \overline{I^n}/r\overline{I^n}. \tag{3.1}
$$
This factors as
$$
\operatorname{Sym}_A^n(I)/r\operatorname{Sym}_A^n(I)
\xrightarrow{\alpha_n}
I^n/rI^n
\xrightarrow{\beta_n}
U_n/rU_n
\xrightarrow{\gamma_n}
\overline{I^n}/r\overline{I^n}. \tag{3.2}
$$

The conductor identity $J=L:r$ turns multiplication by $r$ into an exact torsion detector in the symmetric algebra:
$$
0\to \mathcal E\to \operatorname{Sym}_A(I)\xrightarrow{\cdot r}\operatorname{Sym}_A(I)\to \operatorname{Sym}_A(I)/r\operatorname{Sym}_A(I)\to 0. \tag{3.3}
$$

Since $\mathcal R(I)\subset A[t]$, multiplication by $r$ is injective on $\mathcal R(I)$ and on $\mathcal U(I)$. Since $\mathcal R(I)^*\subset Q(A)[t]$, it is also injective on $\mathcal R(I)^*$. Applying the snake lemma to (2.4), (2.1), and (2.2) yields degreewise exact sequences
$$
0\to \mathcal E_n\to \operatorname{Sym}_A^n(I)/r\operatorname{Sym}_A^n(I)\xrightarrow{\alpha_n} I^n/rI^n\to 0, \tag{3.4}
$$
$$
0\to D_n[r]\to I^n/rI^n\xrightarrow{\beta_n} U_n/rU_n\to (D_n/rD_n)\to 0, \tag{3.5}
$$
$$
0\to C_n[r]\to U_n/rU_n\xrightarrow{\gamma_n} \overline{I^n}/r\overline{I^n}\to (C_n/rC_n)\to 0. \tag{3.6}
$$

### The four reduced defects

Define
$$
d_r(n):=\lambda(D_n[r])=\lambda(D_n/rD_n), \tag{3.7}
$$
$$
\kappa_r(n):=\lambda(C_n[r])=\lambda(C_n/rC_n), \tag{3.8}
$$
$$
\nu_r(n):=\lambda\!\left(\frac{\overline{I^n}}{I^n+r\overline{I^n}}\right), \tag{3.9}
$$
and let
$$
\tau_r(n)
$$
be the length of the image of the boundary map
$$
\partial_n^r:C_n[r]\longrightarrow D_n/rD_n
$$
coming from multiplication by $r$ on
$$
0\to D_n\to B_n\to C_n\to 0. \tag{3.10}
$$

By (2.6), the two equalities in (3.7) and (3.8) hold because $D_n$ and $C_n$ have finite length.

### The interaction term as an intersection defect

The boundary map $\partial_n^r$ admits an explicit ideal-theoretic description.

Take a class $x+U_n\in C_n[r]$. Then $x\in \overline{I^n}$ and $rx\in U_n$. The connecting map sends
$$
x+U_n\longmapsto rx+(I^n+rU_n)\in U_n/(I^n+rU_n)\cong D_n/rD_n.
$$
Hence
$$
\operatorname{im}\partial_n^r
\cong
\frac{U_n\cap (I^n+r\overline{I^n})}{I^n+rU_n}, \tag{3.11}
$$
and therefore
$$
\tau_r(n)=
\lambda\!\left(
\frac{U_n\cap (I^n+r\overline{I^n})}{I^n+rU_n}
\right). \tag{3.12}
$$

Thus
$$
\tau_r(n)=0
\iff
U_n\cap (I^n+r\overline{I^n})=I^n+rU_n. \tag{3.13}
$$
This is the precise intersection-rigidity statement measured by the interaction term.

## Main Result

We now state the strongest verified theorem package.

### Theorem A (conductor-reduced comparison package)

Assume the setup of Section 2. Let $0\neq r\in \mathfrak m\cap \mathfrak c(I)$.

1. For each $n\ge 1$, the reduced comparison map $\phi_n^r$ has finite-length kernel and cokernel and satisfies
   $$
   \lambda(\ker\phi_n^r)-\lambda(\operatorname{coker}\phi_n^r)
   =
   \lambda(\mathcal E_n). \tag{4.1}
   $$

2. The cokernel of $\phi_n^r$ is the reduced normalization defect:
   $$
   \operatorname{coker}\phi_n^r
   \cong
   \frac{\overline{I^n}}{I^n+r\overline{I^n}}, \tag{4.2}
   $$
   and its length satisfies the exact decomposition
   $$
   \nu_r(n)=d_r(n)+\kappa_r(n)-\tau_r(n). \tag{4.3}
   $$

3. The interaction term is given by
   $$
   \tau_r(n)=
   \lambda\!\left(
   \frac{U_n\cap (I^n+r\overline{I^n})}{I^n+rU_n}
   \right). \tag{4.4}
   $$

4. One has
   $$
   \mathcal R(I)\text{ is }R_1
   \iff
   \deg \nu_r(n)\le d-2, \tag{4.5}
   $$
   while
   $$
   \mathcal R(I)\text{ is not }R_1
   \iff
   \deg \nu_r(n)=d-1. \tag{4.6}
   $$

5. If $\mathcal D=0$, equivalently $U_n=I^n$ for all $n$, then
   $$
   \tau_r(n)=0,\qquad d_r(n)=0,\qquad \nu_r(n)=\kappa_r(n). \tag{4.7}
   $$

### Theorem B (fiber-corrected bridge to linear type)

Assume the setup of Section 2 and, in addition,
$$
J_{\mathrm{fib}}=0.
$$
Then there exists a constant $C>0$ such that for all $n\ge 1$,
$$
\lambda(\mathcal E_n)\le C\,\lambda(D_n). \tag{4.8}
$$
Consequently
$$
\lambda(\mathcal E_n)=O(n^{d-2}). \tag{4.9}
$$
For every nonzero $r\in \mathfrak m\cap \mathfrak c(I)$ one then has
$$
\lambda(\ker\phi_n^r)=\kappa_r(n)+O(n^{d-2}), \tag{4.10}
$$
$$
\lambda(\operatorname{coker}\phi_n^r)=\kappa_r(n)+O(n^{d-2}). \tag{4.11}
$$

### Corollary C

Assume $J_{\mathrm{fib}}=0$ and $\mathcal D=0$. Then
$$
\mathcal E=0,
$$
so $I$ is of linear type.

## Proof of the Main Result

### Proof of Theorem A

We prove the five statements in order.

#### Step 1: auxiliary kernel and cokernel sequences

Let
$$
\psi_n^r:=\gamma_n\circ\beta_n:I^n/rI^n\to \overline{I^n}/r\overline{I^n}.
$$
Write
$$
P_n:=U_n/rU_n,
$$
and let
$$
q_n:P_n\to D_n/rD_n
$$
be the natural cokernel map coming from (3.5). Restrict $q_n$ to $C_n[r]\subseteq P_n$ and define
$$
\theta_n^r:=q_n|_{C_n[r]}:C_n[r]\to D_n/rD_n.
$$

We claim that there are exact sequences
$$
0\to D_n[r]\to \ker(\psi_n^r)\to \ker(\theta_n^r)\to 0, \tag{5.1}
$$
$$
0\to \operatorname{coker}(\theta_n^r)\to \operatorname{coker}(\psi_n^r)\to C_n/rC_n\to 0. \tag{5.2}
$$

To prove (5.1), note from (3.5) that
$$
\ker\beta_n=D_n[r],
\qquad
\operatorname{im}\beta_n=\ker q_n.
$$
Thus
$$
\ker\psi_n^r
=
\beta_n^{-1}(C_n[r]).
$$
Its image in $P_n$ is
$$
\operatorname{im}\beta_n\cap C_n[r]
=
\ker q_n\cap C_n[r]
=
\ker(\theta_n^r).
$$
Since the kernel of $\beta_n$ is $D_n[r]$, we obtain (5.1).

For (5.2), observe that
$$
\operatorname{coker}\psi_n^r
=
\big(\overline{I^n}/r\overline{I^n}\big)\big/\gamma_n(\operatorname{im}\beta_n).
$$
There is an exact sequence
$$
0\to \gamma_n(P_n)/\gamma_n(\operatorname{im}\beta_n)\to \operatorname{coker}\psi_n^r\to \operatorname{coker}\gamma_n\to 0.
$$
Since
$$
\ker\gamma_n=C_n[r]
$$
by (3.6), one has
$$
\gamma_n(P_n)/\gamma_n(\operatorname{im}\beta_n)
\cong
P_n/(C_n[r]+\operatorname{im}\beta_n)
\cong
\operatorname{coker}(\theta_n^r),
$$
while $\operatorname{coker}\gamma_n=C_n/rC_n$. Hence (5.2) follows.

Finally, since $\alpha_n$ is surjective with kernel $\mathcal E_n$ by (3.4), we have
$$
0\to \mathcal E_n\to \ker\phi_n^r\to \ker\psi_n^r\to 0, \tag{5.3}
$$
$$
\operatorname{coker}\phi_n^r\cong \operatorname{coker}\psi_n^r. \tag{5.4}
$$

#### Step 2: proof of the index formula

By (5.3) and (5.4), it is enough to prove
$$
\lambda(\ker\psi_n^r)=\lambda(\operatorname{coker}\psi_n^r). \tag{5.5}
$$

From (5.1) and (5.2),
$$
\lambda(\ker\psi_n^r)
=
\lambda(D_n[r])+\lambda(\ker\theta_n^r), \tag{5.6}
$$
$$
\lambda(\operatorname{coker}\psi_n^r)
=
\lambda(\operatorname{coker}\theta_n^r)+\lambda(C_n/rC_n). \tag{5.7}
$$
Also,
$$
\lambda(\ker\theta_n^r)-\lambda(\operatorname{coker}\theta_n^r)
=
\lambda(C_n[r])-\lambda(D_n/rD_n). \tag{5.8}
$$
Using (2.6),
$$
\lambda(C_n[r])=\lambda(C_n/rC_n),
\qquad
\lambda(D_n[r])=\lambda(D_n/rD_n). \tag{5.9}
$$
Substituting (5.8) and (5.9) into (5.6) and (5.7) gives (5.5). Hence
$$
\lambda(\ker\phi_n^r)-\lambda(\operatorname{coker}\phi_n^r)
=
\lambda(\mathcal E_n),
$$
which proves (4.1).

#### Step 3: the exact decomposition of $\nu_r(n)$

Since
$$
B_n/rB_n
\cong
\frac{\overline{I^n}/I^n}{r(\overline{I^n}/I^n)}
\cong
\frac{\overline{I^n}}{I^n+r\overline{I^n}},
$$
we have
$$
\lambda(B_n/rB_n)=\nu_r(n). \tag{5.10}
$$

Now apply multiplication by $r$ to
$$
0\to D_n\to B_n\to C_n\to 0.
$$
Because all three modules have finite length, we get the long exact sequence
$$
0\to D_n[r]\to B_n[r]\to C_n[r]\xrightarrow{\partial_n^r} D_n/rD_n\to B_n/rB_n\to C_n/rC_n\to 0. \tag{5.11}
$$
Break it into short exact pieces:
$$
0\to D_n[r]\to B_n[r]\to \ker\partial_n^r\to 0, \tag{5.12}
$$
$$
0\to \ker\partial_n^r\to C_n[r]\to \operatorname{im}\partial_n^r\to 0, \tag{5.13}
$$
$$
0\to \operatorname{im}\partial_n^r\to D_n/rD_n\to B_n/rB_n\to C_n/rC_n\to 0. \tag{5.14}
$$
Taking lengths and using (2.6) yields
$$
\lambda(B_n/rB_n)
=
\lambda(D_n[r])+\lambda(C_n[r])-\lambda(\operatorname{im}\partial_n^r).
$$
By definition, $\tau_r(n)=\lambda(\operatorname{im}\partial_n^r)$, so
$$
\nu_r(n)=d_r(n)+\kappa_r(n)-\tau_r(n),
$$
which proves (4.3).

The cokernel description (4.2) follows directly from (5.10) and (5.4).

#### Step 4: the intersection formula for $\tau_r(n)$

Take $x+U_n\in C_n[r]$. Then $x\in \overline{I^n}$ and $rx\in U_n$. Under the connecting map,
$$
x+U_n\longmapsto rx+(I^n+rU_n)\in U_n/(I^n+rU_n)\cong D_n/rD_n.
$$
Therefore the image consists exactly of residue classes represented by elements of
$$
U_n\cap r\overline{I^n}
$$
modulo $I^n+rU_n$. Since $I^n\subseteq U_n$, we have
$$
I^n+(U_n\cap r\overline{I^n})=U_n\cap (I^n+r\overline{I^n}),
$$
hence
$$
\operatorname{im}\partial_n^r
\cong
\frac{U_n\cap (I^n+r\overline{I^n})}{I^n+rU_n}.
$$
Taking lengths proves (4.4).

#### Step 5: asymptotic detection of $R_1$

First suppose $\mathcal C=0$. Then $\kappa_r(n)=0$ for all $n$ and $\tau_r(n)=0$ for all $n$. Since $\dim \mathcal D\le d-1$, one has
$$
d_r(n)=O(n^{d-2}),
$$
hence by (4.3),
$$
\nu_r(n)=O(n^{d-2}).
$$
So $\deg \nu_r(n)\le d-2$.

Now suppose $\mathcal C\neq 0$. Then $\dim \mathcal C=d$. We claim
$$
\dim(0:_{\mathcal C}r)=d. \tag{5.15}
$$
Let $P$ be a minimal prime of $\mathcal C$. Every graded piece $C_n$ has finite length, so
$$
P\cap A=\mathfrak m.
$$
Since $r\in \mathfrak m$, we have $r\in P$. Because minimal primes of a finite module are associated primes, there exists $z\in \mathcal C$ with
$$
\operatorname{Ann}(z)=P.
$$
Then $rz=0$, so $z\in 0:_{\mathcal C}r$. Thus $P\in \operatorname{Supp}(0:_{\mathcal C}r)$ and
$$
\dim(0:_{\mathcal C}r)\ge \dim \mathcal U(I)/P=d.
$$
The reverse inequality is automatic, so (5.15) holds.

Therefore $\kappa_r(n)=\lambda(C_n[r])$ is eventually a polynomial of degree $d-1$. On the other hand,
$$
d_r(n)=O(n^{d-2}),\qquad \tau_r(n)=O(n^{d-2}),
$$
because $\tau_r(n)$ is the length of a subquotient of $D_n/rD_n$ and $\dim \mathcal D\le d-1$. Hence from (4.3),
$$
\nu_r(n)=\kappa_r(n)+O(n^{d-2}),
$$
so $\deg \nu_r(n)=d-1$.

Since $\mathcal R(I)$ is $R_1$ if and only if $\mathcal C=0$, this proves (4.5) and (4.6).

#### Step 6: the case $\mathcal D=0$

If $\mathcal D=0$, then every $D_n=0$. Hence $d_r(n)=0$ and the boundary map
$$
\partial_n^r:C_n[r]\to D_n/rD_n
$$
is zero, so $\tau_r(n)=0$. Thus (4.3) becomes
$$
\nu_r(n)=\kappa_r(n),
$$
proving (4.7).

This completes the proof of Theorem A.

### Proof of Theorem B

We now assume
$$
J_{\mathrm{fib}}=0.
$$

#### Step 1: a degreewise exact sequence through the first-coefficient algebra

The composite
$$
\operatorname{Sym}_A^n(I)\twoheadrightarrow I^n\hookrightarrow U_n
$$
has kernel $\mathcal E_n$ and cokernel $D_n$, so there is an exact sequence
$$
0\to \mathcal E_n\to \operatorname{Sym}_A^n(I)\to U_n\to D_n\to 0. \tag{5.16}
$$

Tensoring (5.16) with $k$ gives an exact segment
$$
\operatorname{Tor}_1^A(k,D_n)\xrightarrow{\alpha_n}
\mathcal E_n/\mathfrak m\mathcal E_n
\xrightarrow{\beta_n}
\operatorname{Sym}_k^n(V)
\xrightarrow{\sigma_n}
U_n/\mathfrak m U_n
\to D_n/\mathfrak m D_n\to 0. \tag{5.17}
$$

Tensoring
$$
0\to I^n\to U_n\to D_n\to 0
$$
with $k$ gives
$$
\operatorname{Tor}_1^A(k,D_n)\xrightarrow{\gamma_n}
I^n/\mathfrak m I^n
\xrightarrow{\iota_n}
U_n/\mathfrak m U_n
\to D_n/\mathfrak m D_n\to 0. \tag{5.18}
$$

Since $J_{\mathrm{fib}}=0$, the natural map
$$
\pi_n:\operatorname{Sym}_k^n(V)\to I^n/\mathfrak m I^n
$$
is an isomorphism for every $n$. Therefore
$$
\sigma_n=\iota_n\circ \pi_n.
$$
Hence
$$
\ker\sigma_n\cong \ker\iota_n=\operatorname{im}\gamma_n. \tag{5.19}
$$
So $\ker\sigma_n$ is a quotient of $\operatorname{Tor}_1^A(k,D_n)$.

From (5.17), the cokernel of $\alpha_n$ is exactly $\ker\sigma_n$. Therefore
$$
0\to \operatorname{im}\alpha_n\to \mathcal E_n/\mathfrak m\mathcal E_n\to \ker\sigma_n\to 0. \tag{5.20}
$$
Both $\operatorname{im}\alpha_n$ and $\ker\sigma_n$ are quotients of $\operatorname{Tor}_1^A(k,D_n)$. Consequently
$$
\dim_k(\mathcal E_n/\mathfrak m\mathcal E_n)\le 2\,\dim_k\operatorname{Tor}_1^A(k,D_n). \tag{5.21}
$$

#### Step 2: uniform control of $\operatorname{Tor}_1^A(k,D_n)$

Set
$$
b_1(A):=\dim_k\operatorname{Tor}_1^A(k,k).
$$
If $M$ is a finite-length $A$-module, then
$$
\dim_k\operatorname{Tor}_1^A(k,M)\le b_1(A)\,\lambda(M). \tag{5.22}
$$
Indeed, choose a composition series for $M$ with simple quotients $k$ and induct on $\lambda(M)$.

Applying (5.22) to $M=D_n$ and combining with (5.21) gives
$$
\mu_A(\mathcal E_n):=\dim_k(\mathcal E_n/\mathfrak m\mathcal E_n)
\le 2b_1(A)\,\lambda(D_n). \tag{5.23}
$$

If $\mathcal E=0$, then there is nothing more to prove. Assume $\mathcal E\neq 0$. Since $\mathcal E$ is annihilated by $\mathfrak c(I)$ and $I$ is $\mathfrak m$-primary, the conductor is $\mathfrak m$-primary in this nontrivial case. Choose $s\ge 1$ such that
$$
\mathfrak m^s\subseteq \mathfrak c(I). \tag{5.24}
$$
Then
$$
\mathfrak m^s\mathcal E_n=0
$$
for every $n$. Hence a minimal generating set of $\mathcal E_n$ gives a surjection
$$
(A/\mathfrak m^s)^{\mu_A(\mathcal E_n)}\twoheadrightarrow \mathcal E_n,
$$
so
$$
\lambda(\mathcal E_n)\le \lambda(A/\mathfrak m^s)\,\mu_A(\mathcal E_n). \tag{5.25}
$$
Combining (5.23) and (5.25), we get
$$
\lambda(\mathcal E_n)\le C\,\lambda(D_n), \tag{5.26}
$$
where
$$
C:=2\,\lambda(A/\mathfrak m^s)\,b_1(A).
$$
This proves (4.8).

#### Step 3: asymptotic consequence

Since $\dim \mathcal D\le d-1$, the Hilbert function of $D_n$ has degree at most $d-2$, so
$$
\lambda(D_n)=O(n^{d-2}).
$$
By (5.26),
$$
\lambda(\mathcal E_n)=O(n^{d-2}),
$$
proving (4.9).

Finally, Theorem A gives
$$
\lambda(\ker\phi_n^r)-\lambda(\operatorname{coker}\phi_n^r)=\lambda(\mathcal E_n)=O(n^{d-2}), \tag{5.27}
$$
and
$$
\lambda(\operatorname{coker}\phi_n^r)=\kappa_r(n)+O(n^{d-2}). \tag{5.28}
$$
Substituting (5.28) into (5.27) yields (4.10) and (4.11).

This completes the proof of Theorem B.

### Proof of Corollary C

If $\mathcal D=0$, then $D_n=0$ for all $n$. By Theorem B,
$$
\lambda(\mathcal E_n)\le C\,\lambda(D_n)=0
$$
for all $n$. Hence $\mathcal E_n=0$ for all $n$, so $\mathcal E=0$. Therefore $J=L$, and $I$ is of linear type.

## Further Directions

The research log reached a clean stopping point: the unconditional bridge from equation defects to codimension-one defects is false in general, and the fiber-corrected theorem is the strongest verified positive statement.

There are three live directions beyond the present paper.

### 1. Compute the interaction term $\tau_r(n)$ in structured classes

The exact decomposition
$$
\nu_r(n)=d_r(n)+\kappa_r(n)-\tau_r(n)
$$
isolates the only genuinely mysterious term:
$$
\tau_r(n)=
\lambda\!\left(
\frac{(I^n)_1\cap (I^n+r\overline{I^n})}{I^n+r(I^n)_1}
\right).
$$
It is known to vanish when $\mathcal D=0$, but no broader verified vanishing class has yet been proved. The natural next target is to test this term in almost complete intersections, $d$-sequence ideals, or classes with explicit symmetric/Rees equations.

### 2. Replace the raw equation defect by a fiber-corrected equation defect

The present paper proves that the raw equation defect contains an unavoidable special-fiber component. A stronger future theorem should probably compare
$$
\mathcal E/\mathfrak m\mathcal E
$$
only after quotienting out the image of the fiber-cone equation ideal, or equivalently compare the residual homological piece coming from $\operatorname{Tor}_1^A(k,\mathcal R(I))$ to the codimension-one defect.

### 3. Determine whether the leading coefficient of $\nu_r(n)$ is independent of $r$

The present results show that for each fixed nonzero $r\in \mathfrak m\cap \mathfrak c(I)$,
$$
\deg \nu_r(n)=d-1
$$
exactly in the non-$R_1$ case. The research log did not prove that the leading coefficient of $\nu_r$ is independent of the choice of conductor element. That question remains open.

## References

1. O. Gasanova, J. Herzog, F. J. Kling, S. Moradi, *On the Rees algebra and the conductor of an ideal*, arXiv:2407.06922.

2. T. J. Puthenpurakal, *First Coefficient ideals and $R_1$ property of Rees algebras*, arXiv:2408.05532.

3. P. Valabrega, G. Valla, *Form rings and regular sequences*, Nagoya Math. J. 72 (1978), 93--101.

4. H. Matsumura, *Commutative Ring Theory*, Cambridge Studies in Advanced Mathematics 8, Cambridge University Press, 1986.

## Appendix A. The special-fiber obstruction theorem

This appendix records the negative statement that forced the corrected form of Theorem B.

### Proposition A.1

There is an exact sequence of graded $S_k=\operatorname{Sym}_k(I/\mathfrak m I)$-modules
$$
\operatorname{Tor}_1^A(k,\mathcal R(I))
\longrightarrow
\mathcal E/\mathfrak m\mathcal E
\longrightarrow
J_{\mathrm{fib}}
\longrightarrow 0. \tag{A.1}
$$

#### Proof

Tensor the exact sequence
$$
0\to \mathcal E\to \operatorname{Sym}_A(I)\to \mathcal R(I)\to 0
$$
with $k=A/\mathfrak m$. This yields
$$
\operatorname{Tor}_1^A(k,\mathcal R(I))
\longrightarrow
\mathcal E\otimes_A k
\longrightarrow
\operatorname{Sym}_A(I)\otimes_A k
\longrightarrow
\mathcal R(I)\otimes_A k
\longrightarrow 0.
$$
Now
$$
\mathcal E\otimes_A k=\mathcal E/\mathfrak m\mathcal E,
\qquad
\operatorname{Sym}_A(I)\otimes_A k=S_k,
\qquad
\mathcal R(I)\otimes_A k=F(I).
$$
The image of $\mathcal E/\mathfrak m\mathcal E\to S_k$ is exactly
$$
\ker(S_k\to F(I))=J_{\mathrm{fib}}.
$$
Hence (A.1) is exact.

### Corollary A.2

If $J_{\mathrm{fib}}\neq 0$, then $\mathcal E/\mathfrak m\mathcal E$ has full $S_k$-dimension
$$
\dim_{S_k}(\mathcal E/\mathfrak m\mathcal E)=\mu(I).
$$

#### Proof

Since $S_k$ is a polynomial ring in $\mu(I)$ variables over $k$, any nonzero ideal of $S_k$ has full dimension $\mu(I)$. By Proposition A.1, $\mathcal E/\mathfrak m\mathcal E$ surjects onto $J_{\mathrm{fib}}$. Hence
$$
\dim_{S_k}(\mathcal E/\mathfrak m\mathcal E)\ge \mu(I).
$$
The reverse inequality is automatic, so equality holds.

### Corollary A.3

If $I$ is $\mathfrak m$-primary and $\mu(I)>d$, then the raw equation defect cannot in general lie on the same asymptotic scale as the codimension-one defect.

#### Proof

If $I$ is $\mathfrak m$-primary, then the fiber cone $F(I)$ has dimension
$$
\dim F(I)=\ell(I)=d.
$$
If $\mu(I)>d$, then the map
$$
S_k\to F(I)
$$
cannot be injective, so $J_{\mathrm{fib}}\neq 0$. By Corollary A.2, the equation defect has maximal symmetric-fiber dimension. On the other hand, the codimension-one defect $\kappa_r(n)$ has degree at most $d-1$. Thus no unconditional comparison of the form
$$
\lambda((J/L)_n)\ll \kappa_r(n)
$$
can hold in general.

This is precisely the obstruction removed by the fiber hypothesis $J_{\mathrm{fib}}=0$ in Theorem B.
