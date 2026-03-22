## Method Card

- **Short tag:** angle-alignment capillary splitting
- **Full name:** Corrected boundary defect and angle–alignment splitting for capillary minimal slicings.
- **Input setting:** A regular two-step capillary minimal slicing with the previously established adapted and intrinsic slice defect inequalities.
- **New object / driver:** The exact pointwise splitting of the adapted boundary defect into an angle term and an alignment term, with the alignment term identified as a finite-dimensional Stiefel-product optimizer gap.
- **Obstruction resolved:** The intrinsic slice defect theorem discards a boundary surplus already present in the adapted inequality; the raw intrinsic Hessian is the wrong boundary object and is nonpositive on the relevant tangent space.
- **Expected outputs:** Corrected slice defect inequality restoring the full boundary surplus, generic quadratic coercivity of the alignment sector, and sharp localization of the remaining gaps toward local splitting rigidity.
- **Transfer targets:** Local quantitative rigidity theorems for capillary minimal slicings, finite-dimensional Łojasiewicz routes on actual-solution germs, and scalar-curvature map-rank reductions.
- **Main technical risk:** The corrected defect does not by itself control local graph or metric distance; a local actual-solution chart must still be internalized to convert the defect package into a splitting theorem.
- **Mechanism type:** defect control, rigidity, variational reduction
- **Tags:** capillary-slicing, angle-alignment, boundary-defect, Stiefel-optimizer, corrected-inequality, scalar-curvature
- **Method link:** ../methods/angle_alignment_capillary_splitting.md

**Condensation.** The new viewpoint is that the boundary surplus lost in passing from the adapted to the intrinsic slice defect inequality should be recovered and decomposed into an angle defect and an alignment defect. This overcomes the obstruction that the intrinsic theorem discards boundary information and the raw intrinsic Hessian is nonpositive on the relevant tangent space. The operative mechanism is an exact pointwise identity splitting the adapted boundary defect via the admissibility of the adapted mixed trace, followed by identification of the alignment remainder as a finite-dimensional Stiefel-product optimizer gap that is quadratically coercive in the generic simple-gap regime. If it works, it yields a corrected slice defect inequality with explicit quantitative boundary control and redirects the local rigidity program toward the actual scalar-curvature map on a solution germ.

# Corrected Boundary Defects and Angle–Alignment Splitting for Two-Step Capillary Minimal Slicings

## Abstract

We record the strongest verified structural advances currently available in the two-step capillary slicing rigidity program. Building on the previously established adapted and intrinsic slice defect inequalities, we restore the adapted boundary surplus that was lost in the passage to the intrinsic theorem. The main new mechanism is an exact pointwise splitting of the adapted boundary defect into an angle term and an alignment term:
$$
\delta_{\mathcal A}=\delta_Q+\gamma_{\mathcal A},
\qquad
\mathcal D_{\mathrm{wind}}^{\mathcal A}
=
\mathcal I_Q+\mathcal D_{\mathrm{ang}}^{\mathcal A}+\mathcal D_{\mathrm{align}}^{\mathcal A}.
$$
This yields the corrected slice defect inequality
$$
2\pi\bigl(k-\chi(\Gamma)\bigr)
+\mathcal E_{\mathrm{intr}}(\Gamma)
+\mathcal D_{\mathrm{ang}}^{\mathcal A}(\Gamma)
+\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma)
\le
\frac12\int_\Gamma (R_g)_-\,dA.
$$
In the generic simple-gap regime, the alignment term is quadratically coercive by a finite-dimensional Stiefel-product optimizer theorem, and therefore the full corrected boundary sector is explicit and quantitative. The strongest unconditional theorem in the present paper is this corrected defect package. We also record, in appendices and with all hypotheses made explicit, two verified reduction mechanisms for future local rigidity results: a nonsharp analytic scalar-curvature-square defect on an actual-solution germ, and a sharp map-rank reduction on the actual infinitesimal quotient. We do not claim a local splitting theorem here.

## Introduction

### Context and motivation

The long-term goal of the capillary slicing program is a quantitative local rigidity theorem near the zero-budget Euclidean model for regular two-step capillary minimal slicings. The ideal statement would be a sharp estimate of the form
$$
d_{\mathrm{split}}(\mathbf X,\mathscr M_{\mathrm{Euc}})
\le
C\,\varepsilon(\mathbf X)^{1/2},
\qquad
\varepsilon(\mathbf X):=\frac12\int_\Gamma (R_g)_-\,dA,
$$
at least in a generic simple-gap regime, and at minimum a nonsharp power law
$$
d_{\mathrm{split}}(\mathbf X,\mathscr M_{\mathrm{Euc}})
\le
C\,\varepsilon(\mathbf X)^\alpha
$$
for some $\alpha>0$.

Earlier work in this program established the adapted quantitative defect inequality and its intrinsic consequence
$$
2\pi\bigl(k-\chi(\Gamma)\bigr)+\mathcal E_{\mathrm{intr}}(\Gamma)
\le
\frac12\int_\Gamma (R_g)_-\,dA,
$$
together with zero-budget rigidity consequences and a soft compactness-to-splitting theorem on admissible compact classes. Those results are theorem-level and remain the strongest unconditional global statements available at the article level.

The obstacle to local quantitative rigidity was not the lack of a slice-level nonnegative budget, but rather the fact that the intrinsic theorem discards a boundary surplus already present in the adapted inequality. Recovering and understanding that surplus is the core contribution of the present article.

### Related work

This paper is a sequel to the earlier intrinsic defect package developed in the capillary slicing program. We treat the following as prior verified input:

1. the adapted quantitative slice inequality;
2. intrinsic boundary defect domination and the intrinsic slice defect theorem;
3. the zero-budget adapted equality chain and soft compactness-to-splitting consequences.

The present paper adds a corrected boundary mechanism on top of that package. It also records two later reduction ideas for the unresolved local rigidity problem: a finite-dimensional Łojasiewicz route on an actual-solution germ, and a sharp map-rank reduction for the scalar-curvature map on the actual quotient. These latter reductions are not used in the main theorem and are stated only with their verified hypotheses.

External exact-rigidity theorems of Ko–Yao type motivate the eventual local splitting direction, but they are not used in the proof of the main theorem below.

### Main result

The main theorem of this paper is the corrected slice defect inequality. It is obtained by restoring the adapted boundary surplus and splitting it into an angle defect and an alignment defect. The precise statement is Theorem 4.1 below:
$$
2\pi\bigl(k-\chi(\Gamma)\bigr)
+\mathcal E_{\mathrm{intr}}(\Gamma)
+\mathcal D_{\mathrm{ang}}^{\mathcal A}(\Gamma)
+\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma)
\le
\frac12\int_\Gamma (R_g)_-\,dA.
$$

A second verified result is a generic finite-dimensional quadratic theorem for the alignment sector. At the pointwise level, the adapted alignment gap is an optimizer-selection defect on a Stiefel product. In the simple-gap regime this optimizer gap is quadratically coercive, and therefore
$$
\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma)
\ge
c_0\int_{\partial\Gamma}
\operatorname{dist}\bigl(\Xi_{\mathcal A},\mathcal M\bigr)^2\,ds.
$$
Combining this with the corrected slice defect inequality yields a sharpened generic corrected defect inequality.

### What is genuinely new

The genuinely new verified mathematics in this paper is structural rather than a full local splitting theorem.

1. The adapted boundary surplus is isolated and kept.
2. That surplus is split exactly into an angle part and an alignment part.
3. The alignment part is identified as a finite-dimensional optimizer-selection gap.
4. In the generic simple-gap regime, that optimizer gap is quadratically coercive.

This defect-to-rigidity bridge is the main advance. It shows that the missing boundary information is not a raw support deficit but an optimizer-selection defect. In particular, it identifies the correct quadratic boundary object and explains why the naive intrinsic Hessian route fails.

### Paper outline

Section 2 recalls the previous intrinsic package and the minimal background needed from it. Section 3 proves the exact angle/alignment splitting and explains its mechanism. Section 4 states and proves the corrected slice defect inequality and the generic quadratic alignment corollary. Section 5 discusses what these results do and do not imply. The appendices record verified intermediate propositions and meaningful partial reductions that are not part of the main theorem chain, including the local optimizer normal form, the quartic angle calculation, the analytic scalar-curvature-square reduction on an actual-solution germ, and the sharp map-rank reduction.

## Background and Preliminaries

We work with a regular two-step capillary minimal slicing and denote by $\Gamma$ the bottom slice. The scalar-curvature budget is
$$
\varepsilon(\Gamma):=\frac12\int_\Gamma (R_g)_-\,dA.
$$

The theorem-level starting point is the previously established adapted quantitative defect inequality:
$$
2\pi\bigl(k-\chi(\Gamma)\bigr)
+
\int_\Gamma
\left(
\frac34|\nabla^\Gamma\log f_1|^2
+\frac12X_\Gamma
+\frac12(R_g)_+
\right)dA
+
\mathcal D_{\mathrm{wind}}^{\mathcal A}(\Gamma)
\le
\varepsilon(\Gamma).
$$
We abbreviate
$$
\mathcal E_{\mathrm{bulk}}(\Gamma)
:=
\int_\Gamma
\left(
\frac34|\nabla^\Gamma\log f_1|^2
+\frac12X_\Gamma
+\frac12(R_g)_+
\right)dA.
$$

The intrinsic boundary defect from the earlier paper is
$$
\mathcal I_Q(\partial\Gamma)=\int_{\partial\Gamma}\delta_Q\,ds,
$$
and the intrinsic slice energy is
$$
\mathcal E_{\mathrm{intr}}(\Gamma):=\mathcal E_{\mathrm{bulk}}(\Gamma)+\mathcal I_Q(\partial\Gamma).
$$
The earlier intrinsic defect theorem reads
$$
2\pi\bigl(k-\chi(\Gamma)\bigr)+\mathcal E_{\mathrm{intr}}(\Gamma)\le \varepsilon(\Gamma).
$$

The new mechanism begins with two pointwise boundary quantities. Let $\mathfrak T_2$ be the pointwise variational quantity that appears in the intrinsic defect, and let
$$
m_{\mathcal A}:=
II(\tau_1,\bar\tau_1)
+\partial_\nu\bar\theta_1
+\sin\bar\theta_1\,\partial_{\tau_2}\bar\theta_2
$$
be the adapted mixed trace. Define
$$
\delta_Q:=H_{\partial M}-\mathfrak T_2,
\qquad
\delta_{\mathcal A}:=H_{\partial M}-m_{\mathcal A}.
$$
The adapted winding defect is
$$
\mathcal D_{\mathrm{wind}}^{\mathcal A}(\Gamma)
:=
\int_{\partial\Gamma}\frac{\delta_{\mathcal A}}{J}\,ds,
\qquad
J:=\sin\bar\theta_1\sin\bar\theta_2.
$$

The key background fact is that $m_{\mathcal A}$ is admissible in the variational definition of $\mathfrak T_2$. Consequently
$$
\mathfrak T_2\ge m_{\mathcal A}.
$$

Finally, in the generic simple-gap regime, the pointwise alignment defect admits a finite-dimensional optimizer representation. More precisely, at each boundary point one has a matrix $A_p$ and an adapted frame pair $\Xi_{\mathcal A}(p)$ such that
$$
\gamma_{\mathcal A}(p)
=
\Sigma_2(A_p)-\Phi_{A_p}(\Xi_{\mathcal A}(p)).
$$
Here $\Phi_A$ is the trace pairing on $\mathrm{St}(3,2)\times \mathrm{St}(3,2)$ and $\Sigma_2(A)$ is the sum of the two largest singular values of $A$.

Everything from this section is either standard notation or previously verified input in the program. The new arguments begin in the next section.

## Mechanism and Main Structural Identity

The corrected boundary mechanism starts from the single observation that the adapted mixed trace is admissible for the intrinsic variational problem. This produces an exact nonnegative remainder.

### Proposition 3.1

Define
$$
\gamma_{\mathcal A}:=\mathfrak T_2-m_{\mathcal A}.
$$
Then
$$
\gamma_{\mathcal A}\ge 0
$$
and
$$
\delta_{\mathcal A}=\delta_Q+\gamma_{\mathcal A}.
$$

#### Proof

Since $m_{\mathcal A}$ is admissible in the definition of $\mathfrak T_2$, one has $\mathfrak T_2\ge m_{\mathcal A}$, so $\gamma_{\mathcal A}\ge 0$. By definition,
$$
\delta_Q+\gamma_{\mathcal A}
=
(H_{\partial M}-\mathfrak T_2)+(\mathfrak T_2-m_{\mathcal A})
=
H_{\partial M}-m_{\mathcal A}
=
\delta_{\mathcal A}.
$$
This proves the claim. ∎

The preceding identity is the exact pointwise form of the recovered adapted surplus. To turn it into a slice-level statement, divide by $J$ and separate the terms that come from $J^{-1}-1$ and from $\gamma_{\mathcal A}$.

### Definition 3.2

Define the angle and alignment defects by
$$
\mathcal D_{\mathrm{ang}}^{\mathcal A}(\Gamma)
:=
\int_{\partial\Gamma}\left(\frac1J-1\right)\delta_Q\,ds,
$$
and
$$
\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma)
:=
\int_{\partial\Gamma}\frac{\gamma_{\mathcal A}}{J}\,ds.
$$

### Proposition 3.3

One has the exact slice-level identity
$$
\mathcal D_{\mathrm{wind}}^{\mathcal A}(\Gamma)
=
\mathcal I_Q(\partial\Gamma)
+\mathcal D_{\mathrm{ang}}^{\mathcal A}(\Gamma)
+\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma).
$$

#### Proof

Starting from Proposition 3.1,
$$
\frac{\delta_{\mathcal A}}{J}
=
\frac{\delta_Q+\gamma_{\mathcal A}}{J}
=
\delta_Q+\left(\frac1J-1\right)\delta_Q+\frac{\gamma_{\mathcal A}}{J}.
$$
Integrating over $\partial\Gamma$ yields
$$
\int_{\partial\Gamma}\frac{\delta_{\mathcal A}}{J}\,ds
=
\int_{\partial\Gamma}\delta_Q\,ds
+
\int_{\partial\Gamma}\left(\frac1J-1\right)\delta_Q\,ds
+
\int_{\partial\Gamma}\frac{\gamma_{\mathcal A}}{J}\,ds.
$$
By the definitions of $\mathcal D_{\mathrm{wind}}^{\mathcal A}$, $\mathcal I_Q$, $\mathcal D_{\mathrm{ang}}^{\mathcal A}$, and $\mathcal D_{\mathrm{align}}^{\mathcal A}$, this is exactly the claimed identity. ∎

### Conceptual interpretation

The formula in Proposition 3.3 shows that the lost boundary surplus is not featureless. It splits into:

1. an angle term, coming solely from the geometric factor $J^{-1}-1$;
2. an alignment term, coming from the optimizer-selection remainder $\gamma_{\mathcal A}$.

The alignment term is the genuinely new boundary datum. It is absent from the intrinsic theorem and is exactly what survives the failure of the raw Hessian route for $\delta_Q$.

In the generic simple-gap regime, $\gamma_{\mathcal A}$ is an optimizer gap on a Stiefel product. This is the mechanism that converts the boundary problem into a finite-dimensional quantitative statement.

## Main Result

We now state the strongest unconditional theorem proved in this paper.

### Theorem 4.1 (Corrected slice defect inequality)

For every regular two-step capillary minimal slicing,
$$
2\pi\bigl(k-\chi(\Gamma)\bigr)
+\mathcal E_{\mathrm{intr}}(\Gamma)
+\mathcal D_{\mathrm{ang}}^{\mathcal A}(\Gamma)
+\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma)
\le
\varepsilon(\Gamma).
$$

The theorem follows formally from the adapted quantitative defect inequality and Proposition 3.3.

The next verified theorem is finite-dimensional.

### Theorem 4.2 (Generic quadratic optimizer gap)

Let $A\in\mathbb R^{3\times 3}$ have singular value decomposition
$$
A=U_*DV_*^{\top},
\qquad
D=\operatorname{diag}(\sigma_1,\sigma_2,\sigma_3),
\qquad
\sigma_1\ge \sigma_2>\sigma_3\ge 0.
$$
Define
$$
\Phi_A(U,V):=\operatorname{tr}(U^{\!\top}AV)
\qquad
\text{for }
(U,V)\in \mathrm{St}(3,2)\times \mathrm{St}(3,2),
$$
and let
$$
\mathcal M_A:=\{(U_*R,V_*R):R\in O(2)\}
$$
be the maximizing orbit. Then there exists a constant $c_A>0$ such that
$$
\Sigma_2(A)-\Phi_A(U,V)
\ge
c_A\,\operatorname{dist}\bigl((U,V),\mathcal M_A\bigr)^2
\qquad
\forall\,(U,V)\in \mathrm{St}(3,2)\times \mathrm{St}(3,2).
$$

### Corollary 4.3 (Generic quadratic boundary alignment coercivity)

Assume along $\partial\Gamma$ that $H_{\partial M}\ge H_0>0$ and that the associated boundary matrices satisfy a uniform simple-gap condition
$$
\sigma_2(A_p)-\sigma_3(A_p)\ge \kappa_0>0.
$$
Then there exists $c_0>0$ such that
$$
\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma)
\ge
c_0\int_{\partial\Gamma}
\operatorname{dist}\bigl(\Xi_{\mathcal A},\mathcal M\bigr)^2\,ds.
$$

### Corollary 4.4 (Generic corrected defect inequality)

Under the hypotheses of Corollary 4.3,
$$
2\pi\bigl(k-\chi(\Gamma)\bigr)
+\mathcal E_{\mathrm{intr}}(\Gamma)
+\mathcal D_{\mathrm{ang}}^{\mathcal A}(\Gamma)
+c_0\int_{\partial\Gamma}
\operatorname{dist}\bigl(\Xi_{\mathcal A},\mathcal M\bigr)^2\,ds
\le
\varepsilon(\Gamma).
$$

These statements are the strongest verified unconditional outputs of the present paper. No local splitting theorem is claimed.

## Proof of the Main Result

### Proof of Theorem 4.1

Start from the adapted quantitative defect inequality:
$$
2\pi\bigl(k-\chi(\Gamma)\bigr)
+\mathcal E_{\mathrm{bulk}}(\Gamma)
+\mathcal D_{\mathrm{wind}}^{\mathcal A}(\Gamma)
\le
\varepsilon(\Gamma).
$$
By Proposition 3.3,
$$
\mathcal D_{\mathrm{wind}}^{\mathcal A}(\Gamma)
=
\mathcal I_Q(\partial\Gamma)
+\mathcal D_{\mathrm{ang}}^{\mathcal A}(\Gamma)
+\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma).
$$
Substituting this into the adapted inequality gives
$$
2\pi\bigl(k-\chi(\Gamma)\bigr)
+\mathcal E_{\mathrm{bulk}}(\Gamma)
+\mathcal I_Q(\partial\Gamma)
+\mathcal D_{\mathrm{ang}}^{\mathcal A}(\Gamma)
+\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma)
\le
\varepsilon(\Gamma).
$$
Since
$$
\mathcal E_{\mathrm{intr}}(\Gamma)
=
\mathcal E_{\mathrm{bulk}}(\Gamma)+\mathcal I_Q(\partial\Gamma),
$$
this is exactly the claimed corrected slice defect inequality. ∎

### Proof of Theorem 4.2

By orthogonal invariance of $\Phi_A$ and of the Stiefel metric, it is enough to treat the diagonal case
$$
A=D=\operatorname{diag}(\sigma_1,\sigma_2,\sigma_3).
$$
Indeed,
$$
\Phi_A(U,V)=\Phi_D(U_*^{\top}U,V_*^{\top}V),
$$
and the distance to $\mathcal M_A$ is preserved under the same transformation. We therefore assume from now on that $A=D$.

Let
$$
X:=\mathrm{St}(3,2)\times \mathrm{St}(3,2),
\qquad
f(U,V):=\Sigma_2(D)-\Phi_D(U,V).
$$
By the Ky Fan trace inequality, $f\ge 0$ on $X$, and the zero set of $f$ is exactly the maximizing orbit
$$
\mathcal M_D=\{(R,R):R\in O(2)\}
$$
embedded in $X$ through the top singular two-plane. Since $\sigma_2>\sigma_3$, the top two-dimensional singular subspace is unique, so there are no other maximizers.

Because $X$ is compact and $\mathcal M_D$ is closed, for any sufficiently small tubular neighborhood $N$ of $\mathcal M_D$ there exists $c_{\mathrm{far}}>0$ such that
$$
f(U,V)\ge c_{\mathrm{far}}
\qquad\text{whenever }(U,V)\in X\setminus N.
$$
Since $\operatorname{dist}((U,V),\mathcal M_D)^2$ is bounded above on $X$, this implies a quadratic lower bound away from $\mathcal M_D$:
there exists $c_1>0$ such that
$$
f(U,V)\ge c_1\,\operatorname{dist}\bigl((U,V),\mathcal M_D\bigr)^2
\qquad\text{on }X\setminus N.
$$

It remains to prove the estimate inside $N$.

Near any point of $\mathcal M_D$, introduce smooth normal coordinates $(a,b,\omega)$ as in the local optimizer normal form. In those coordinates one has
$$
f(U,V)=Q_D(a,b,\omega)+O\bigl(|a|^3+|b|^3+|\omega|^3\bigr),
$$
where
$$
Q_D(a,b,\omega)
=
\frac{\sigma_1-\sigma_3}{2}(a_1^2+b_1^2)
+\frac{\sigma_3}{2}(a_1-b_1)^2
+\frac{\sigma_2-\sigma_3}{2}(a_2^2+b_2^2)
+\frac{\sigma_3}{2}(a_2-b_2)^2
+\frac{\sigma_1+\sigma_2}{2}\omega^2.
$$
Because $\sigma_2>\sigma_3\ge 0$, every coefficient in $Q_D$ is nonnegative and the coefficients multiplying $a_1^2+b_1^2$, $a_2^2+b_2^2$, and $\omega^2$ are strictly positive. Hence $Q_D$ is positive definite:
there exists $\lambda_D>0$ such that
$$
Q_D(a,b,\omega)\ge \lambda_D\bigl(|a|^2+|b|^2+|\omega|^2\bigr).
$$
Shrinking $N$ if necessary, the cubic remainder is dominated by $\frac12Q_D$, so on $N$,
$$
f(U,V)\ge \frac{\lambda_D}{2}\bigl(|a|^2+|b|^2+|\omega|^2\bigr).
$$
Since $(a,b,\omega)$ are smooth normal coordinates to the compact submanifold $\mathcal M_D$, their Euclidean norm is equivalent to the squared distance to $\mathcal M_D$:
there exists $c_2>0$ such that
$$
|a|^2+|b|^2+|\omega|^2
\ge
c_2\,\operatorname{dist}\bigl((U,V),\mathcal M_D\bigr)^2
\qquad\text{on }N.
$$
Thus on $N$,
$$
f(U,V)\ge \frac{\lambda_Dc_2}{2}\,\operatorname{dist}\bigl((U,V),\mathcal M_D\bigr)^2.
$$

Combining the near and far estimates gives
$$
f(U,V)\ge c_D\,\operatorname{dist}\bigl((U,V),\mathcal M_D\bigr)^2
\qquad\forall\,(U,V)\in X
$$
for some $c_D>0$. Undoing the initial orthogonal reduction yields the statement for general $A$. ∎

### Proof of Corollary 4.3

At each boundary point $p$, the alignment defect is represented as a pointwise optimizer gap:
$$
\gamma_{\mathcal A}(p)
=
\Sigma_2(A_p)-\Phi_{A_p}(\Xi_{\mathcal A}(p)).
$$
By Theorem 4.2 applied to $A_p$, and using the uniform lower bounds $H_{\partial M}\ge H_0$ and $\sigma_2(A_p)-\sigma_3(A_p)\ge \kappa_0$, the coercivity constant may be chosen uniformly. Therefore there exists $c_0>0$ such that
$$
\gamma_{\mathcal A}(p)
\ge
c_0\,\operatorname{dist}\bigl(\Xi_{\mathcal A}(p),\mathcal M_{A_p}\bigr)^2
\qquad\text{for all }p\in\partial\Gamma.
$$
Since $J$ is bounded above and below in the regular class under consideration, integrating $\gamma_{\mathcal A}/J$ yields
$$
\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma)
=
\int_{\partial\Gamma}\frac{\gamma_{\mathcal A}}{J}\,ds
\ge
c_0\int_{\partial\Gamma}\operatorname{dist}\bigl(\Xi_{\mathcal A},\mathcal M\bigr)^2\,ds.
$$
This proves the corollary. ∎

### Proof of Corollary 4.4

Insert the lower bound from Corollary 4.3 into Theorem 4.1:
$$
2\pi\bigl(k-\chi(\Gamma)\bigr)
+\mathcal E_{\mathrm{intr}}(\Gamma)
+\mathcal D_{\mathrm{ang}}^{\mathcal A}(\Gamma)
+\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma)
\le
\varepsilon(\Gamma).
$$
Since
$$
\mathcal D_{\mathrm{align}}^{\mathcal A}(\Gamma)
\ge
c_0\int_{\partial\Gamma}
\operatorname{dist}\bigl(\Xi_{\mathcal A},\mathcal M\bigr)^2\,ds,
$$
the claimed inequality follows immediately. ∎

## Further Directions

The present article completes the slice-level corrected defect mechanism but does not prove local splitting. The remaining gaps are now sharply localized.

### 1. Nonsharp local rigidity on an actual-solution germ

The cleanest verified nonsharp reduction is the scalar-curvature-square defect on a local actual-solution germ:
$$
\mathcal A(z):=\int_{\Gamma_z}R_g(z)^2\,dA_z.
$$
Under a local analytic actual-solution chart $S$, one has:

1. $\mathcal A$ is analytic on $S$;
2. near the rigid disk-type model,
   $$
   \mathcal A(z)\le C\,\varepsilon(z);
   $$
3. the zero set
   $$
   Z=\{z\in S:\mathcal A(z)=0\}
   $$
   is exactly the exact nearby model set.

Once the local chart is internalized and local chart distance is identified with splitting distance, finite-dimensional Łojasiewicz on $\mathcal A|_S$ should yield a nonsharp power law
$$
d_{\mathrm{split}}(\mathbf X,\mathscr M_{\mathrm{Euc}})
\le
C\,\varepsilon(\mathbf X)^\alpha.
$$

### 2. Sharp local rigidity

The cleanest verified sharp reduction is:
at an exact model $p\in Z$,
$$
\frac12D^2\mathcal A_p(w,w)=\|D\mathbf r_p[w]\|_{L^2}^2,
\qquad
\mathbf r(z):=R_g(z).
$$
Thus the sharp theorem reduces to
$$
\ker D\mathbf r_p=T_pZ,
$$
equivalently positivity of the finite Gram matrix of $D\mathbf r_p$ on $T_pS/T_pZ$.

This is smaller than the older ambient-kernel problem. It shows that the sharp question is an actual infinitesimal scalar-curvature rigidity problem on the true nearby solution space.

### 3. What remains genuinely open

No theorem in the present paper controls local graph or metric distance from the corrected defect. In particular, no result of the form
$$
d_{\mathrm{split}}(\mathbf X,\mathscr M_{\mathrm{Euc}})
\le C\,\varepsilon(\mathbf X)^\alpha
$$
or
$$
d_{\mathrm{split}}(\mathbf X,\mathscr M_{\mathrm{Euc}})
\le C\,\varepsilon(\mathbf X)^{1/2}
$$
is claimed here.

The strongest verified local ingredients remain:
- bulk affine/Jacobi collapse at first order;
- generic quadratic control of the alignment sector;
- local optimizer normal forms;
- weak linearized Robin inheritance on actual blow-up limits;
- reduction to the actual scalar-curvature map on a local solution germ.

## References

[1] Internal manuscript, *Intrinsic boundary defects for two-step capillary slicings*. Contains the adapted quantitative defect inequality, intrinsic boundary defect domination, the intrinsic slice defect theorem, zero-budget consequences, and soft compactness-to-splitting.

[2] Internal mechanism note, *Capillary slicing research log: corrected defect and optimizer gap*. Contains the exact angle/alignment splitting, corrected slice defect inequality, first-order zero-defect reduction, the generic Stiefel-product optimizer theorem, and generic quadratic boundary alignment coercivity.

[3] D. Ko and X. Yao, *Capillary minimal slicing and scalar curvature rigidity*, arXiv:2602.21071, 2026.

[4] P. M. N. Feehan, *Resolution of singularities and geometric proofs of the Łojasiewicz inequalities*, arXiv:1708.09775, 2020.

## Appendix A. Explicit local optimizer normal form

This appendix records a finite-dimensional calculation that is fully verified but not used in the proof of the main theorem except through Theorem 4.2.

Let
$$
D=\operatorname{diag}(\sigma_1,\sigma_2,\sigma_3),
\qquad
\sigma_1\ge \sigma_2>\sigma_3\ge 0.
$$
Near a point of the maximizing orbit $\mathcal M_D$, parameterize nearby frame pairs by
$$
U=e^{K(a,-\omega/2)}U_*,
\qquad
V=e^{K(b,\omega/2)}U_*,
$$
where $a,b\in\mathbb R^2$ and $\omega\in\mathbb R$ are normal coordinates.

Then the optimizer gap has the expansion
$$
\Sigma_2(D)-\Phi_D(U,V)=Q_D(a,b,\omega)+O\bigl(|a|^3+|b|^3+|\omega|^3\bigr),
$$
where
$$
Q_D(a,b,\omega)
=
\frac{\sigma_1}{2}(a_1^2+b_1^2)
+\frac{\sigma_2}{2}(a_2^2+b_2^2)
-\sigma_3(a_1b_1+a_2b_2)
+\frac{\sigma_1+\sigma_2}{2}\omega^2.
$$
Equivalently,
$$
Q_D
=
\frac{\sigma_1-\sigma_3}{2}(a_1^2+b_1^2)
+\frac{\sigma_3}{2}(a_1-b_1)^2
+\frac{\sigma_2-\sigma_3}{2}(a_2^2+b_2^2)
+\frac{\sigma_3}{2}(a_2-b_2)^2
+\frac{\sigma_1+\sigma_2}{2}\omega^2.
$$
In particular, $Q_D$ is positive definite whenever $\sigma_2>\sigma_3$.

This is the local normal form used in the proof of Theorem 4.2.

## Appendix B. Quartic angle defect and the quadratic core

The exact corrected defect contains both angle and alignment pieces, but the angle term is higher order at the rigid model.

Write
$$
\bar\theta_i=\frac\pi2+\eta_i,
\qquad
J=\sin\bar\theta_1\sin\bar\theta_2
=\cos\eta_1\cos\eta_2.
$$
Using
$$
\cos\eta_i
=
1-\frac12\eta_i^2+O(|\eta_i|^4),
$$
one obtains
$$
J
=
1-\frac12(\eta_1^2+\eta_2^2)+O(|\eta|^4).
$$
Therefore
$$
\frac1J-1
=
\frac12(\eta_1^2+\eta_2^2)+O(|\eta|^4).
$$
If, in a local gauge near the rigid model, the intrinsic pointwise defect satisfies
$$
\delta_Q=O(|z|^2),
$$
then
$$
\left(\frac1J-1\right)\delta_Q=O(|z|^4),
$$
and hence
$$
\mathcal D_{\mathrm{ang}}^{\mathcal A}=O(\|z\|^4).
$$

Thus the quadratic core of the corrected defect is not the full corrected defect, but rather
$$
\mathfrak D_{\mathrm{core}}
=
Q_{\mathrm{bulk}}+\mathcal D_{\mathrm{align}}^{\mathcal A}.
$$
This observation does not yet constitute a theorem-level local coercivity result, but it is a verified local calculation and explains why the alignment term is the genuinely quadratic boundary mechanism.

## Appendix C. Conditional reductions toward local rigidity

This appendix records two verified reduction statements. They are not used in the main theorem because the required local actual-solution chart has not yet been internalized in the present article.

### Proposition C.1 (Analytic scalar-curvature-square defect on an actual-solution germ)

Assume there is a local analytic germ $S$ of actual nearby slicings near a rigid disk-type model. Define
$$
\mathbf r(z):=R_g(z),
\qquad
\mathcal A(z):=\|\mathbf r(z)\|_{L^2}^2=\int_{\Gamma_z}R_g(z)^2\,dA_z.
$$
Then, after shrinking $S$ if necessary:

1. $\mathcal A$ is analytic on $S$;
2. there exists $C>0$ such that
   $$
   \mathcal A(z)\le C\,\varepsilon(z)
   \qquad\text{for all }z\in S;
   $$
3. the zero set
   $$
   Z:=\{z\in S:\mathcal A(z)=0\}
   $$
   is exactly the exact nearby model set.

#### Proof

Analyticity is immediate from analyticity of the germ and the $L^2$ square norm.

For the comparison with $\varepsilon$, in the local disk-type regime one has $k=1$ and $\chi(\Gamma)=1$. The adapted quantitative defect inequality therefore gives
$$
\mathcal E_{\mathrm{bulk}}(\Gamma_z)+\mathcal D_{\mathrm{wind}}^{\mathcal A}(\Gamma_z)\le \varepsilon(z).
$$
In particular,
$$
\frac12\int_{\Gamma_z}(R_g)_+\,dA\le \varepsilon(z),
$$
so
$$
\int_{\Gamma_z}(R_g)_+\,dA\le 2\varepsilon(z)
=
\int_{\Gamma_z}(R_g)_-\,dA.
$$
Hence
$$
\int_{\Gamma_z}|R_g|\,dA
=
\int_{\Gamma_z}(R_g)_+\,dA+\int_{\Gamma_z}(R_g)_-\,dA
\le 4\varepsilon(z).
$$
If local bounded geometry gives $|R_g|\le M$ on the germ neighborhood, then
$$
\mathcal A(z)
=
\int_{\Gamma_z}R_g(z)^2\,dA_z
\le
M\int_{\Gamma_z}|R_g(z)|\,dA_z
\le 4M\,\varepsilon(z).
$$

Finally,
$$
\mathcal A(z)=0
\iff
R_g(z)\equiv 0.
$$
This implies $\varepsilon(z)=0$, and by the exact zero-budget adapted equality chain the slicing is an exact nearby model. Conversely exact nearby models have $R_g\equiv 0$, hence $\mathcal A=0$. ∎

### Proposition C.2 (Sharp map-rank reduction on the actual quotient)

Assume the setup of Proposition C.1 and let $p\in Z$. Then
$$
\frac12D^2\mathcal A_p(w,w)=\|D\mathbf r_p[w]\|_{L^2}^2
\qquad\text{for all }w\in T_pS.
$$
Consequently, a sharp local rigidity theorem on $S$ reduces to the normal-rank condition
$$
\ker D\mathbf r_p=T_pZ.
$$

#### Proof

Since $\mathcal A(z)=\langle \mathbf r(z),\mathbf r(z)\rangle_{L^2}$ and $\mathbf r(p)=0$, differentiation gives
$$
D\mathcal A_p[w]=2\langle D\mathbf r_p[w],\mathbf r(p)\rangle_{L^2}=0,
$$
and a second differentiation yields
$$
D^2\mathcal A_p(w,w)=2\|D\mathbf r_p[w]\|_{L^2}^2.
$$
This proves the identity.

Now $Z=\mathbf r^{-1}(0)$ near $p$. The normal quadratic form of $\mathcal A$ is therefore positive precisely when $D\mathbf r_p$ is injective on the normal quotient $T_pS/T_pZ$, i.e.
$$
\ker D\mathbf r_p=T_pZ.
$$
This is exactly the sharp map-rank criterion. ∎

## Appendix D. Failed routes with structural value

For continuation purposes, we record three failed routes that carry mathematical information.

### D.1. The raw intrinsic Hessian is the wrong boundary object

Trying to prove coercivity directly from the intrinsic support deficit leads to the Hessian formula
$$
\frac12D^2\mathfrak d_{B_0}(E,E)
=
-\frac{|e_{13}|^2}{\lambda_1-\lambda_3}
-\frac{|e_{23}|^2}{\lambda_2-\lambda_3},
$$
which is nonpositive on the relevant tangent space. This failure is structural: the intrinsic defect is a support deficit, not an optimizer-selection defect.

### D.2. The angle defect is not quadratic

Near the rigid model,
$$
\frac1J-1=O(|z|^2),
\qquad
\delta_Q=O(|z|^2),
$$
so
$$
\mathcal D_{\mathrm{ang}}^{\mathcal A}=O(\|z\|^4).
$$
Thus the angle defect is not a leading quadratic obstruction. The true quadratic core is bulk plus alignment.

### D.3. The corrected defect is not the right reduced zero-set functional

A natural reduced candidate is
$$
H_{\mathrm{corr}}(x):=F_{\mathrm{corr}}(x)+|G(x)|^2,
\qquad
F_{\mathrm{corr}}(x):=\mathfrak D_{\mathrm{corr}}(z(x)).
$$
This fails as a general reduced zero-set functional because current proved material does not imply
$$
H_{\mathrm{corr}}=0\Longrightarrow \varepsilon=0.
$$
This is why the nonsharp reduction in Appendix C uses the scalar-curvature-square defect $\mathcal A|_S$ instead.
