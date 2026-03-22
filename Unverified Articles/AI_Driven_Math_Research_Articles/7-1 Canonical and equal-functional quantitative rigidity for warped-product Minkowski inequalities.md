## Method Card
- **Short tag:** canonical Minkowski comparator
- **Full name:** Canonical equal-functional representative for Minkowski stability.
- **Input setting:** Star-shaped strictly mean-convex hypersurfaces in the three-dimensional warped-product setting of the quantitative Minkowski inequality.
- **New object / driver:** The canonical totally umbilical comparator U_eqcan(Sigma) fixed by a support-function moment and an equal-functional radius correction.
- **Obstruction resolved:** Existing quantitative rigidity gives closeness to a whole family of totally umbilical hypersurfaces rather than to a canonical model.
- **Expected outputs:** A canonical comparator with the same Minkowski functional value, a Hausdorff estimate in terms of the deficit, and a clarified picture of the first-harmonic degeneracy.
- **Transfer targets:** Other quantitative rigidity problems where the equality set is a family and one needs a canonical representative before extracting geometry.
- **Main technical risk:** The canonicalization has to work globally and at low regularity while simultaneously fixing the center and matching the functional value.
- **Mechanism type:** rigidity, variational reduction, comparison geometry
- **Tags:** Minkowski-inequality, warped-product, canonical-comparator, umbilical, quantitative-rigidity, deficit
- **Method link:** ../methods/canonical_minkowski_comparator.md

**Condensation.** The new viewpoint is that Minkowski stability should be measured against a canonically chosen totally umbilical hypersurface with the same functional value, not merely against an unspecified equality family. This overcomes the obstruction that the original deficit only places the hypersurface near a degenerate family and leaves the comparison geometry noncanonical. The operative mechanism is to fix the center through a support-function moment and then solve an equal-functional, equivalently equal-area, correction inside the umbilical family. If it works, it converts qualitative proximity into a canonical quantitative rigidity statement and isolates the first-harmonic degeneracy in a usable form.

# Canonical and equal-functional quantitative rigidity for warped-product Minkowski inequalities

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

## Abstract

We study the quantitative rigidity problem for the warped-product Minkowski inequality in dimension three, in the setting of star-shaped strictly mean-convex hypersurfaces treated by Scheuer and Sahjwani. Let
$$
(M^3,\bar g)=((a,b)\times S^2,\,dr^2+\lambda(r)^2\sigma),
$$
with $\lambda>0$ and $\lambda'>0$, and let
$$
\mathcal W(\Sigma):=\int_\Sigma H_1\,d\mu+\frac12\int_{\widehat\Sigma}\overline{\mathrm{Ric}}(\partial_r,\partial_r)\,dV.
$$
If $\phi$ denotes the equality profile of the slice family and
$$
D_A(\Sigma):=\mathcal W(\Sigma)-\phi(|\Sigma|)
$$
is the Minkowski deficit, then Sahjwani's stability theorem gives quantitative proximity to the totally umbilical family, while the strict radial-rigidity regime collapses that family to the slices. The main new point of this article is a canonicalization theorem in the non-strict branch. We construct a canonical totally umbilical representative $U_{\mathrm{eqcan}}(\Sigma)$ which is simultaneously canonical and equal-functional:
$$
\mathcal W\big(U_{\mathrm{eqcan}}(\Sigma)\big)=\mathcal W(\Sigma),
$$
and prove the sharp qualitative form of the quantitative estimate
$$
d_H\big(\Sigma,U_{\mathrm{eqcan}}(\Sigma)\big)\le C D_A(\Sigma)^{1/6}.
$$
The construction is global and low-regularity: in the Euclidean conformal chart we fix the center by a support-function moment, then correct the radius by the equal-functional condition, equivalently the equal-area condition on the totally umbilical family. We also record a local first-harmonic modulation theorem in $W^{2,3}$, which clarifies the geometry of the degeneracy although it is not needed in the final globalization. The strict branch is recovered as a corollary.

## 1. Introduction

### 1.1. Background

In Euclidean space, the Minkowski inequality controls the total mean curvature of a convex surface from below by a power of the area, and the equality case is the sphere. Stability asks for a converse: if the deficit is small, must the hypersurface be close to a sphere? Quantitative answers in Euclidean and anisotropic settings are now classical; a particularly relevant input for the present paper is the nearly umbilical rigidity theorem of De Rosa and Gioffr\`e, which controls proximity to the sphere from small trace-free second fundamental form.

In warped products, Scheuer proved several Minkowski-type inequalities by means of locally constrained inverse-curvature flows, and Sahjwani recently established deficit estimates for the associated stability problem in the three-dimensional branch most relevant here. The equality family is more delicate than in Euclidean space. In the strict radial-rigidity regime, equality still singles out the radial slices. In the non-strict regime, however, totally umbilical hypersurfaces form a larger family; in the conformally flat chart they become Euclidean round spheres, and off-center spheres show that one cannot expect quantitative closeness to the normalized slice itself.

The purpose of this article is to close exactly this gap. We prove that the deficit controls the distance to a **canonically chosen** totally umbilical representative, and we refine the construction so that the canonical representative is also **equal-functional**. This gives a natural terminal object for the non-strict branch and converts the family estimate into a genuine rigidity theorem.

### 1.2. Novelty of the present note

Relative to the existing literature, the new points are the following.

1. We turn Sahjwani's quantitative closeness to the totally umbilical family into a **canonical** quantitative rigidity theorem in the non-strict branch.
2. The canonicalization is **global in Hausdorff topology** and therefore compatible with the flow transport back to time $0$; it does not rely on a local graph gauge.
3. We refine the projector further to obtain a representative that is simultaneously **canonical and equal-functional**.
4. We isolate a second, local mechanism: a first-harmonic $W^{2,3}$ modulation theorem on the equal-functional leaf. This gives a local differential model of the degeneracy and explains why the final theorem should be finite-dimensional.

### 1.3. Main results

We work under the standing assumptions of the three-dimensional Minkowski inequality branch of Scheuer and Sahjwani. In particular, all hypersurfaces are smooth, closed, embedded, star-shaped, and strictly mean-convex. Fix a compact radial interval
$$
I=[r_-,r_+]\Subset (a,b)
$$
and restrict attention to hypersurfaces whose entire constrained inverse-curvature flow remains in $I\times S^2$. Constants below may depend on $I$ and on the ambient warped product, but not on the individual hypersurface.

For a radial slice $S_r=\{r\}\times S^2$, let
$$
A(r):=|S_r|,
\qquad
V(r):=|\widehat S_r|,
$$
and define the functional
$$
\mathcal W(\Sigma):=\int_\Sigma H_1\,d\mu+\frac12\int_{\widehat\Sigma}\overline{\mathrm{Ric}}(\partial_r,\partial_r)\,dV.
$$
Let $\phi$ be the equality profile of the slice family, characterized by
$$
\phi(A(r))=\mathcal W(S_r).
$$
The deficit is
$$
D_A(\Sigma):=\mathcal W(\Sigma)-\phi(|\Sigma|).
$$
If $r_*(\Sigma)$ is the unique radius such that
$$
\mathcal W(S_{r_*(\Sigma)})=\mathcal W(\Sigma),
$$
we also set
$$
E_A(\Sigma):=|S_{r_*(\Sigma)}|-|\Sigma|.
$$

Our first theorem recovers the strict branch.

**Theorem A (strict quantitative rigidity).**
Assume in addition that
$$
\lambda'(r)^2-\lambda(r)\lambda''(r)<1
\qquad\text{for all }r\in I.
$$
Then there exist $\varepsilon_0,C>0$ such that every admissible hypersurface $\Sigma\subset I\times S^2$ with
$$
D_A(\Sigma)\le \varepsilon_0
$$
satisfies
$$
d_H\big(\Sigma,S_{r_*(\Sigma)}\big)\le C D_A(\Sigma)^{1/6}.
$$

The main theorem is the non-strict one.

**Theorem B (canonical equal-functional non-strict rigidity).**
Under the standing hypotheses above, there exist $\varepsilon_0,C>0$ and a canonical map
$$
\Sigma\longmapsto U_{\mathrm{eqcan}}(\Sigma)\in \mathcal U_{\mathrm{umb}}
$$
from admissible hypersurfaces with $D_A(\Sigma)\le\varepsilon_0$ to the totally umbilical family such that:

1. $U_{\mathrm{eqcan}}(U)=U$ for every totally umbilical $U\subset I\times S^2$,
2.
$$
\mathcal W\big(U_{\mathrm{eqcan}}(\Sigma)\big)=\mathcal W(\Sigma),
$$
3.
$$
d_H\big(\Sigma,U_{\mathrm{eqcan}}(\Sigma)\big)\le C D_A(\Sigma)^{1/6}.
$$

We also record the local modulation theorem, which is not needed for Theorem B but explains the local geometry of the degeneracy.

**Proposition C (local equal-functional modulation).**
Fix a slice $S_{r_0}\subset I\times S^2$. In a sufficiently small $W^{2,3}$ graph neighborhood of $S_{r_0}$ there is a smooth three-parameter equal-functional subfamily of nearby totally umbilical hypersurfaces, and the first-moment conditions
$$
\int_{S^2}(u-u_{\mathrm{can}})x_i\,d\theta=0,
\qquad i=1,2,3,
$$
select a unique local canonical representative. This representative is quasi-optimal in $W^{2,3}$.

The global proof of Theorem B does not use Proposition C. Its role is structural: it identifies the finite-dimensional tangent degeneracy and shows that the global projector is not ad hoc.

## 2. Geometric setup and normalization

### 2.1. Monotonicity of the slice quantities

For a slice $S_r$, the induced metric is $\lambda(r)^2\sigma$, hence
$$
A(r)=4\pi\lambda(r)^2,
\qquad
V(r)=4\pi\int_a^r \lambda(s)^2\,ds.
$$
Therefore
$$
A'(r)=8\pi\lambda(r)\lambda'(r)>0,
\qquad
V'(r)=4\pi\lambda(r)^2>0.
$$
In particular, $A$ and $V$ are strictly increasing.

On $S_r$ the outward unit normal is $\partial_r$, and the normalized mean curvature is
$$
H_1(S_r)=\frac{\lambda'(r)}{\lambda(r)}.
$$
Also, in a warped product,
$$
\overline{\mathrm{Ric}}(\partial_r,\partial_r)=-2\frac{\lambda''(r)}{\lambda(r)}.
$$
So
$$
\mathcal W(S_r)
=
4\pi\lambda'(r)\lambda(r)-4\pi\int_a^r \lambda''(s)\lambda(s)\,ds.
$$
Differentiating gives
$$
\frac{d}{dr}\mathcal W(S_r)=4\pi\lambda'(r)^2>0.
$$
Thus the slice functional is strictly increasing in $r$, and the normalization radius $r_*(\Sigma)$ is uniquely defined.

### 2.2. The normalized gap

By definition of $\phi$,
$$
\phi(A(r))=\mathcal W(S_r).
$$
Since both $A$ and $r\mapsto \mathcal W(S_r)$ are strictly increasing, $\phi$ is strictly increasing and smooth on the compact range $A(I)$. For every admissible $\Sigma$ there is a unique $r_*(\Sigma)$ satisfying
$$
\mathcal W(S_{r_*(\Sigma)})=\mathcal W(\Sigma),
$$
and therefore
$$
\phi^{-1}(\mathcal W(\Sigma))=A(r_*(\Sigma))=|S_{r_*(\Sigma)}|.
$$
Hence
$$
E_A(\Sigma)=\phi^{-1}(\mathcal W(\Sigma))- |\Sigma|=|S_{r_*(\Sigma)}|-|\Sigma|.
$$
Moreover,
$$
D_A(\Sigma)=\phi\big(|\Sigma|+E_A(\Sigma)\big)-\phi(|\Sigma|).
$$
By the mean value theorem, on the compact interval $A(I)$ there exist constants $0<m_I\le M_I<\infty$ such that
$$
m_I E_A(\Sigma)\le D_A(\Sigma)\le M_I E_A(\Sigma).
$$
We will repeatedly use the quantitative equivalence
$$
D_A(\Sigma)\simeq E_A(\Sigma)
\qquad\text{on }I.
$$

## 3. Flow reduction and quantitative closeness to the totally umbilical family

### 3.1. The constrained inverse-curvature flow

Following Scheuer, we evolve an admissible hypersurface by
$$
\partial_t X=\Big(\lambda'(r)\frac{H_1}{H_2}-u\Big)\nu,
$$
where $u=\bar g(\lambda\partial_r,\nu)$ is the support function. In dimension two this flow preserves star-shapedness and strict mean-convexity and converges smoothly to a radial slice. Along the flow,
$$
t\longmapsto \mathcal W(\Sigma_t)
\quad\text{is nonincreasing,}
\qquad
t\longmapsto |\Sigma_t|
\quad\text{is nondecreasing.}
$$
The first monotonicity comes from Scheuer's Minkowski formula, while the second is the key dissipative identity.

### 3.2. Exact dissipation identity and good time

We denote by $\mathring A$ the trace-free second fundamental form. In dimension two,
$$
H_2=H_1^2-\frac12|\mathring A|^2.
$$
The area derivative can be written in the useful exact form
$$
\frac{d}{dt}|\Sigma_t|=\int_{\Sigma_t}\frac{\lambda'}{H_2}|\mathring A|^2\,d\mu_t.
$$
Indeed, the general first variation formula gives
$$
\frac{d}{dt}|\Sigma_t|=2\int_{\Sigma_t}\Big(\lambda'\frac{H_1^2}{H_2}-uH_1\Big)\,d\mu_t.
$$
Using the identity for $H_2$ above and the Minkowski formula
$$
\int_{\Sigma_t}uH_1\,d\mu_t=\int_{\Sigma_t}\lambda'\,d\mu_t,
$$
one obtains the claimed equality.

Integrating in time and using the monotonicity of $\mathcal W$ and $|\Sigma_t|$, we obtain
$$
\int_0^{\infty}\int_{\Sigma_t}\frac{\lambda'}{H_2}|\mathring A|^2\,d\mu_t\,dt
\le E_A(\Sigma_0)\le C D_A(\Sigma_0).
$$
By averaging there exists a good time
$$
t_*\in [0,\sqrt{E_A(\Sigma_0)}]
$$
such that
$$
\int_{\Sigma_{t_*}}\frac{\lambda'}{H_2}|\mathring A|^2\,d\mu_{t_*}
\le \sqrt{E_A(\Sigma_0)}\le C D_A(\Sigma_0)^{1/2}.
$$
Because the flow remains in the compact radial interval $I$ and the principal curvatures stay uniformly controlled there, the weights $\lambda'$ and $H_2^{-1}$ are bounded from above and below. Hence the good-time inequality yields quantitative smallness of the umbilicity defect at time $t_*$.

### 3.3. Input from Sahjwani and De Rosa--Gioffr\`e

The next ingredient is the nearly umbilical rigidity theorem in the conformally flat chart. We use it in the form already extracted in Sahjwani's stability paper: once the weighted $L^2$-umbilicity is sufficiently small at the good time, there exists a totally umbilical hypersurface $U_{t_*}$ such that
$$
d_H(\Sigma_{t_*},U_{t_*})\le C D_A(\Sigma_0)^{1/6},
$$
and in the Euclidean conformal chart the surface $\Sigma_{t_*}$ is a small $W^{2,3}$ graph over $U_{t_*}$. The exponent $1/6$ is inherited from that stability theorem and is not produced by the finite-dimensional part of the argument. See [Sahjwani] and, in the Euclidean rigidity step, [De Rosa--Gioffr\`e].

### 3.4. Transport back to time $0$

Since the flow speed is uniformly bounded on the compact interval $I$, there exists $C_I$ such that
$$
d_H(\Sigma_0,\Sigma_t)\le C_I t
\qquad\text{for all }t\ge 0.
$$
In particular, at the good time,
$$
d_H(\Sigma_0,\Sigma_{t_*})\le C_I t_*\le C D_A(\Sigma_0)^{1/2}.
$$
Combining this with the estimate at time $t_*$ and using $D_A(\Sigma_0)^{1/2}\le D_A(\Sigma_0)^{1/6}$ for $D_A(\Sigma_0)\le1$, we obtain the basic non-strict family estimate.

**Theorem 3.1 (closeness to the totally umbilical family).**
There exist $\varepsilon_0,C>0$ such that every admissible $\Sigma\subset I\times S^2$ with $D_A(\Sigma)\le\varepsilon_0$ satisfies
$$
\inf_{U\in\mathcal U_{\mathrm{umb}}} d_H(\Sigma,U)
\le C D_A(\Sigma)^{1/6}.
$$

This theorem is the starting point for the new results below.

### 3.5. The strict branch

Assume now that
$$
\lambda'(r)^2-\lambda(r)\lambda''(r)<1
\qquad\text{for all }r\in I.
$$
This is exactly the strict radial-rigidity condition appearing in Sahjwani's discussion of the equality case. Under this hypothesis every totally umbilical hypersurface in $I\times S^2$ is a radial slice. Therefore the infimum in Theorem 3.1 runs only over the slice family. Since $r_*(\Sigma)$ is chosen so that
$$
\mathcal W(S_{r_*(\Sigma)})=\mathcal W(\Sigma),
$$
Theorem A follows immediately.

## 4. The Euclidean conformal chart and the global canonical projector

### 4.1. Conformal flattening

Define $\varrho$ by the differential equation
$$
\varrho'(r)=\frac{\varrho(r)}{\lambda(r)}
$$
with a fixed positive initial value. Then the map
$$
\Theta:(r,\xi)\longmapsto \varrho(r)\,\xi
$$
identifies $I\times S^2$ with a Euclidean annulus
$$
A_I:=\{\rho_-<|x|<\rho_+\}\subset \mathbb R^3,
$$
and the metric becomes
$$
\bar g=\Big(\frac{\lambda}{\varrho}\Big)^2\Theta^*g_{\mathrm{Euc}}.
$$
Since the conformal factor is smooth and bounded above and below on $I$, both $\Theta$ and $\Theta^{-1}$ are bi-Lipschitz between ambient Hausdorff distance and Euclidean Hausdorff distance on $A_I$.

A basic conformal-geometric fact, already isolated in Sahjwani's argument, is that the totally umbilical hypersurfaces in $I\times S^2$ correspond exactly to Euclidean round spheres contained in $A_I$. Thus the non-strict family estimate has become a Euclidean finite-dimensional problem.

### 4.2. Support functions and the canonical center

Let $\Gamma\subset A_I$ be any nonempty compact set. Its support function is
$$
h_\Gamma(\omega):=\sup_{x\in\Gamma}x\cdot \omega,
\qquad \omega\in S^2.
$$
Define the support-function center by
$$
c(\Gamma):=\frac{3}{4\pi}\int_{S^2} h_\Gamma(\omega)\,\omega\,d\omega.
$$
If $S=\partial B_R(a)$ is a Euclidean sphere, then
$$
h_S(\omega)=a\cdot\omega+R,
$$
and hence
$$
c(S)=a.
$$
The key estimate is the following elementary Hausdorff control.

**Lemma 4.1.**
For compact sets $K,L\subset\mathbb R^3$,
$$
\|h_K-h_L\|_{L^\infty(S^2)}\le d_H^{\mathrm{E}}(K,L).
$$
Consequently, for every sphere $S=\partial B_R(a)$,
$$
|c(K)-a|\le 3\,d_H^{\mathrm{E}}(K,S).
$$

**Proof.**
If $x\in K$, choose $y\in L$ with $|x-y|\le d_H^{\mathrm{E}}(K,L)$. Then
$$
x\cdot\omega\le y\cdot\omega+|x-y|\le h_L(\omega)+d_H^{\mathrm{E}}(K,L).
$$
Taking the supremum over $x\in K$ yields
$$
h_K(\omega)\le h_L(\omega)+d_H^{\mathrm{E}}(K,L),
$$
and symmetry gives the claimed $L^\infty$ estimate. The bound for $c(K)$ follows from
$$
|c(K)-a|
=\Big|\frac{3}{4\pi}\int_{S^2}(h_K-h_S)\omega\,d\omega\Big|
\le \frac{3}{4\pi}\int_{S^2}|h_K-h_S|\,d\omega.
$$
This proves the lemma.

### 4.3. Equal-functional means equal-area on the totally umbilical family

Sahjwani's theorem states that equality in the warped-product Minkowski inequality holds precisely for totally umbilical hypersurfaces under the standing hypotheses of the branch considered here. Therefore every $U\in\mathcal U_{\mathrm{umb}}$ satisfies
$$
D_A(U)=0,
$$
that is,
$$
\mathcal W(U)=\phi(|U|).
$$
Since $\phi$ is strictly increasing on the compact range $A(I)$, prescribing the value of $\mathcal W$ on the totally umbilical family is equivalent to prescribing the area.

For a given admissible hypersurface $\Sigma$, define the target area
$$
A_*(\Sigma):=\phi^{-1}(\mathcal W(\Sigma)).
$$
By the discussion in Section 2, this is exactly the area of the normalized slice:
$$
A_*(\Sigma)=|S_{r_*(\Sigma)}|.
$$

### 4.4. The area profile of the sphere family

For a Euclidean sphere parameter $(a,R)$ with $\partial B_R(a)\subset A_I$, define
$$
\mathscr A(a,R):=\Big|\Theta^{-1}(\partial B_R(a))\Big|.
$$
The map $(a,R)\mapsto \mathscr A(a,R)$ is smooth on the compact parameter set corresponding to the totally umbilical hypersurfaces contained in $I\times S^2$.

Fix a compact neighborhood $\mathcal K$ of the relevant sphere parameters. For each fixed $a$, the derivative $\partial_R\mathscr A(a,R)$ is strictly positive on $\mathcal K$. Indeed, varying $R$ moves the corresponding totally umbilical hypersurface outward with positive normal speed. Since the hypersurfaces in $\mathcal K$ are strictly mean-convex and the first variation of area is the integral of mean curvature times normal speed, we have
$$
\partial_R\mathscr A(a,R)>0.
$$
By compactness there exists $m_0>0$ such that
$$
\partial_R\mathscr A(a,R)\ge m_0
\qquad\text{for all }(a,R)\in\mathcal K.
$$
We will also use that there exists $L_0<\infty$ with
$$
|\mathscr A(a,R)-\mathscr A(b,R)|\le L_0|a-b|
\qquad\text{for all }(a,R),(b,R)\in\mathcal K,
$$
again by smoothness on a compact set.

### 4.5. Definition of the canonical equal-functional sphere

Let $\Sigma$ be an admissible hypersurface with small deficit and let
$$
\Gamma:=\Theta(\Sigma)\subset A_I.
$$
We define the canonical center by
$$
a_{\mathrm{can}}(\Sigma):=c(\Gamma).
$$
The canonical radius is the unique number $R_{\mathrm{eq}}(\Sigma)$ such that
$$
\mathscr A\big(a_{\mathrm{can}}(\Sigma),R_{\mathrm{eq}}(\Sigma)\big)=A_*(\Sigma).
$$
The existence and uniqueness of $R_{\mathrm{eq}}(\Sigma)$ follow from the strict monotonicity in $R$, provided the deficit threshold is chosen small enough so that the relevant sphere lies in the compact parameter set $\mathcal K$.

We then set
$$
\mathbb S_{\mathrm{eqcan}}(\Gamma):=\partial B_{R_{\mathrm{eq}}(\Sigma)}\big(a_{\mathrm{can}}(\Sigma)\big),
$$
and pull back to the warped product:
$$
U_{\mathrm{eqcan}}(\Sigma):=\Theta^{-1}\big(\mathbb S_{\mathrm{eqcan}}(\Gamma)\big).
$$
This is the candidate canonical equal-functional projector.

### 4.6. Exactness on the totally umbilical family

If $\Sigma=U$ is itself totally umbilical, say
$$
\Theta(U)=\partial B_R(a),
$$
then $a_{\mathrm{can}}(U)=a$ by Lemma 4.1. Also,
$$
A_*(U)=\phi^{-1}(\mathcal W(U))=|U|=\mathscr A(a,R),
$$
since $\mathcal W(U)=\phi(|U|)$ on the totally umbilical family. By uniqueness of the solution to the radius equation,
$$
R_{\mathrm{eq}}(U)=R.
$$
Therefore
$$
U_{\mathrm{eqcan}}(U)=U.
$$
So the projector is exact on the entire totally umbilical family.

### 4.7. Quasi-optimality on the equal-functional leaf

The central finite-dimensional estimate is the following.

**Proposition 4.2 (quasi-optimality on the equal-functional leaf).**
There exists $C>0$ such that for every sufficiently small-deficit admissible $\Sigma$,
$$
d_H^{\mathrm{E}}\big(\Gamma,\mathbb S_{\mathrm{eqcan}}(\Gamma)\big)
\le C \inf\Big\{d_H^{\mathrm{E}}(\Gamma,S): S\subset A_I\text{ a sphere with }\mathscr A(S)=A_*(\Sigma)\Big\}.
$$
Equivalently,
$$
d_H\big(\Sigma,U_{\mathrm{eqcan}}(\Sigma)\big)
\le C\inf\Big\{d_H(\Sigma,U): U\in\mathcal U_{\mathrm{umb}},\ \mathcal W(U)=\mathcal W(\Sigma)\Big\}.
$$

**Proof.**
Let
$$
S_*=\partial B_{R_*}(a_*)
$$
be any sphere satisfying
$$
\mathscr A(a_*,R_*)=A_*(\Sigma).
$$
By definition of the canonical radius,
$$
\mathscr A(a_{\mathrm{can}}(\Sigma),R_{\mathrm{eq}}(\Sigma))=A_*(\Sigma)=\mathscr A(a_*,R_*).
$$
Apply the mean value theorem in the $R$ variable, keeping the center fixed at $a_{\mathrm{can}}(\Sigma)$:
$$
m_0\,|R_{\mathrm{eq}}(\Sigma)-R_*|
\le
\big|\mathscr A(a_{\mathrm{can}}(\Sigma),R_*)-\mathscr A(a_*,R_*)\big|
\le L_0\,|a_{\mathrm{can}}(\Sigma)-a_*|.
$$
Hence
$$
|R_{\mathrm{eq}}(\Sigma)-R_*|\le \frac{L_0}{m_0}|a_{\mathrm{can}}(\Sigma)-a_*|.
$$
Lemma 4.1 gives
$$
|a_{\mathrm{can}}(\Sigma)-a_*|\le 3d_H^{\mathrm{E}}(\Gamma,S_*).
$$
Therefore
$$
|R_{\mathrm{eq}}(\Sigma)-R_*|\le C d_H^{\mathrm{E}}(\Gamma,S_*).
$$
For Euclidean spheres,
$$
d_H^{\mathrm{E}}\big(\partial B_{R_1}(a_1),\partial B_{R_2}(a_2)\big)
\le |a_1-a_2|+|R_1-R_2|.
$$
Applying this with $(a_1,R_1)=(a_{\mathrm{can}}(\Sigma),R_{\mathrm{eq}}(\Sigma))$ and $(a_2,R_2)=(a_*,R_*)$, we get
$$
d_H^{\mathrm{E}}\big(\mathbb S_{\mathrm{eqcan}}(\Gamma),S_*\big)
\le C d_H^{\mathrm{E}}(\Gamma,S_*).
$$
Finally,
$$
d_H^{\mathrm{E}}\big(\Gamma,\mathbb S_{\mathrm{eqcan}}(\Gamma)\big)
\le d_H^{\mathrm{E}}(\Gamma,S_*)+d_H^{\mathrm{E}}\big(S_*,\mathbb S_{\mathrm{eqcan}}(\Gamma)\big)
\le C d_H^{\mathrm{E}}(\Gamma,S_*).
$$
Taking the infimum over all equal-functional spheres $S_*$ proves the Euclidean claim, and the ambient statement follows from the bi-Lipschitz equivalence of Hausdorff distance under $\Theta$.

## 5. From a nearby umbilical comparison to a nearby equal-functional one

To exploit Proposition 4.2 we still need to know that the equal-functional leaf itself contains a nearby totally umbilical surface. The point is that the family estimate of Theorem 3.1 gives a nearby totally umbilical surface with the wrong functional value a priori. We now show that the one-dimensional equal-functional correction changes the surface only by the same order.

### 5.1. Local Lipschitz continuity of $\mathcal W$ on graph charts

We use the following elementary regularity fact.

**Lemma 5.1.**
Fix a totally umbilical hypersurface $U\subset I\times S^2$. In a sufficiently small $W^{2,3}$ graph neighborhood of $U$, the functional $\mathcal W$ is locally Lipschitz:
$$
|\mathcal W(\Sigma_u)-\mathcal W(\Sigma_v)|\le C\|u-v\|_{W^{2,3}(S^2)}.
$$

**Proof.**
Because $W^{2,3}(S^2)\hookrightarrow C^{1,\alpha}(S^2)$, bounded subsets of the graph chart have uniformly controlled first derivatives. In such a chart the induced metric, area density, unit normal, and mean curvature are smooth rational expressions of $(u,\nabla u,\nabla^2u)$, with coefficients depending smoothly on the ambient metric on the compact set $I\times S^2$. Hence the map
$$
u:u\mapsto \int_{\Sigma_u}H_1\,d\mu
$$
is locally Lipschitz from $W^{2,3}$ to $\mathbb R$. The enclosed-volume Ricci term depends only on the graph function itself and is locally Lipschitz already in $C^0$. Summing the two contributions gives the claim.

### 5.2. Correction of the good-time comparator

Let $t_*$ be the good time, and let $U_{t_*}$ be the totally umbilical comparator supplied by the nearly umbilical theorem. Then
$$
d_H(\Sigma_{t_*},U_{t_*})\le C D_A(\Sigma_0)^{1/6},
$$
and in the Euclidean conformal chart $\Sigma_{t_*}$ is a small $W^{2,3}$ graph over $U_{t_*}$. By Lemma 5.1,
$$
|\mathcal W(U_{t_*})-\mathcal W(\Sigma_{t_*})|\le C D_A(\Sigma_0)^{1/6}.
$$
On the other hand, along the flow,
$$
\mathcal W(\Sigma_0)\ge \mathcal W(\Sigma_{t_*})
$$
and
$$
|\Sigma_{t_*}|\ge |\Sigma_0|.
$$
Since the Minkowski inequality gives
$$
\mathcal W(\Sigma_{t_*})\ge \phi(|\Sigma_{t_*}|)\ge \phi(|\Sigma_0|),
$$
we obtain
$$
0\le \mathcal W(\Sigma_0)-\mathcal W(\Sigma_{t_*})
\le \mathcal W(\Sigma_0)-\phi(|\Sigma_0|)=D_A(\Sigma_0).
$$
For small deficit, $D_A(\Sigma_0)\le D_A(\Sigma_0)^{1/6}$, so altogether
$$
|\mathcal W(U_{t_*})-\mathcal W(\Sigma_0)|\le C D_A(\Sigma_0)^{1/6}.
$$
Because $U_{t_*}$ is totally umbilical,
$$
\mathcal W(U_{t_*})=\phi(|U_{t_*}|),
$$
and therefore
$$
\big||U_{t_*}|-A_*(\Sigma_0)\big|\le C D_A(\Sigma_0)^{1/6},
$$
by smoothness of $\phi^{-1}$ on the compact area range.

Write
$$
\Theta(U_{t_*})=\partial B_{R_*}(a_*).
$$
Now change only the radius, keeping the center fixed: let $R_*^{\mathrm{eq}}$ solve
$$
\mathscr A(a_*,R_*^{\mathrm{eq}})=A_*(\Sigma_0).
$$
By the strict monotonicity of $R\mapsto\mathscr A(a_*,R)$,
$$
|R_*^{\mathrm{eq}}-R_*|\le C D_A(\Sigma_0)^{1/6}.
$$
Hence the corrected totally umbilical surface
$$
U_{t_*}^{\mathrm{eq}}:=\Theta^{-1}(\partial B_{R_*^{\mathrm{eq}}}(a_*))
$$
satisfies
$$
\mathcal W(U_{t_*}^{\mathrm{eq}})=\mathcal W(\Sigma_0)
$$
and
$$
d_H(U_{t_*},U_{t_*}^{\mathrm{eq}})\le C D_A(\Sigma_0)^{1/6}.
$$
Combining with Theorem 3.1 gives the following theorem.

**Theorem 5.2 (equal-functional family estimate).**
There exist $\varepsilon_0,C>0$ such that every admissible $\Sigma\subset I\times S^2$ with $D_A(\Sigma)\le\varepsilon_0$ satisfies
$$
\inf\Big\{d_H(\Sigma,U): U\in\mathcal U_{\mathrm{umb}},\ \mathcal W(U)=\mathcal W(\Sigma)\Big\}
\le C D_A(\Sigma)^{1/6}.
$$

## 6. Proof of the main theorem

We can now complete the proof of Theorem B.

**Proof of Theorem B.**
Fix an admissible hypersurface $\Sigma$ with $D_A(\Sigma)\le\varepsilon_0$, let $\Gamma=\Theta(\Sigma)$, and define $U_{\mathrm{eqcan}}(\Sigma)$ as in Section 4.

The exactness statement on totally umbilical hypersurfaces was proved in Section 4.6.

Next, by construction,
$$
|U_{\mathrm{eqcan}}(\Sigma)|=A_*(\Sigma).
$$
Since $U_{\mathrm{eqcan}}(\Sigma)$ is totally umbilical,
$$
\mathcal W\big(U_{\mathrm{eqcan}}(\Sigma)\big)=\phi\big(|U_{\mathrm{eqcan}}(\Sigma)|\big)=\phi(A_*(\Sigma))=\mathcal W(\Sigma).
$$
So the canonical representative is equal-functional.

Finally, Proposition 4.2 and Theorem 5.2 give
$$
d_H\big(\Sigma,U_{\mathrm{eqcan}}(\Sigma)\big)
\le C\inf\Big\{d_H(\Sigma,U): U\in\mathcal U_{\mathrm{umb}},\ \mathcal W(U)=\mathcal W(\Sigma)\Big\}
\le C D_A(\Sigma)^{1/6}.
$$
This proves Theorem B.

As noted earlier, Theorem A is the strict-branch corollary obtained when the equality family collapses to the slices.

## 7. The local modulation route

Although it is not needed in the final globalization, the local modulation picture is mathematically useful and sharpens the geometry of the non-strict branch.

Fix a slice $S_{r_0}\subset I\times S^2$, and write nearby hypersurfaces as radial graphs
$$
r=r_0+u(\theta)
$$
over $S_{r_0}$. In the Euclidean conformal chart, nearby totally umbilical hypersurfaces are images of Euclidean spheres $\partial B_{\rho_0+t}(a)$ with $|a|+|t|$ small. Pulling back gives a smooth four-parameter family
$$
U_{a,t}.
$$
One parameter corresponds to changing the radius; the remaining three correspond to translations of the sphere center.

The equal-functional constraint cuts out a smooth three-dimensional submanifold. More precisely, there is a smooth function $\psi(a)$ with $\psi(0)=0$ such that
$$
\mathcal W(U_{a,\psi(a)})=\mathcal W(S_{r_0}),
$$
and every nearby equal-functional totally umbilical hypersurface is of this form. The tangent space at $a=0$ is exactly the first spherical harmonic space. This leads to a natural local gauge: given a nearby graph $u$, choose $a=a(u)$ so that
$$
\int_{S^2}(u-u_a)x_i\,d\theta=0,
\qquad i=1,2,3,
$$
where $u_a$ denotes the graph function of $U_{a,\psi(a)}$ over $S_{r_0}$.

The modulation map is invertible because the Jacobian of the first moments with respect to the translation parameter is a non-singular multiple of the identity at the base slice. More explicitly, if
$$
\Phi_i(u,a):=\int_{S^2}(u-u_a)x_i\,d\theta,
$$
then at $(u,a)=(0,0)$ one computes
$$
D_a\Phi(0,0)=-c_0 I_3,
\qquad c_0>0,
$$
where $c_0$ depends only on the base slice. The implicit function theorem therefore yields a unique smooth choice $a=a(u)$ solving $\Phi(u,a(u))=0$.

The same argument also gives quasi-optimality. If $b$ is another nearby translation parameter, then the mean value theorem and the uniform invertibility of $D_a\Phi$ imply
$$
|a(u)-b|\le C\|u-u_b\|_{W^{2,3}}.
$$
Since the map $a\mapsto u_a$ is smooth,
$$
\|u_{a(u)}-u_b\|_{W^{2,3}}\le C|a(u)-b|,
$$
and therefore
$$
\|u-u_{a(u)}\|_{W^{2,3}}\le C\|u-u_b\|_{W^{2,3}}.
$$
Taking the infimum over $b$ yields
$$
\|u-u_{a(u)}\|_{W^{2,3}}\le C\inf_a \|u-u_a\|_{W^{2,3}}.
$$
A second one-dimensional implicit-function argument then shows that the same estimate holds relative to the full nearby totally umbilical family $U_{a,t}$: the equal-functional radius correction costs no more than the original graph error.

This construction does not close the global theorem by itself, because the flow transports the good-time information back to time $0$ only in Hausdorff topology, whereas the local modulation theorem is formulated in a graph-$W^{2,3}$ chart. In other words, the good-time comparator is quantitative in a topology stronger than the one preserved by the backward transport. The support-function projector bypasses exactly that regularity mismatch. Conceptually, however, the two constructions agree to first order: the support-function center is the global low-regularity avatar of the first-harmonic moment gauge.

## 8. Further directions

The main theorem resolves the canonicalization problem in the non-strict branch, but several natural questions remain.

1. **Static proof.** The present argument uses the flow to produce the initial nearby totally umbilical comparison. It would be interesting to build a direct static proof from the deficit to the canonical equal-functional representative.
2. **Higher dimensions.** The support-function projector is finite-dimensional and does not depend on the exponent $1/6$. One may ask whether the same mechanism survives in higher-dimensional warped-product Minkowski inequalities once the appropriate nearly umbilical input is available.
3. **Sharp exponent.** The exponent $1/6$ comes from the current nearly umbilical theorem in the conformal chart. Any improvement there would transfer automatically to the canonical theorem.
4. **Comparison of gauges.** The local $W^{2,3}$ modulation and the global support-function projection should admit an explicit asymptotic comparison. This may reveal a cleaner invariant description of the canonical center.
5. **Other inequalities.** The same circle of ideas should apply to other warped-product inequalities with a degenerate equality family, provided one has a family estimate and a conformal reduction to a rigid Euclidean model class.

## 9. Concluding remarks on correctness and scope

The new proofs in this article are finite-dimensional once Theorem 3.1 is taken as input. The only external analytic ingredients are:

- Scheuer's flow and the monotonicity formulas,
- Sahjwani's deficit theorem in the warped-product setting,
- the nearly umbilical Euclidean rigidity result used inside Sahjwani's good-time analysis.

Within that framework, the proofs above are logically complete. The equal-functional improvement requires one additional observation not present in the earlier non-strict canonical theorem: on the totally umbilical family, the functional value is exactly the area profile $\phi(|U|)$. Once that is recognized, the remaining correction is a one-dimensional monotone radius adjustment at the support-function center.

## References

[Brendle--Hung--Wang] S. Brendle, P.-K. Hung, and M.-T. Wang, A Minkowski-type inequality for hypersurfaces in the anti-deSitter-Schwarzschild manifold, *Comm. Pure Appl. Math.* **69** (2016), 124--144.

[De Rosa--Gioffr\`e] A. De Rosa and S. Gioffr\`e, Quantitative stability for anisotropic nearly umbilical hypersurfaces, *J. Geom. Anal.* **29** (2019), 2318--2346.

[Li] G. Li, Locally constrained inverse mean curvature flow in GRW spacetimes, *Comm. Pure Appl. Anal.* **22** (2023), 1475--1498.

[Sahjwani] P. Sahjwani, Stability of Minkowski-type inequalities in certain warped product spaces, arXiv:2505.06422, 2025.

[Scheuer] J. Scheuer, Minkowski inequalities and constrained inverse curvature flows in warped spaces, *Adv. Calc. Var.* **15** (2022), 735--748.
