## Method Card
- **Short tag:** K-moduli wall visibility
- **Full name:** Intrinsic visibility package for fixed-ambient K-moduli walls.
- **Input setting:** A fixed-ambient coefficient family with liftable coefficient faces and local product neighborhoods carrying a local delta-gap.
- **New object / driver:** An intrinsic hidden-wall detector built from local product transport and the condition delta_x > 1.
- **Obstruction resolved:** Earlier visibility results depended on an external coefficient-rigidity hypothesis and did not intrinsically force hidden walls onto singular loci.
- **Expected outputs:** Exact wall equations mu_F^GIT = -beta for liftable faces, and a dichotomy showing that any hidden wall must appear over the non-log-smooth locus of a special fiber.
- **Transfer targets:** Wall-crossing analyses in other fixed-ambient K-moduli families and comparisons between coefficient-visible and singularity-visible walls.
- **Main technical risk:** Liftability and local delta-gap hypotheses can be subtle to verify and may fail on precisely the families where hidden walls are hardest to detect.
- **Mechanism type:** defect control, rigidity, variational reduction
- **Tags:** K-moduli, wall-crossing, coefficient-visibility, GIT, delta-gap, log-smooth
- **Method link:** ../methods/k_moduli_wall_visibility.md

**Condensation.** The new viewpoint is that wall visibility in fixed-ambient K-moduli should be decided intrinsically by local product structure and local stability gaps, not by an external coefficient-rigidity assumption. This overcomes the obstruction that one could identify coefficient-visible walls abstractly but had no internal reason forcing hidden walls into the singular part of the family. The operative mechanism is to transport a hidden special divisor through product neighborhoods and then exclude zero-beta divisorial valuations wherever a local delta_x > 1 gap holds. If it works, it turns every wall into either an exact coefficient equation mu_F^GIT = -beta or a singularity-visible phenomenon supported over the non-log-smooth locus.

# Intrinsic visibility of coefficient walls in $K$-moduli 

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

## Abstract

We formulate and prove an intrinsic visibility theorem for fixed-ambient wall crossing in $K$-moduli. The theorem has two parts. First, for every liftable coefficient face, the GIT wall equation is exactly the corresponding special-value equation
$$
\mu_F^{\mathrm{GIT}}=-\beta.
$$
Second, an interior strictly $K$-semistable parameter is forced away from every locally product open set on which a local $\delta$-gap holds, hence any such hidden wall is detected over the non-log-smooth locus of a special fiber. This upgrades the coefficient-rigidity hypothesis of the abstract visibility package to an intrinsic condition.

We then apply the theorem in two directions. In the Kim--Liu--Wang weighted branch family, we recover the full dichotomy: every pre-last wall is coefficient-visible, while the last wall is pair-singularity-visible and is detected by a local weighted blow-up over the unique non-toric $A$-singularity of the special divisor $D_\beta$. As a second application, we study the family
$$
\bigl(\mathbb P^2,\alpha \Lambda + c C_p\bigr),
\qquad
\Lambda=(y=0),
\qquad
C_p:\ z^d+a z x^{d-1}+\sum_{j=0}^d a_j x^{d-j}y^j=0.
$$
On a natural dense open coefficient locus $B^\circ$, we compute the complete coefficient wall arrangement, prove the exact identities
$$
\mu_e^{\mathrm{GIT}}(\alpha,c)=-\beta_{(\mathbb P^2,\alpha\Lambda+cC_e)}(v_e),
$$
and show that there is no hidden wall on $B^\circ$. Thus the second family exhibits the opposite behavior from the weighted branch family: on the generic locus, all walls are coefficient-visible.

## 1. Introduction

Two complementary analyses isolate a precise phenomenon in non-proportional wall crossing for $K$-stability. A wall can arise in two very different ways.

The first mechanism is fixed-ambient and coefficient-theoretic. One starts with a common affine coefficient space $B$ carrying a torus action, a family of log Fano pairs over $B$, and an affine CM character map
$$
\chi:P\to M_\mathbb R
$$
from the coefficient domain. A wall appears when $\chi(\mathbf c)$ crosses a supporting hyperplane of a coefficient face. If the face is liftable, then the corresponding wall model carries a product special test configuration and the wall equation is exactly a $\beta$-equation.

The second mechanism is invisible to the coefficient arrangement. A parameter may lie in the interior of a coefficient chamber and still be strictly $K$-semistable. In that case the destabilizing object comes from a non-product special test configuration. The problem is then to show that the associated special center cannot stay inside a locally rigid part of the family, and therefore must be detected over the non-log-smooth locus of a special fiber.

A family-specific analysis of the weighted branch example proves this dichotomy in the Kim--Liu--Wang family. A parallel abstract analysis proves the coefficient-visible part, the hidden-wall criterion, and an extended visibility theorem under a coefficient-rigidity hypothesis. The present article unifies those two strands and adds two genuinely new ingredients.

First, we replace coefficient-rigidity by an intrinsic criterion. The key input is a local product-neighborhood transport theorem: if the center of a hidden special divisor lies in a neighborhood isomorphic to $V\times \mathbb A^1$, then the same divisor restricts to a divisorial valuation on $V$. Combined with a local $\delta$-gap
$$
\delta_x>1,
$$
this excludes zero-$\beta$ valuations from every such product neighborhood.

Second, we add a second substantial application. The naive plane-branch family
$$
(\mathbb P^2,cC_p)
$$
does not produce a nontrivial wall arrangement: the corresponding $\beta$-functions are all proportional to $c$. The correct family is the non-proportional variant
$$
\bigl(\mathbb P^2,\alpha \Lambda + c C_p\bigr),
\qquad
\Lambda=(y=0).
$$
For this family we compute the coefficient walls explicitly and prove that on a natural dense open coefficient locus there is no hidden wall at all.

The center theorem of the paper is the following.

**Theorem A (Intrinsic visibility theorem).** In the fixed-ambient setup of Sections 2 and 3, assume that every exposed coefficient face met by $\chi(P)$ is liftable. Assume moreover that for every hidden wall point, every point of the corresponding special fiber outside its non-log-smooth locus admits a neighborhood isomorphic over $\mathbb A^1$ to $V\times \mathbb A^1$, where $V$ is an open subset of the original fiber satisfying
$$
\delta_x(X,\Delta)>1
\qquad\text{for all }x\in V.
$$
Then every wall point represented by a semistable coefficient point is of exactly one of the following two types:

1. **coefficient-visible**, detected by a liftable coefficient face and satisfying the exact identity
   $$
   \mu_F^{\mathrm{GIT}}=-\beta
   $$
   on the corresponding wall model;

2. **pair-singularity-visible**, detected by a special divisorial valuation with $\beta=0$ whose special center lies over the non-log-smooth locus of a special fiber.

The weighted-branch family realizes both alternatives. The plane-branch-with-line family on the regular open locus $B^\circ$ realizes only the first one.

The proof road map is short. Section 3 establishes the cone criterion and toric wall centers. Section 4 proves liftability criteria, the facewise identity $\mu^{\mathrm{GIT}}=-\beta$, the hidden-wall criterion, and the local product transport theorem. Section 5 assembles these ingredients into Theorem A. Sections 6 and 7 treat the two applications.

## 2. Standard inputs

We use the following facts from the literature.

1. If a $1$-PS of $\operatorname{Aut}(X,\Delta;L)$ induces a product test configuration, then the weight on the CM line is the generalized Futaki invariant of that product test configuration.

2. If a log Fano pair is $K$-semistable but not $K$-polystable, then there exists a non-product special test configuration with vanishing generalized Futaki invariant whose central fiber is the unique $K$-polystable degeneration.

3. For a special test configuration, the generalized Futaki invariant equals the $\beta$-invariant of the associated special divisorial valuation.

4. For a log Fano pair, $K$-semistability is equivalent to the nonnegativity of $\beta(v)$ for all prime divisors over the pair.

5. Since $\mathbb P^2$ is $K$-polystable, one has
   $$
   S_{-K_{\mathbb P^2}}(v)\le A_{\mathbb P^2}(v)
   $$
   for every divisorial valuation $v$ over $\mathbb P^2$. Equivalently,
   $$
   S_H(v)\le \frac{A_{\mathbb P^2}(v)}{3},
   \qquad H=\mathcal O_{\mathbb P^2}(1).
   $$

6. For a semi-quasihomogeneous plane curve singularity whose weighted initial form is $Z^d+X^s$ with $d,s\ge 2$, the local log canonical threshold equals
   $$
   \operatorname{lct}(Z^d+X^s)=\frac1d+\frac1s.
   $$

Items (1)--(3) are standard in Li--Xu and in the real-coefficient $K$-moduli theory of Liu--Zhou. Item (4) is the valuative criterion for $K$-semistability. Item (6) is the standard semi-quasihomogeneous computation of the local log canonical threshold.

## 3. Fixed-ambient setup and coefficient faces

Let $T$ be an algebraic torus with character lattice $M=X^*(T)$ and cocharacter lattice $N=X_*(T)$. Let
$$
B=\mathbb A^s_{z_1,\dots,z_s}
$$
carry a diagonal $T$-action with nonzero weights
$$
r_1,\dots,r_s\in M.
$$
Let
$$
\pi:(\mathcal X,\mathcal D_1,\dots,\mathcal D_m)\to B
$$
be a $T$-equivariant family, and let $P\subset \mathbb R^m$ be a convex coefficient domain such that for every $\mathbf c=(c_1,\dots,c_m)\in P$ and every relevant fiber $X_p$, the pair
$$
(X_p,\Delta_{p,\mathbf c}),
\qquad
\Delta_{p,\mathbf c}:=\sum_{j=1}^m c_j D_{j,p},
$$
is log Fano. Assume the CM line is $T$-linearized by an affine character map
$$
\chi:P\to M_\mathbb R.
$$

For $p\in B$, set
$$
\operatorname{Supp}(p):=\{i\mid z_i(p)\neq 0\},
\qquad
\Gamma(p):=\operatorname{Cone}\{r_i\mid i\in\operatorname{Supp}(p)\}\subset M_\mathbb R.
$$

### 3.1. Coefficient faces

Fix an exposed face $F$ of some support cone. Choose a primitive supporting covector $\nu_F\in N$ with
$$
\langle m,\nu_F\rangle=0 \quad (m\in F),
\qquad
\langle m,\nu_F\rangle>0 \quad (m\in \Gamma\setminus F)
$$
for a support cone $\Gamma$ having $F$ as an exposed face. Define the supporting hyperplane
$$
H_F:=\{\mathbf c\in P\mid \langle \chi(\mathbf c),\nu_F\rangle=0\}.
$$
The connected components of
$$
P\setminus \bigcup_F H_F
$$
are the **coefficient chambers**.

For an exposed face $F$, define
$$
I_F:=\{i\mid r_i\in F\},
\qquad
B_F:=\{z_j=0\text{ for }j\notin I_F\}\cong \mathbb A^{I_F},
$$
and for $\mathbf c\in H_F$ define
$$
W_F:=\{\mathbf c\in P\mid \chi(\mathbf c)\in \operatorname{relint}(F)\},
$$
$$
B_F^{ss}(\mathbf c):=\{q\in B_F\mid \chi(\mathbf c)\in \Gamma(q)\},
$$
$$
Z_F(\mathbf c):=B_F^{ss}(\mathbf c)//T.
$$

A point $\mathbf c_*\in P$ is a **wall point** if some fiber $(X_p,\Delta_{p,\mathbf c_*})$ is strictly $K$-semistable.

A wall point is called **coefficient-visible** if $\mathbf c_*\in W_F$ for some liftable face $F$. It is called **hidden** if $\mathbf c_*$ lies in the interior of a coefficient chamber. It is called **pair-singularity-visible** if it is hidden and the associated special divisorial valuation with $\beta=0$ is centered over the non-log-smooth locus of a special fiber.

### 3.2. The cone criterion

**Proposition 3.1.** For any $p\in B$ and $\mathbf c\in P$,
$$
p\text{ is }\chi(\mathbf c)\text{-semistable}
\iff
\chi(\mathbf c)\in \Gamma(p).
$$

**Proof.** Let $\nu\in N_\mathbb R$, and let $\lambda_\nu:\mathbb G_m\to T$ be the corresponding $1$-PS. The limit
$$
\lim_{t\to 0}\lambda_\nu(t)\cdot p
$$
exists if and only if
$$
\langle r_i,\nu\rangle\ge 0
\qquad\text{for all }i\in \operatorname{Supp}(p),
$$
that is, if and only if $\nu\in \Gamma(p)^\vee$. By Hilbert--Mumford,
$$
p\text{ is semistable }
\iff
\langle \chi(\mathbf c),\nu\rangle\ge 0
\quad\text{for all }\nu\in \Gamma(p)^\vee.
$$
By the bipolar theorem, this is equivalent to $\chi(\mathbf c)\in \Gamma(p)$. $\square$

**Proposition 3.2.** Let $p\in B$, let $F$ be an exposed face of $\Gamma(p)$ with supporting covector $\nu_F$, and suppose
$$
\chi(\mathbf c)\in \operatorname{relint}(F).
$$
Then the limit
$$
q:=\lim_{t\to 0}\lambda_F(t)\cdot p
$$
exists, lies in $B_F$, satisfies
$$
\Gamma(q)=F,
$$
and is semistable at $\mathbf c$.

**Proof.** Because $F$ is an exposed face of $\Gamma(p)$,
$$
\langle r_i,\nu_F\rangle=0 \quad (r_i\in F),
\qquad
\langle r_i,\nu_F\rangle>0 \quad (r_i\in \Gamma(p)\setminus F).
$$
Hence $\lambda_F$ kills exactly the coordinates whose weights are not in $F$. Therefore $q$ exists and belongs to $B_F$. The surviving support weights are exactly the support weights of $p$ lying on $F$, so they generate $F$, and thus
$$
\Gamma(q)=F.
$$
Since $\chi(\mathbf c)\in \operatorname{relint}(F)\subset F=\Gamma(q)$, Proposition 3.1 implies that $q$ is semistable at $\mathbf c$. $\square$

**Corollary 3.3.** For every exposed face $F$ and every $\mathbf c\in W_F$, the quotient
$$
Z_F(\mathbf c)=B_F^{ss}(\mathbf c)//T
$$
is a semiprojective toric variety. If $F$ is a ray, then $Z_F(\mathbf c)$ is a weighted projective space.

**Proof.** The coordinate subspace $B_F$ is an affine space with diagonal torus action. The semistable locus is cut out by Proposition 3.1, so the quotient is the standard toric GIT quotient. If $F$ is a ray generated by a primitive character $r_F$ and
$$
r_i=m_i r_F
\qquad (i\in I_F),\qquad m_i\in \mathbb Z_{>0},
$$
then the action factors through a one-dimensional torus acting with weights $m_i$, and the quotient is
$$
\mathbb P(m_i\mid i\in I_F).
$$
$\square$

## 4. Liftability, the identity $\mu^{\mathrm{GIT}}=-\beta$, and hidden walls

### 4.1. Liftable faces

An exposed face $F$ is called **liftable** if there exists a primitive cocharacter
$$
\lambda_F:\mathbb G_m\to T
$$
with differential $\nu_F$ such that for every $\mathbf c_0\in W_F$ and every polystable point $q\in B_F^{ss}(\mathbf c_0)$, there is an open set $U_{F,q}\subset P$ containing $W_F$ with the following property: for every $\mathbf c\in U_{F,q}$, the induced $\mathbb G_m$-action on $(X_q,\Delta_{q,\mathbf c})$ is a product special test configuration whose associated special valuation is divisorial. We denote that valuation by
$$
v_{F,q,\mathbf c}.
$$

In fixed-ambient linear-system problems, liftability is often automatic once the supporting $1$-PS fixes the wall model and has divisorial weight valuation.

**Proposition 4.1 (Fixed-ambient liftability criterion).** Let $Y$ be a normal projective $T$-variety, let $V_1,\dots,V_m$ be finite-dimensional $T$-stable linear systems on $Y$, and let
$$
B:=V_1\times\cdots\times V_m.
$$
Assume that every relevant fiber pair $(Y,\Delta_{p,\mathbf c})$ is log Fano. Let $F$ be an exposed coefficient face met by $\chi(P)$, let $\lambda_F$ be the supporting $1$-PS, and let $\mathbf c_0\in W_F$, $q\in B_F^{ss}(\mathbf c_0)$ be polystable. Assume the weight valuation of $\lambda_F$ on $K(Y)$ is divisorial. Then $F$ is liftable.

**Proof.** Since $q\in B_F$, every nonzero coefficient of $q$ has weight in $F$, and $\nu_F$ vanishes on $F$. Hence $\lambda_F$ fixes $q$ and therefore fixes every divisor appearing in the boundary of the wall model. For every $\mathbf c$, the induced action on $(Y,\Delta_{q,\mathbf c})$ is therefore a product test configuration. Because the pair is log Fano, it is a product special test configuration. By assumption the associated weight valuation is divisorial, so the definition of liftability is satisfied. $\square$

A useful local criterion for divisoriality is weighted blow-up divisoriality.

**Corollary 4.2 (Weighted blow-up criterion).** In the situation of Proposition 4.1, suppose that near the generic point of an irreducible $\lambda_F$-fixed subvariety $Z\subset Y$, the variety $Y$ is smooth with local coordinates
$$
(u_1,\dots,u_r,v_1,\dots,v_s)
$$
such that
$$
Z=(v_1=\cdots=v_s=0),
$$
$\lambda_F$ acts trivially on the $u_i$, and
$$
\lambda_F(t)\cdot v_j=t^{w_j}v_j,
\qquad
w_j\in \mathbb Z_{>0},
\qquad
\gcd(w_1,\dots,w_s)=1.
$$
Then the weight valuation of $\lambda_F$ is the divisorial valuation of the exceptional divisor of the weighted blow-up of $Z$ with weights $(w_1,\dots,w_s)$.

**Proof.** The valuation ideals are generated by monomials in the $v_j$ of weighted degree at least $m$, so their Rees algebra is the Rees algebra of the weighted blow-up of $Z$ with weights $(w_1,\dots,w_s)$. The exceptional divisor is prime, and by construction its valuation equals the weight valuation. $\square$

### 4.2. The facewise identity

For a liftable exposed face $F$ with supporting covector $\nu_F$, define
$$
\mu_F^{\mathrm{GIT}}(\mathbf c):=-\langle \chi(\mathbf c),\nu_F\rangle.
$$

**Theorem 4.3 (Facewise identity).** Let $F$ be a liftable face, let $\mathbf c_0\in W_F$, let $q\in B_F^{ss}(\mathbf c_0)$ be polystable, and let $U_{F,q}$ be as above. Then for every $\mathbf c\in U_{F,q}$,
$$
\mu_F^{\mathrm{GIT}}(\mathbf c)
=
-\beta_{(X_q,\Delta_{q,\mathbf c})}(v_{F,q,\mathbf c}).
$$

**Proof.** Because $q\in B_F$, the $1$-PS $\lambda_F$ fixes $q$. By liftability, for every $\mathbf c\in U_{F,q}$ the induced action on $(X_q,\Delta_{q,\mathbf c})$ gives a product special test configuration whose associated special divisorial valuation is $v_{F,q,\mathbf c}$.

By definition of the CM linearization, the weight of $\lambda_F$ on the CM line over $q$ equals
$$
\langle \chi(\mathbf c),\nu_F\rangle.
$$
By the CM/Futaki dictionary, this equals the generalized Futaki invariant of the induced product special test configuration. By the special test configuration formula, the same Futaki invariant equals
$$
\beta_{(X_q,\Delta_{q,\mathbf c})}(v_{F,q,\mathbf c}).
$$
Therefore
$$
\beta_{(X_q,\Delta_{q,\mathbf c})}(v_{F,q,\mathbf c})
=
\langle \chi(\mathbf c),\nu_F\rangle
=
-\mu_F^{\mathrm{GIT}}(\mathbf c).
$$
$\square$

### 4.3. Hidden walls

**Theorem 4.4 (Hidden-wall criterion).** Let $\mathbf c_*$ lie in the interior of a coefficient chamber. Suppose that for some fiber $X_p$ the pair $(X_p,\Delta_{p,\mathbf c_*})$ is strictly $K$-semistable. Then:

1. there exists a special divisorial valuation $v_*$ with
   $$
   \beta_{(X_p,\Delta_{p,\mathbf c_*})}(v_*)=0;
   $$

2. the wall point $\mathbf c_*$ is not explained by any liftable coefficient face.

In particular, every strictly $K$-semistable interior point is a hidden wall point.

**Proof.** Since $(X_p,\Delta_{p,\mathbf c_*})$ is $K$-semistable but not $K$-polystable, there exists a non-product special test configuration with vanishing generalized Futaki invariant. Let $v_*$ be the associated special divisorial valuation. Then
$$
\beta(v_*)=0.
$$
This proves (1).

Suppose that $\mathbf c_*$ were explained by a liftable face $F$. Then there would exist a wall model $(X_q,\Delta_{q,\mathbf c_*})$ and a divisorial valuation $v_{F,q,\mathbf c_*}$ with
$$
0=\beta(v_{F,q,\mathbf c_*}).
$$
By Theorem 4.3,
$$
0=\beta(v_{F,q,\mathbf c_*})=-\mu_F^{\mathrm{GIT}}(\mathbf c_*),
$$
hence $\mathbf c_*\in H_F$. This contradicts the assumption that $\mathbf c_*$ lies in the interior of a coefficient chamber. Therefore no liftable face explains $\mathbf c_*$. $\square$

### 4.4. Intrinsic exclusion of hidden centers

We now isolate the intrinsic replacement for coefficient-rigidity.

**Proposition 4.5 (Local $\delta$-gap).** Let $(X,\Delta)$ be a log Fano pair and let
$$
L:=-(K_X+\Delta).
$$
Suppose $V\subset X$ is an open subset such that
$$
\delta_x(X,\Delta)>1
\qquad\text{for all }x\in V.
$$
Then every divisorial valuation $v$ centered in $V$ satisfies
$$
\beta_{(X,\Delta)}(v)>0.
$$

**Proof.** By definition of $\delta_x$,
$$
\frac{A_{X,\Delta}(v)}{S_L(v)}\ge \delta_x(X,\Delta)>1
$$
for every divisorial valuation $v$ centered at $x\in V$. Hence
$$
A_{X,\Delta}(v)>S_L(v),
$$
that is,
$$
\beta_{(X,\Delta)}(v)>0.
$$
$\square$

The next proposition transports a hidden special divisor through a local product neighborhood.

**Proposition 4.6 (Local product transport).** Let $(X,\Delta)$ be an $n$-dimensional log Fano pair, and let
$$
(\mathfrak X,\mathfrak \Delta)\to \mathbb A^1_t
$$
be a non-product special test configuration of $(X,\Delta)$. Let $E$ be the prime divisor over $\mathfrak X$ defining the associated special valuation $w$ on $K(X)(t)$, normalized by
$$
w(t)=1.
$$
Let $z\in \mathfrak X_0$ be the center of $E$ on the special fiber. Assume there exists an open neighborhood $U\ni z$ and an isomorphism of pairs over $\mathbb A^1$
$$
(U,\mathfrak \Delta|_U)\cong (V,\Delta_V)\times \mathbb A^1
$$
for some open subset $V\subset X$. Then the restriction
$$
v:=w|_{K(V)}
$$
is a nontrivial divisorial valuation on $K(V)$ centered at the point of $V$ corresponding to $z$.

**Proof.** Set $K:=K(V)$. The valuation $w$ is a rank-one divisorial valuation on the $(n+1)$-dimensional function field $K(t)$. Its residue field has transcendence degree
$$
\operatorname{trdeg}_k \kappa(w)=n.
$$
The restriction $v=w|_K$ is nontrivial because $w$ is the valuation associated with a non-product special test configuration.

Since $v(K^\times)$ is a nonzero subgroup of $\mathbb Z$, there exists $d\in \mathbb Z_{>0}$ and $f\in K^\times$ with
$$
v(f)=d.
$$
Set
$$
u:=\frac{t^d}{f}.
$$
Then
$$
w(u)=d-d=0.
$$
Moreover $t$ is algebraic over $K(u)$ because it satisfies the equation
$$
T^d-fu=0.
$$
Hence $K(t)$ is algebraic over $K(u)$. Passing to residue fields, $\kappa(w)$ is algebraic over $\kappa(v)(\bar u)$, and therefore
$$
\operatorname{trdeg}_k \kappa(w)\le \operatorname{trdeg}_k \kappa(v)+1.
$$
Thus
$$
n\le \operatorname{trdeg}_k \kappa(v)+1.
$$

On the other hand, $v$ is a rank-one valuation on the $n$-dimensional field $K$, so Abhyankar's inequality gives
$$
\operatorname{trdeg}_k \kappa(v)+1\le n.
$$
Hence
$$
\operatorname{trdeg}_k \kappa(v)=n-1,
$$
so $v$ is divisorial.

Finally, because $w$ dominates the local ring at $z$ on $V\times \mathbb A^1$, its restriction $v$ dominates the local ring of the corresponding point on $V$. Therefore $v$ is centered there. $\square$

## 5. The intrinsic visibility theorem

We can now prove the center theorem.

**Theorem 5.1 (Intrinsic visibility theorem).** Assume the setup of Section 3. Assume that every exposed coefficient face met by $\chi(P)$ is liftable. Assume moreover that for every hidden wall point, every point of the corresponding special fiber outside its non-log-smooth locus admits a neighborhood isomorphic over $\mathbb A^1$ to $V\times \mathbb A^1$, where $V$ is an open subset of the original fiber satisfying
$$
\delta_x(X,\Delta)>1
\qquad\text{for all }x\in V.
$$
Then every wall point represented by a semistable coefficient point is of exactly one of the following two types:

1. coefficient-visible, detected by a liftable coefficient face;

2. pair-singularity-visible, detected by a special divisorial valuation with $\beta=0$ centered over the non-log-smooth locus of a special fiber.

Moreover, on every liftable coefficient face one has the exact identity
$$
\mu_F^{\mathrm{GIT}}=-\beta.
$$

**Proof.** Let $\mathbf c_*$ be a wall point represented by a semistable coefficient point.

If $\mathbf c_*$ lies on the coefficient hyperplane arrangement, then since the representing coefficient point is semistable, Proposition 3.1 implies that $\chi(\mathbf c_*)$ lies in an exposed face $F$ of its support cone. By assumption $F$ is liftable, so $\mathbf c_*$ is coefficient-visible. The identity
$$
\mu_F^{\mathrm{GIT}}=-\beta
$$
on the corresponding wall model is exactly Theorem 4.3.

Now suppose that $\mathbf c_*$ lies in the interior of a coefficient chamber. Then by Theorem 4.4 there exists a special divisorial valuation $v_*$ with
$$
\beta(v_*)=0,
$$
and $\mathbf c_*$ is hidden. Let
$$
(\mathfrak X,\mathfrak \Delta)\to \mathbb A^1
$$
be the corresponding special test configuration, and let $z$ be the center of the associated prime divisor on the special fiber. If $z$ lay outside the non-log-smooth locus, then by hypothesis $z$ would admit a product neighborhood
$$
U\cong V\times \mathbb A^1
$$
with
$$
\delta_x(X,\Delta)>1
\qquad (x\in V).
$$
By Proposition 4.6, the special divisor would restrict to a divisorial valuation on $V$. By Proposition 4.5, every divisorial valuation centered in $V$ has strictly positive $\beta$. This contradicts
$$
\beta(v_*)=0.
$$
Therefore the special center of $v_*$ must lie over the non-log-smooth locus of the special fiber. By definition, $\mathbf c_*$ is pair-singularity-visible.

The two alternatives are disjoint because pair-singularity-visibility is defined only for hidden interior points. $\square$

## 6. Application I: the weighted branch family

We now recover the full structural theorem for the weighted branch family as an application of Theorem 5.1.

### 6.1. The family and its coefficient data

The family is the Kim--Liu--Wang weighted branch family. In odd parity one works on
$$
W=\mathbb P(1,2,n+2)_{x,y,z}
$$
with divisors
$$
D_p:\ z^2y+a z x^{n+4}+\sum_{j=0}^{n+3} a_j x^{2n+6-2j} y^j=0,
$$
and pairs $(W,wD_p)$ for
$$
0<w<\frac{n+5}{2n+6}.
$$
In even parity one writes $n=2\ell$ and works on
$$
W'=\mathbb P(1,1,\ell+1)_{u,y,z},
\qquad
H=(u=0),
$$
with divisors
$$
D_p:\ z^2y+a z u^{\ell+2}+\sum_{j=0}^{2\ell+3} a_j u^{2\ell+3-j} y^j=0,
$$
and pairs
$$
\left(W',\frac12H+wD_p\right),
\qquad
0<w<\frac{2\ell+5}{4\ell+6}.
$$

The common coefficient space is
$$
B_n=\mathbb A^{n+5}_{a,a_0,\dots,a_{n+3}},
$$
with residual torus
$$
T=(\mathbb G_m)^2
$$
acting with weights
$$
v=(-1,-1),
\qquad
v_j=(j-1,-2)
\qquad (0\le j\le n+3),
$$
and CM character
$$
u_w=
\left(
\frac{1-n+2nw}{6},
\frac{2n+1-(4n+6)w}{3(n+2)}
\right).
$$

These are exactly the coefficient data computed in the weighted branch analysis.

### 6.2. The slice and the VGIT walls

For
$$
w>\frac{2n+1}{4n+6},
$$
one rescales $u_w$ to the affine slice $y=-2$ and obtains
$$
\widetilde u_w=(\rho(w),-2),
$$
where
$$
\rho(w)=\frac{(n+2)(n-1)-2n(n+2)w}{2n+1-(4n+6)w}.
$$
All coefficient weights $v_j$ lie on the same affine line $y=-2$, and the ray through $v=(-1,-1)$ meets that slice at $(-2,-2)$. Therefore semistability is interval containment on the slice, and the walls are exactly the values
$$
w_i=\frac{(n+2)^2-(2n+1)i}{(n+2)(2n+6)-(4n+6)i}
$$
for which
$$
\rho(w_i)=n+2-i.
$$
Before the last $K$-moduli wall, each new wall orbit is a coordinate orbit.

### 6.3. Liftable wall rays and the identity $\mu^{\mathrm{GIT}}=-\beta$

Fix a pre-last wall and let
$$
e=n+3-i
$$
in the odd case and
$$
e=2\ell+3-i
$$
in the even case. Let $p_e$ be the coordinate point with only $a_e\neq 0$.

The associated wall model is
$$
D_e:\ z^2y+x^{2n+6-2e}y^e=0
$$
in odd parity and
$$
D_e:\ z^2y+u^{2\ell+3-e}y^e=0
$$
in even parity. It is obtained as the limit under the supporting $1$-PS
$$
\mu_e(\tau)[x:y:z]=[x:\tau^{-2}y:\tau^{1-e}z]
$$
in odd parity and the analogous $u$-version in even parity.

Each such $1$-PS fixes the wall model and acts with divisorial weight valuation. The corresponding intrinsic complexity-one valuation is
$$
v_e=v(1,n+3-e)
$$
in odd parity and
$$
v_e=v(2,2\ell+3-e)
$$
in even parity.

Therefore every pre-last coefficient face is liftable by Proposition 4.1, and Theorem 4.3 applies. In this family the resulting equality is the explicit identity
$$
\mu_e^{\mathrm{GIT}}(w)=-\beta_{D_e}(v_e).
$$
Equivalently,
$$
\mu_e^{\mathrm{GIT}}(w)=0
\iff
\beta_{D_e}(v_e)=0
\iff
w=w_i.
$$

Thus every pre-last wall is coefficient-visible.

### 6.4. The last wall is not a coefficient wall

Let
$$
m=\frac{n+1}{2}
$$
when $n$ is odd, and let $m=\ell+1$ when $n=2\ell$ is even. The weighted branch computation shows that the last $K$-moduli wall occurs at
$$
\xi_n=\frac{n^3+11n^2+31n+23}{2n^3+18n^2+50n+42}
$$
in odd parity and at
$$
\xi_{2\ell}=\frac{2\ell^2+8\ell+3}{4\ell^2+12\ell+6}
$$
in even parity.

The same computation gives the strict inequalities
$$
w_m<\xi_n<\frac{n+5}{2n+6}
$$
in odd parity and
$$
\frac12<\xi_{2\ell}<\frac{2\ell+5}{4\ell+6}
$$
in even parity. Equivalently,
$$
\rho(\xi_n)\in \left(\frac{n+1}{2},\frac{n+3}{2}\right),
\qquad
\rho(\xi_{2\ell})\in (\ell,\ell+1).
$$
Therefore the CM character lies strictly inside the last VGIT chamber at the last $K$-wall. In particular, the last wall is hidden from the fixed-ambient coefficient arrangement.

### 6.5. The last wall is pair-singularity-visible

The weighted branch computation also identifies a special fixed-ambient model $D_\beta$ carrying the unique non-toric $A$-singularity relevant to the last wall. Let $E$ be the exceptional divisor of the corresponding weighted blow-up.

In odd parity, $E$ arises from the local weighted blow-up of weights $(2,n+4)$ and has
$$
\beta_E(w)=
\frac{n^3+11n^2+31n+23-(2n^3+18n^2+50n+42)w}{3(n+2)(n+3)}.
$$
In even parity, $E$ arises from the local weighted blow-up of weights $(1,\ell+2)$ and has
$$
\beta_E(w)=
\frac{2\ell^2+8\ell+3-(4\ell^2+12\ell+6)w}{6(\ell+1)}.
$$
Hence
$$
\beta_E(w)=0
\iff
w=\xi_n
\quad\text{or}\quad
w=\xi_{2\ell}.
$$

Because the last wall is not coefficient-visible, Theorem 4.4 identifies it as hidden. The special divisor $E$ has $\beta_E=0$ and is centered over the non-log-smooth point of the special fiber $D_\beta$. Therefore the last wall is pair-singularity-visible.

We have proved the following.

**Theorem 6.1.** In the Kim--Liu--Wang weighted branch family, every wall before the last one is coefficient-visible, and on each pre-last wall model one has
$$
\mu_e^{\mathrm{GIT}}(w)=-\beta_{D_e}(v_e).
$$
The last wall lies strictly inside the final VGIT chamber and is detected instead by the local weighted-blow-up divisor over the unique non-toric $A$-singularity of the special divisor $D_\beta$. In particular, the weighted branch family realizes both alternatives of Theorem 5.1.

## 7. Application II: plane branches with a fixed line

We now give a second substantial application, in which the generic picture is purely coefficient-visible.

### 7.1. The family and its coefficient geometry

Fix an integer $d\ge 3$ and a real number $0<\alpha<1$. Let
$$
\Lambda=(y=0)\subset \mathbb P^2_{x,y,z},
$$
and let
$$
B_d=\mathbb A^{d+2}_{a,a_0,\dots,a_d}.
$$
For
$$
p=(a,a_0,\dots,a_d)\in B_d
$$
define
$$
C_p:\ z^d+a z x^{d-1}+\sum_{j=0}^d a_j x^{d-j} y^j=0.
$$
We study the log Fano pairs
$$
(\mathbb P^2,\alpha\Lambda+cC_p),
\qquad
0<c<\frac{3-\alpha}{d}.
$$

Let
$$
T=(\mathbb G_m)^2
$$
act on coordinates by
$$
(s,t)\cdot [x:y:z]=[sx:ty:z].
$$
The coefficient weights are
$$
r_a=(-(d-1),0),
\qquad
r_j=(-(d-j),-j)
\qquad (0\le j\le d).
$$
All $r_j$ lie on the affine line
$$
u+v=-d.
$$
The ray through $r_a$ meets the same affine line at $r_0$, so after taking the common slice the support points are indexed by
$$
0,1,\dots,d.
$$

For $e>0$, let $F_e=\mathbb R_{\ge 0}r_e$. For $e=0$, the ray $F_0$ contains both $r_a$ and $r_0$.

The supporting quotient for $F_0$ is
$$
Z_{F_0}\cong \mathbb P(d-1,d),
$$
while for $e>0$ the ray quotient is a point.

### 7.2. Liftable wall rays

For $0\le e\le d$, define
$$
\lambda_e(\tau)[x:y:z]=[\tau^e x:\tau^{e-d}y:z].
$$
If $a_e\neq 0$ and $a_j=0$ for $j>e$, then
$$
\lim_{\tau\to 0}\lambda_e(\tau)\cdot C_p
=
C_e,
$$
where
$$
C_e:\ z^d+x^{d-e}y^e=0
\qquad (e>0),
$$
and for $e=0$ one gets the weighted-projective wall family
$$
C_{[u:v]}:\ z^d+u z x^{d-1}+v x^d=0,
\qquad [u:v]\in \mathbb P(d-1,d).
$$

On the affine chart $y=1$ with coordinates
$$
X=\frac{x}{y},
\qquad
Z=\frac{z}{y},
$$
the same $1$-PS acts by
$$
X\mapsto \tau^d X,
\qquad
Z\mapsto \tau^{d-e} Z.
$$
Thus the associated valuation is the weighted-blow-up valuation
$$
v_e=v\!\left(\frac d{g_e},\frac{d-e}{g_e}\right),
\qquad
g_e:=\gcd(d,e).
$$
Each ray is therefore liftable by Corollary 4.2.

### 7.3. The $\beta$-functions on the wall models

For $e>0$, the center of $v_e$ is the point
$$
P=[0:1:0],
$$
which does not lie on $\Lambda$. Hence
$$
v_e(\Lambda)=0.
$$
Moreover
$$
A_{\mathbb P^2}(v_e)=\frac{2d-e}{g_e},
\qquad
S_H(v_e)=\frac{2d-e}{3g_e},
\qquad
v_e(C_e)=\frac{d(d-e)}{g_e}.
$$
Since
$$
-(K_{\mathbb P^2}+\alpha\Lambda+cC_e)=(3-\alpha-dc)H,
$$
one obtains
$$
\beta_e(\alpha,c)
:=
\beta_{(\mathbb P^2,\alpha\Lambda+cC_e)}(v_e)
=
\frac{\alpha(2d-e)+dc(2e-d)}{3g_e}.
$$

For $e=0$, the wall family is $C_{[u:v]}$. The relevant valuation is the ordinary blow-up at $P$, namely $v_0=v(1,1)$, and
$$
\beta_0(\alpha,c)=\frac{2\alpha-dc}{3}.
$$

Therefore Theorem 4.3 gives the exact wall identity
$$
\mu_e^{\mathrm{GIT}}(\alpha,c)
=
-\beta_e(\alpha,c)
\qquad (0\le e\le d).
$$

### 7.4. The common CM character and the coefficient walls

The equations for $e=0$ and $e=1$ determine the common CM character uniquely. One finds
$$
\chi_{\alpha,c}
=
\left(
-\frac{\alpha+dc}{3},
\frac{2\alpha-dc}{3}
\right).
$$
For
$$
c>\frac{\alpha}{2d},
$$
the ray through $\chi_{\alpha,c}$ meets the affine line $u+v=-d$. After positive rescaling one obtains
$$
\widetilde\chi_{\alpha,c}
=
\bigl(-(d-\rho(c)),-\rho(c)\bigr),
$$
with
$$
\rho(c)=\frac{d(dc-2\alpha)}{2dc-\alpha}.
$$
A direct derivative computation gives
$$
\rho'(c)=\frac{3\alpha d^2}{(2dc-\alpha)^2}>0,
$$
so $\rho$ is strictly increasing.

Because the slice points are exactly $0,1,\dots,d$, semistability is interval containment:
$$
p\text{ is semistable at }(\alpha,c)
\iff
\rho(c)\in [j_{\min}(p),j_{\max}(p)].
$$
In particular, semistable coefficient points exist if and only if
$$
\rho(c)\in [0,d],
$$
that is, if and only if
$$
c\ge \frac{2\alpha}{d}.
$$
The walls occur exactly when $\rho(c)$ equals an integer. Solving
$$
\rho(c_e)=e
$$
gives
$$
c_e=\frac{\alpha(2d-e)}{d(d-2e)}.
$$
These are positive exactly for
$$
0\le e<\frac d2,
$$
and strictly increasing in $e$ because
$$
\frac{d}{de}\left(\frac{2d-e}{d-2e}\right)=\frac{3d}{(d-2e)^2}>0.
$$

Let
$$
c_{\max}:=\frac{3-\alpha}{d}.
$$
Then
$$
c_e<c_{\max}
\iff
e<\frac{d(1-\alpha)}{2-\alpha}.
$$
Define
$$
m:=\max\left\{e\in \mathbb Z_{\ge 0}\ \middle|\ e<\frac{d(1-\alpha)}{2-\alpha}\right\}.
$$
Then the coefficient walls in the log Fano interval are exactly
$$
c_0<c_1<\cdots<c_m,
$$
with
$$
c_0=\frac{2\alpha}{d},
\qquad
c_m<c_{\max}\le c_{m+1}
$$
whenever $m+1<d/2$.

### 7.5. A natural regular open locus

Let
$$
P=[0:1:0]\in \mathbb P^2.
$$
Define $B^\circ\subset B_d$ to be the open set of coefficient points $p$ such that:

1. $C_p$ is smooth on $\mathbb P^2\setminus \{P\}$;

2. $C_p$ meets $\Lambda$ transversely.

This is a nonempty $T$-invariant Zariski open subset.

For $p\in B^\circ$, the pair $(\mathbb P^2,\alpha\Lambda+cC_p)$ is log smooth away from $P$. Thus any hidden wall on $B^\circ$ would have to come from a divisorial valuation centered at $P$.

We now show that this never happens at any non-wall semistable parameter.

### 7.6. Two local lemmas on $\mathbb P^2$

**Lemma 7.2.** For every divisorial valuation $v$ over $\mathbb P^2$,
$$
S_H(v)\le \frac{A_{\mathbb P^2}(v)}{3}.
$$

**Proof.** Since $\mathbb P^2$ is $K$-polystable,
$$
A_{\mathbb P^2}(v)\ge S_{-K_{\mathbb P^2}}(v).
$$
Now $-K_{\mathbb P^2}=3H$, so
$$
S_{-K_{\mathbb P^2}}(v)=3S_H(v).
$$
Hence
$$
S_H(v)\le \frac{A_{\mathbb P^2}(v)}{3}.
$$
$\square$

**Lemma 7.3.** Let $x$ be a smooth point of a smooth surface $X$, let $u,v$ be regular parameters at $x$, and let $w$ be a divisorial valuation centered at $x$. Then
$$
A_X(w)\ge w(u)+w(v).
$$

**Proof.** Choose a model $\pi:Y\to X$ on which the corresponding prime divisor $E$ appears, and let $w=\operatorname{ord}_E$. At the generic point of $E$ choose a local equation $s=0$ for $E$. Write
$$
u=s^a \phi,
\qquad
v=s^b \psi
$$
with $\phi,\psi$ not divisible by $s$, so
$$
w(u)=a,
\qquad
w(v)=b.
$$
Then
$$
\pi^*(du\wedge dv)
=
d(s^a\phi)\wedge d(s^b\psi)
$$
has vanishing order at least $a+b-1$ along $E$. Since $du\wedge dv$ trivializes $K_X$ locally, the coefficient of $E$ in $K_Y-\pi^*K_X$ is at least $a+b-1$. Therefore
$$
A_X(w)=1+\operatorname{ord}_E(K_Y-\pi^*K_X)\ge a+b=w(u)+w(v).
$$
$\square$

### 7.7. No hidden wall on $B^\circ$

We now prove the second application.

**Theorem 7.4.** Let $p\in B^\circ$, and let
$$
c\in (0,c_{\max})
$$
be a coefficient-semistable value which is not one of the wall values $c_e$. Then the pair
$$
(\mathbb P^2,\alpha\Lambda+cC_p)
$$
is $K$-stable. In particular, there is no hidden wall on $B^\circ$.

**Proof.** Let $E$ be any prime divisor over $\mathbb P^2$. We show
$$
\beta_{(\mathbb P^2,\alpha\Lambda+cC_p)}(E)>0.
$$
Write
$$
A(E):=A_{\mathbb P^2}(E),
\qquad
S(E):=S_H(E).
$$
Then
$$
\beta(E)=A(E)-\alpha E(\Lambda)-c E(C_p)-(3-\alpha-dc)S(E).
$$
By Lemma 7.2,
$$
\beta(E)\ge \frac{\alpha+dc}{3}A(E)-\alpha E(\Lambda)-c E(C_p).
$$

Because $c$ is coefficient-semistable and not a wall value, the interval criterion implies
$$
c>c_0=\frac{2\alpha}{d}.
$$

We distinguish cases according to the center of $E$ on $\mathbb P^2$.

First, if the center is outside $\Lambda\cup C_p$, then
$$
E(\Lambda)=E(C_p)=0,
$$
so
$$
\beta(E)\ge \frac{\alpha+dc}{3}A(E)>0.
$$

Second, suppose the center lies on a smooth point of $\Lambda\setminus C_p$. Choose regular parameters $u_1,u_2$ with $\Lambda=(u_1=0)$. Then $E(C_p)=0$, and Lemma 7.3 gives
$$
A(E)\ge E(u_1)+E(u_2).
$$
Hence
$$
\beta(E)\ge \frac{\alpha+dc}{3}\bigl(E(u_1)+E(u_2)\bigr)-\alpha E(u_1)
= \frac{dc-2\alpha}{3}E(u_1)+\frac{\alpha+dc}{3}E(u_2)>0.
$$

Third, suppose the center lies on a smooth point of $C_p\setminus \Lambda$. Choose regular parameters $u_1,u_2$ with $C_p=(u_2=0)$. Then Lemma 7.3 gives
$$
A(E)\ge E(u_1)+E(u_2),
$$
and therefore
$$
\beta(E)\ge \frac{\alpha+dc}{3}\bigl(E(u_1)+E(u_2)\bigr)-c E(u_2)
= \frac{\alpha+dc}{3}E(u_1)+\frac{\alpha+c(d-3)}{3}E(u_2)>0.
$$

Fourth, suppose the center lies on $\Lambda\cap C_p$. Because $p\in B^\circ$, the intersection is transverse. Choose regular parameters $u_1,u_2$ with
$$
\Lambda=(u_1=0),
\qquad
C_p=(u_2=0).
$$
Then Lemma 7.3 gives
$$
A(E)\ge E(u_1)+E(u_2),
$$
and
$$
\beta(E)\ge \frac{\alpha+dc}{3}\bigl(E(u_1)+E(u_2)\bigr)-\alpha E(u_1)-c E(u_2)
= \frac{dc-2\alpha}{3}E(u_1)+\frac{\alpha+c(d-3)}{3}E(u_2)>0.
$$

It remains to consider valuations centered at
$$
P=[0:1:0].
$$
Let
$$
e_+(p):=\max\{j\mid a_j\neq 0\}.
$$
Set
$$
k:=\lfloor \rho(c)\rfloor+1.
$$
Since $c$ is not a wall value, $\rho(c)\notin \mathbb Z$. By semistability,
$$
\rho(c)\in [j_{\min}(p),j_{\max}(p)],
$$
hence
$$
e_+(p)=j_{\max}(p)\ge k.
$$
Set
$$
s:=d-e_+(p).
$$
On the chart $y=1$ the local equation of $C_p$ at $P$ is
$$
f_P(X,Z)=Z^d+a Z X^{d-1}+X^s u(X),
$$
where $u(0)\neq 0$ if $s\ge 1$.

If $s=0$, then $P\notin C_p$, already covered by the first case. If $s=1$, then $P$ is a smooth point of $C_p$, already covered by the third case. So we may assume $s\ge 2$.

Consider the weights
$$
\operatorname{wt}(X)=d,
\qquad
\operatorname{wt}(Z)=s.
$$
The weighted degree of the principal part $Z^d+X^s$ is $ds$, while the term $Z X^{d-1}$ has weighted degree
$$
s+d(d-1)>ds
$$
because $s<d$. Therefore $f_P$ is semi-quasihomogeneous with weighted initial form
$$
Z^d+X^s.
$$
By the standard semi-quasihomogeneous theorem,
$$
\operatorname{lct}_P(C_p)=\frac1d+\frac1s.
$$
Hence for every prime divisor $E$ centered at $P$,
$$
E(C_p)\le \frac{ds}{d+s}A(E).
$$
Therefore
$$
\beta(E)\ge
\left(\frac{\alpha+dc}{3}-c\frac{ds}{d+s}\right)A(E).
$$
Since $s=d-e_+(p)$, this coefficient equals
$$
\frac{\alpha(2d-e_+(p))+dc(2e_+(p)-d)}{3(2d-e_+(p))}.
$$

We now check that this number is positive. If $e_+(p)\ge d/2$, then $2e_+(p)-d\ge 0$, so positivity is immediate. If $e_+(p)<d/2$, then $k<d/2$ as well, because $e_+(p)\ge k$. Since $\rho$ is strictly increasing and $\rho(c)<k$, one has
$$
c<c_k.
$$
Because the wall values are strictly increasing for $e<d/2$ and $e_+(p)\ge k$, we get
$$
c<c_k\le c_{e_+(p)}.
$$
Thus
$$
\alpha(2d-e_+(p))+dc(2e_+(p)-d)>0.
$$
Hence $\beta(E)>0$ in every case.

We have proved that every prime divisor over $\mathbb P^2$ has strictly positive $\beta$-invariant. By the valuative criterion, the pair is $K$-stable. In particular, there is no hidden wall on $B^\circ$. $\square$

We combine the previous calculations.

**Theorem 7.5.** On the regular open locus $B^\circ$, the wall structure of the family
$$
(\mathbb P^2,\alpha\Lambda+cC_p)
$$
is completely coefficient-visible. More precisely:

1. the coefficient walls in the log Fano interval are exactly
   $$
   c_e=\frac{\alpha(2d-e)}{d(d-2e)}
   $$
   for
   $$
   0\le e<\frac{d(1-\alpha)}{2-\alpha};
   $$

2. the wall center for $e=0$ is
   $$
   Z_{F_0}\cong \mathbb P(d-1,d),
   $$
   while for $e>0$ the wall center is a point;

3. on every wall model one has the exact identity
   $$
   \mu_e^{\mathrm{GIT}}(\alpha,c)=-\beta_e(\alpha,c);
   $$

4. there is no hidden wall on $B^\circ$.

**Proof.** Parts (1)--(3) are Sections 7.2--7.4. Part (4) is Theorem 7.4. $\square$

## 8. Final remarks

The weighted branch family and the plane-branch-with-line family illustrate two opposite outcomes of the same abstract theorem.

In the weighted branch family, the fixed-ambient coefficient problem controls every wall before the last one, but the final wall is forced out of the coefficient arrangement and is detected by a singularity valuation over a special fiber. This is the genuinely two-mechanism picture.

In the plane-branch-with-line family, the coefficient arrangement is again nontrivial and the exact identities
$$
\mu^{\mathrm{GIT}}=-\beta
$$
hold on all liftable wall models. However, on the natural dense regular locus $B^\circ$, there is no hidden wall at all. Thus the second application shows that hidden walls are not forced by non-proportionality alone; they arise only when the special singularity geometry is strong enough to overcome the local $\delta$-gap mechanism.

This is exactly the conceptual content of Theorem 5.1. The theorem is not merely a reformulation of a family-specific calculation. It separates three independent tasks:

1. identify the coefficient faces and prove liftability;

2. compare product CM weights with $\beta$-invariants on wall models;

3. show that a hidden special divisor cannot remain in the locally product, $\delta$-rigid part of the family.

Once these are separated, the weighted branch family and the plane-branch-with-line family become two clean test cases for the same theorem. The first family exhibits both coefficient-visible and pair-singularity-visible walls. The second family exhibits only coefficient-visible walls on its regular coefficient locus. Together they show that the visibility theorem is both flexible and sharp.

## References

[1] C. Li and C. Xu, *Special test configuration and $K$-stability of Fano varieties*, Ann. of Math. (2) **180** (2014), no. 1, 197--232.

[2] Y. Liu and C. Zhou, *$K$-moduli with real coefficients*, arXiv:2412.15723.

[3] Y. Liu and C. Zhou, *Non-proportional wall crossing for $K$-stability*, arXiv:2412.15725.

[4] I.-K. Kim, Y. Liu, and C. Wang, *Wall-crossing for $K$-moduli spaces of certain families of weighted projective hypersurfaces*, arXiv:2406.07907.

[5] J. Kollár, *Singularities of the Minimal Model Program*, Cambridge Tracts in Mathematics **200**, Cambridge University Press, 2013.
