## Method Card
- **Short tag:** cut-open weighted Reilly
- **Full name:** Cut-open Reilly method in the N = 1 weighted boundary setting.
- **Input setting:** A compact weighted manifold with smooth boundary, positive 1-weighted Ricci lower bound, f-mean-convex outer boundary, and either closed interior or free-boundary f-minimal hypersurfaces.
- **New object / driver:** A symmetric cut-open manifold argument together with the correct codimension-two corner model for the free-boundary Dirichlet problem.
- **Obstruction resolved:** Earlier proofs either assumed separation or carried an extra admissibility hypothesis for the free-boundary harmonic extension.
- **Expected outputs:** Boundary and free-boundary Choi--Wang lower bounds of size K/2, plus a reflective Neumann estimate and weighted Yang--Yau type area bounds in dimension three.
- **Transfer targets:** Weighted minimal-hypersurface spectral theory on manifolds with boundary and other Reilly-formula arguments on sectionally smooth domains.
- **Main technical risk:** The corner regularity and the piecewise-boundary sign bookkeeping must be handled exactly, or the cut-open Reilly argument fails.
- **Mechanism type:** spectral cancellation, defect control, rigidity
- **Tags:** Reilly-formula, cut-open, Choi-Wang, weighted-Ricci, free-boundary, N1-weighted
- **Method link:** ../methods/cut_open_reilly_weighted.md

**Condensation.** The new viewpoint is that the N = 1 weighted Choi--Wang inequality on manifolds with boundary should be proved on a cut-open space, with the free-boundary case treated by the true orthogonal-corner local model rather than an ad hoc edge picture. This overcomes the two main obstructions: the separating assumption in the closed case and the extra admissibility hypothesis in the free-boundary case. The operative mechanism is a symmetric cut-open construction, classical Dirichlet regularity on sectionally smooth corner domains, and the weighted Reilly formula with only f-mean-convexity on the outer boundary. If it works, it yields unconditional Dirichlet and reflective Neumann eigenvalue lower bounds and the corresponding surface area estimates.

# Boundary and free-boundary Choi-Wang inequalities in the $1$-weighted Ricci setting

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

## Abstract

Let $(\Omega^m,g,f)$ be a compact weighted manifold with smooth boundary. We prove that if
$$
\operatorname{Ric}_f^1 \ge K e^{-f/(m-1)} g
\qquad\text{on }\Omega,
$$
for some $K>0$, and if the outer boundary is $f$-mean-convex,
$$
H_{f,\partial\Omega}\ge 0,
$$
then every connected smooth closed embedded two-sided $f$-minimal hypersurface
$$
\Sigma^{m-1}\subset \operatorname{Int}(\Omega)
$$
satisfies
$$
\lambda_1^D(\Sigma)\ge \frac K2,
$$
where $\Delta_\Sigma^D:=e^{f/(m-1)}\Delta_{f,\Sigma}$. The proof uses a cut-open manifold and opposite Dirichlet data on the two boundary copies of $\Sigma$, removing the separating hypothesis from the one-sided argument. In dimension three this yields a weighted Yang-Yau type area bound.

We then study properly embedded free-boundary $f$-minimal hypersurfaces. The key point is that after cutting open along the hypersurface, the correct local model near $\partial\Sigma$ is an ordinary orthogonal corner $[0,\infty)^2\times \mathbb R^{m-2}$, not a single three-face edge. Classical Dirichlet theory on sectionally smooth domains therefore supplies the regularity needed for the piecewise-boundary $N=1$ Reilly formula, so the free-boundary Dirichlet estimate becomes unconditional:
$$
\lambda_{1,D}^D(\Sigma)\ge \frac K2.
$$
Under a reflective doubling hypothesis we also obtain
$$
\lambda_{1,N}^D(\Sigma)\ge \frac K2.
$$

## 1. Introduction

Choi and Wang proved that if $\Sigma$ is a closed embedded minimal hypersurface in a closed manifold of positive Ricci curvature, then the first nonzero Laplace eigenvalue of $\Sigma$ is bounded below by one half of the ambient Ricci lower bound [CW]. Weighted analogues were later established in the Bakry-Emery $N=\infty$ setting by Li-Wei and Cheng-Mejia-Zhou [LW, CMZ]. More recently, Fujitani extended the closed Choi-Wang inequality to the affine-connection framework; the weighted $N=1$ case is contained in his theorem [F1]. On the boundary side, Fraser-Li proved the free-boundary Steklov counterpart in the classical setting [FL], and Fujitani extended that theorem to the affine and $N=1$ regime [F2]. The weighted Reilly machinery for $N=1$ has also been developed in recent work of Fujitani-Sakurai [FS].

This article has two goals.

First, we prove a boundary/domain version of the $N=1$ Choi-Wang inequality for closed interior hypersurfaces in a compact weighted manifold with boundary. The main point is that full boundary convexity is unnecessary: for the Dirichlet problem appearing in the proof, the boundary faces inherited from $\partial\Omega$ contribute only the scalar term $H_{f,\partial\Omega}w_\nu^2$, so $f$-mean-convexity suffices. A second point is that a symmetric cut-open argument removes the separating hypothesis.

Second, we prove a free-boundary Dirichlet analogue. In an earlier draft this theorem was stated under an auxiliary admissibility hypothesis for the cut-open harmonic extension. The new observation is that this hypothesis is automatic. After cutting along a properly embedded free-boundary hypersurface, the local model near $\partial\Sigma$ is an ordinary codimension-two corner. The corresponding Dirichlet problem therefore lies in the classical theory of elliptic equations on sectionally smooth domains, exactly the regularity package already used by Fraser-Li in the free-boundary setting. Once this is inserted, the piecewise-boundary Reilly argument is completely parallel to the closed case and yields an unconditional estimate.

Our principal results are the following.

**Theorem A.**  
Let $(\Omega^m,g,f)$ be a compact connected weighted manifold with smooth boundary, $m\ge 2$, and assume
$$
\operatorname{Ric}_f^1 \ge K e^{-f/(m-1)} g
\qquad\text{on }\Omega
$$
for some $K>0$. Assume also
$$
H_{f,\partial\Omega}\ge 0
$$
with respect to the outer unit normal on $\partial\Omega$. Let
$$
\Sigma^{m-1}\subset \operatorname{Int}(\Omega)
$$
be a connected smooth closed embedded two-sided $f$-minimal hypersurface. Then
$$
\lambda_1^D(\Sigma)\ge \frac K2.
$$

**Theorem B.**  
Let $(M^m,g,f)$ be a compact connected weighted manifold with smooth boundary, and assume
$$
\operatorname{Ric}_f^1 \ge K e^{-f/(m-1)} g,
\qquad
H_{f,\partial M}\ge 0.
$$
Let $\Sigma^{m-1}\subset M$ be a connected compact two-sided properly embedded free-boundary $f$-minimal hypersurface. Then
$$
\lambda_{1,D}^D(\Sigma)\ge \frac K2.
$$

**Theorem C.**  
Under a reflective doubling hypothesis, the free-boundary theorem yields both Dirichlet and Neumann estimates:
$$
\lambda_{1,D}^D(\Sigma)\ge \frac K2,
\qquad
\lambda_{1,N}^D(\Sigma)\ge \frac K2.
$$

In dimension three, Theorem A gives a weighted Yang-Yau type estimate for closed interior surfaces, and Theorem C gives the corresponding reflective estimate for free-boundary surfaces.

The paper is organized as follows. Section 2 collects notation and analytic input. Section 3 states the results precisely. Section 4 proves the boundary/domain theorem by cutting open along the interior hypersurface. Section 5 proves the free-boundary Dirichlet theorem, including the corner-regularity input that removes the earlier admissibility hypothesis. Section 6 records the reflective corollary and the surface area bounds. Section 7 closes with remarks and further directions.

## 2. Preliminaries

### 2.1. Weighted operators and curvatures

Let $(M^m,g,f)$ be a weighted manifold. For $\alpha\in\mathbb R$ we write
$$
dm_{\alpha f}:=e^{-\alpha f}\,d\mu,
\qquad
dm_{\alpha f,S}:=e^{-\alpha f}\,d\sigma
$$
for a hypersurface $S\subset M$, where $d\mu$ and $d\sigma$ denote the Riemannian volume and hypersurface measures.

We use
$$
\Delta_{\alpha f}:=\Delta-\alpha\langle \nabla f,\nabla\cdot\rangle
$$
on $M$, and on a hypersurface $S$,
$$
\Delta_{f,S}:=\Delta_S-\langle \nabla_S f,\nabla_S\cdot\rangle.
$$

The $1$-weighted Ricci tensor is
$$
\operatorname{Ric}_f^1
=
\operatorname{Ric}
+\operatorname{Hess}f
+\frac{1}{m-1}df\otimes df.
$$
For a hypersurface $S$ with chosen unit normal $\nu$, the $f$-mean curvature is
$$
H_{f,S}:=H_S-\langle \nabla f,\nu\rangle.
$$
We say that $S$ is $f$-minimal if $H_{f,S}\equiv 0$.

The operator relevant to the $N=1$ spectral theory is
$$
\Delta_S^D:=e^{f/(m-1)}\Delta_{f,S}.
$$
When $S$ is closed and connected, its first nonzero eigenvalue is
$$
\lambda_1^D(S)=
\inf_{\int_S \phi\,dm_{\frac{m}{m-1}f,S}=0}
\frac{\int_S |\nabla_S\phi|^2\,dm_{f,S}}
{\int_S \phi^2\,dm_{\frac{m}{m-1}f,S}}.
\tag{2.1}
$$
When $S$ has nonempty boundary, the first Dirichlet eigenvalue is
$$
\lambda_{1,D}^D(S)=
\inf_{\phi\in H_0^1(S)\setminus\{0\}}
\frac{\int_S |\nabla_S\phi|^2\,dm_{f,S}}
{\int_S \phi^2\,dm_{\frac{m}{m-1}f,S}}.
\tag{2.2}
$$
If $S$ is compact with boundary and $\eta$ denotes the outer unit conormal of $\partial S$ in $S$, the first nonzero Neumann eigenvalue is
$$
\lambda_{1,N}^D(S)=
\inf_{\substack{\phi\in H^1(S)\setminus\{0\}\\ \partial_\eta\phi=0\\ \int_S \phi\,dm_{\frac{m}{m-1}f,S}=0}}
\frac{\int_S |\nabla_S\phi|^2\,dm_{f,S}}
{\int_S \phi^2\,dm_{\frac{m}{m-1}f,S}}.
\tag{2.3}
$$

### 2.2. Reilly formulas

We shall use two versions of the $N=1$ weighted Reilly formula.

#### Smooth boundary version

Let $U$ be compact with smooth boundary and let $\varphi\in C^\infty(U)$. Set $\psi=\varphi|_{\partial U}$. The weighted Reilly formula in the $N=1$ setting reads
$$
\int_U
\left[
\left(\Delta_{\frac{m}{m-1}f}\varphi\right)^2
-
\operatorname{Ric}_f^1(\nabla\varphi,\nabla\varphi)
-
\left|
\operatorname{Hess}\varphi-\frac{1}{m-1}\langle \nabla\varphi,\nabla f\rangle g
\right|^2
\right]\,dm_f
$$
$$
=
\int_{\partial U}
\left(
H_{f,\partial U}\,\varphi_\nu^2
+
2\varphi_\nu\,\Delta_{f,\partial U}\psi
+
II_{\partial U}(\nabla_{\partial U}\psi,\nabla_{\partial U}\psi)
\right)\,dm_{f,\partial U}.
\tag{2.4}
$$

#### Piecewise smooth boundary version

Let $U$ be compact with piecewise smooth boundary. Write the boundary as a union of smooth faces $F$. For a function $\varphi$ that is smooth on the interior of each face, set $\psi_F:=\varphi|_F$, and write $\nu_F$ for the outward normal of $U$ along $F$.

We shall use the following consequence of Fujitani's piecewise-boundary Reilly formula [F2, Proposition 2.1], specialized to the $N=1$ weighted case: if $\varphi$ is admissible for that formula and
$$
\Delta_{\frac{m}{m-1}f}\varphi=0
\qquad\text{on }U,
$$
while
$$
\operatorname{Ric}_f^1\ge K e^{-f/(m-1)}g,
$$
then
$$
0\ge
K\int_U |\nabla\varphi|^2\,dm_{\frac{m}{m-1}f}
+
\sum_{F\subset \partial U} \mathcal B_F(\varphi),
\tag{2.5}
$$
where
$$
\mathcal B_F(\varphi)
:=
\int_F
\left(
H_{f,F}\,\varphi_{\nu_F}^2
+
II_F(\nabla_F\psi_F,\nabla_F\psi_F)
+
\varphi_{\nu_F}\Delta_{f,F}\psi_F
-
\langle \nabla_F\psi_F,\nabla_F\varphi_{\nu_F}\rangle
\right)\,dm_{f,F}.
\tag{2.6}
$$
When a face $F$ is closed, integration by parts on $F$ gives
$$
\mathcal B_F(\varphi)
=
\int_F
\left(
H_{f,F}\,\varphi_{\nu_F}^2
+
2\varphi_{\nu_F}\Delta_{f,F}\psi_F
+
II_F(\nabla_F\psi_F,\nabla_F\psi_F)
\right)\,dm_{f,F}.
\tag{2.7}
$$

### 2.3. A conformal comparison in dimension two

For a closed weighted surface $(\Sigma^2,g,f)$, define the conformal metric
$$
g_f:=e^{-3f/2}g.
$$
Because the Dirichlet energy is conformally invariant in dimension two,
$$
\int_\Sigma |\nabla\phi|_{g_f}^2\,d\sigma_{g_f}
=
\int_\Sigma |\nabla\phi|_g^2\,d\sigma.
\tag{2.8}
$$
Also,
$$
d\sigma_{g_f}=e^{-3f/2}\,d\sigma.
\tag{2.9}
$$
Hence, for any $\phi$ with $\int_\Sigma \phi\,d\sigma_{g_f}=0$,
$$
\frac{\int_\Sigma |\nabla\phi|^2\,dm_{f,\Sigma}}
{\int_\Sigma \phi^2\,dm_{\frac{3}{2}f,\Sigma}}
\le
e^{-\inf_\Sigma f}
\frac{\int_\Sigma |\nabla\phi|_{g_f}^2\,d\sigma_{g_f}}
{\int_\Sigma \phi^2\,d\sigma_{g_f}}.
\tag{2.10}
$$
Taking infima gives
$$
\lambda_1^D(\Sigma)\le e^{-\inf_\Sigma f}\lambda_1(\Sigma,g_f),
\qquad
\lambda_1(\Sigma,g_f)\ge e^{\inf_\Sigma f}\lambda_1^D(\Sigma).
\tag{2.11}
$$

Finally, for every closed orientable Riemannian surface $(\Sigma,h)$ of genus $\gamma$, Yang and Yau proved
$$
\lambda_1(\Sigma,h)\operatorname{Area}_h(\Sigma)\le 8\pi(\gamma+1).
\tag{2.12}
$$

## 3. Main results

We now state the results precisely.

**Theorem 3.1 (boundary/domain Choi-Wang inequality).**  
Let $(\Omega^m,g,f)$ be a compact connected weighted manifold with smooth (possibly empty) boundary, $m\ge 2$. Assume
$$
\operatorname{Ric}_f^1 \ge K e^{-f/(m-1)} g
\qquad\text{on }\Omega
$$
for some $K>0$, and assume
$$
H_{f,\partial\Omega}\ge 0
$$
with respect to the outer unit normal on $\partial\Omega$. Let
$$
\Sigma^{m-1}\subset \operatorname{Int}(\Omega)
$$
be a connected smooth closed embedded two-sided $f$-minimal hypersurface. Then
$$
\lambda_1^D(\Sigma)\ge \frac K2.
$$

The proof uses the cut-open manifold obtained from $\Omega$ by cutting along $\Sigma$. In particular, no separating hypothesis is needed.

**Corollary 3.2 (surface area bound).**  
Assume in addition that $m=3$ and that $\Sigma$ is orientable of genus $\gamma$. Then
$$
m_{f,\Sigma}(\Sigma):=\int_\Sigma e^{-f}\,d\sigma
\le
\frac{16\pi}{K}(\gamma+1)e^{-\inf_\Sigma f+\frac12\sup_\Sigma f}.
$$

**Theorem 3.3 (free-boundary Dirichlet estimate).**  
Let $(M^m,g,f)$ be a compact connected weighted manifold with smooth boundary, $m\ge 2$. Assume
$$
\operatorname{Ric}_f^1 \ge K e^{-f/(m-1)} g
\qquad\text{on }M
$$
for some $K>0$, and
$$
H_{f,\partial M}\ge 0
$$
with respect to the outer unit normal on $\partial M$. Let
$$
\Sigma^{m-1}\subset M
$$
be a connected compact two-sided properly embedded free-boundary $f$-minimal hypersurface. Then
$$
\lambda_{1,D}^D(\Sigma)\ge \frac K2.
$$

**Theorem 3.4 (reflective free-boundary analogue).**  
Let $(M^m,g,f)$ be a compact orientable weighted manifold with boundary, and suppose that it admits a smooth weighted double
$$
(\widehat M,\widehat g,\widehat f)
$$
with an isometric involution $\tau$ such that:

1. one fundamental domain is $M$;
2. the fixed set of $\tau$ is the doubled copy of $\partial M$;
3. $\widehat f\circ\tau=\widehat f$;
4. 
$$
\operatorname{Ric}_{\widehat f}^1\ge K e^{-\widehat f/(m-1)}\widehat g
\qquad\text{on }\widehat M
$$
for some $K>0$.

Let $\Sigma^{m-1}\subset M$ be a connected compact properly embedded free-boundary $f$-minimal hypersurface such that its reflected double
$$
\widehat\Sigma:=\Sigma\cup\tau(\Sigma)
$$
is a smooth embedded two-sided $\widehat f$-minimal hypersurface in $\widehat M$. Then
$$
\lambda_{1,N}^D(\Sigma)\ge \frac K2,
\qquad
\lambda_{1,D}^D(\Sigma)\ge \frac K2.
$$

**Corollary 3.5 (reflective surface area bound).**  
Assume in addition that $m=3$ and that $\Sigma$ is orientable of genus $\gamma$ with $b$ boundary components. Then
$$
m_{f,\Sigma}(\Sigma)
\le
\frac{8\pi}{K}(2\gamma+b)\,
e^{-\inf_\Sigma f+\frac12\sup_\Sigma f}.
$$

## 4. Proof of the boundary/domain theorem

In this section we prove Theorem 3.1 and Corollary 3.2.

### 4.1. The cut-open manifold

Let $\Sigma\subset \operatorname{Int}(\Omega)$ be a connected closed embedded two-sided hypersurface. Cutting $\Omega$ open along $\Sigma$ produces a compact smooth manifold with boundary
$$
\widetilde\Omega
$$
together with a quotient map $p:\widetilde\Omega\to\Omega$ such that
$$
\partial\widetilde\Omega=\Sigma_+\sqcup \Sigma_-\sqcup \Gamma,
$$
where:

- $p|_{\Sigma_\pm}:\Sigma_\pm\to\Sigma$ are diffeomorphisms;
- $\Gamma=p^{-1}(\partial\Omega)$ is naturally identified with $\partial\Omega$;
- $\widetilde\Omega$ may be connected or disconnected, depending on whether $\Sigma$ is nonseparating or separating.

Let $\nu_\pm$ denote the outward unit normals of $\widetilde\Omega$ along $\Sigma_\pm$, and let $II_\pm$ be the corresponding second fundamental forms of these boundary components. Since the two normals are opposite under the identification with $\Sigma$,
$$
II_-=-II_+.
\tag{4.1}
$$

### 4.2. Harmonic extension of opposite boundary data

Let $u$ be a first eigenfunction of $-\Delta_\Sigma^D$:
$$
-\Delta_\Sigma^D u = \lambda u,
\qquad
\int_\Sigma u\,dm_{\frac{m}{m-1}f,\Sigma}=0,
\qquad
\lambda=\lambda_1^D(\Sigma).
\tag{4.2}
$$
Solve
$$
\begin{cases}
\Delta_{\frac{m}{m-1}f}w=0 & \text{on }\widetilde\Omega,\\
w=u & \text{on }\Sigma_+,\\
w=-u & \text{on }\Sigma_-,\\
w=0 & \text{on }\Gamma.
\end{cases}
\tag{4.3}
$$
Since $\partial\widetilde\Omega$ is smooth and compact, standard elliptic theory gives a smooth solution on each connected component.

Weighted integration by parts gives
$$
E:=\int_{\widetilde\Omega} |\nabla w|^2\,dm_{\frac{m}{m-1}f}
=
\int_{\Sigma_+} u\,w_{\nu_+}\,dm_{\frac{m}{m-1}f,\Sigma_+}
-
\int_{\Sigma_-} u\,w_{\nu_-}\,dm_{\frac{m}{m-1}f,\Sigma_-}.
\tag{4.4}
$$
Since the boundary values are not identically zero, $w$ is nonconstant and hence
$$
E>0.
\tag{4.5}
$$

### 4.3. Reilly formula and cancellation

Apply the smooth-boundary Reilly formula (2.4) to $w$ on each connected component of $\widetilde\Omega$ and sum the resulting identities. Because $\Delta_{\frac{m}{m-1}f}w=0$ and $\operatorname{Ric}_f^1\ge K e^{-f/(m-1)}g$, we obtain
$$
0\ge
K E + I_{\Sigma_+}+I_{\Sigma_-}+I_\Gamma,
\tag{4.6}
$$
where the boundary-face contributions are taken with respect to the outward normals of $\widetilde\Omega$.

On $\Gamma$ the trace of $w$ vanishes, so
$$
\nabla_\Gamma w=0,
\qquad
\Delta_{f,\Gamma}(w|_\Gamma)=0.
$$
Therefore
$$
I_\Gamma
=
\int_\Gamma w_{\nu_\Gamma}^2 H_{f,\Gamma}\,dm_{f,\Gamma}.
\tag{4.7}
$$
Since $\Gamma$ is inherited from the outer boundary of $\Omega$,
$$
H_{f,\Gamma}=H_{f,\partial\Omega}\ge 0,
$$
and hence
$$
I_\Gamma\ge 0.
\tag{4.8}
$$

On $\Sigma_+$ we have $w|_{\Sigma_+}=u$ and $H_{f,\Sigma_+}=0$; on $\Sigma_-$ we have $w|_{\Sigma_-}=-u$ and again $H_{f,\Sigma_-}=0$. Since the faces $\Sigma_\pm$ are closed, the smooth formula applies directly:
$$
I_{\Sigma_+}
=
\int_{\Sigma_+}
\left(
2w_{\nu_+}\Delta_{f,\Sigma_+}u
+
II_+(\nabla u,\nabla u)
\right)\,dm_{f,\Sigma_+},
\tag{4.9}
$$
and
$$
I_{\Sigma_-}
=
\int_{\Sigma_-}
\left(
2w_{\nu_-}\Delta_{f,\Sigma_-}(-u)
+
II_-(\nabla u,\nabla u)
\right)\,dm_{f,\Sigma_-}.
\tag{4.10}
$$
Using
$$
\Delta_{f,\Sigma}u
=
e^{-f/(m-1)}\Delta_\Sigma^D u
=
-\lambda e^{-f/(m-1)}u,
\tag{4.11}
$$
we get
$$
I_{\Sigma_+}
=
\int_{\Sigma_+} II_+(\nabla u,\nabla u)\,dm_{f,\Sigma_+}
-
2\lambda \int_{\Sigma_+}u\,w_{\nu_+}\,dm_{\frac{m}{m-1}f,\Sigma_+},
\tag{4.12}
$$
and
$$
I_{\Sigma_-}
=
\int_{\Sigma_-} II_-(\nabla u,\nabla u)\,dm_{f,\Sigma_-}
+
2\lambda \int_{\Sigma_-}u\,w_{\nu_-}\,dm_{\frac{m}{m-1}f,\Sigma_-}.
\tag{4.13}
$$
Adding these identities and using (4.1) yields
$$
I_{\Sigma_+}+I_{\Sigma_-}
=
-2\lambda
\left(
\int_{\Sigma_+}u\,w_{\nu_+}\,dm_{\frac{m}{m-1}f,\Sigma_+}
-
\int_{\Sigma_-}u\,w_{\nu_-}\,dm_{\frac{m}{m-1}f,\Sigma_-}
\right).
\tag{4.14}
$$
By the energy identity (4.4),
$$
I_{\Sigma_+}+I_{\Sigma_-}=-2\lambda E.
\tag{4.15}
$$
Substituting (4.8) and (4.15) into (4.6) gives
$$
0\ge (K-2\lambda)E.
\tag{4.16}
$$
Since $E>0$, we conclude
$$
\lambda=\lambda_1^D(\Sigma)\ge \frac K2.
$$
This proves Theorem 3.1.

### 4.4. Proof of Corollary 3.2

Assume $m=3$ and $\Sigma$ orientable of genus $\gamma$. Define
$$
g_f:=e^{-3f/2}g
$$
on $\Sigma$. By (2.11) and Theorem 3.1,
$$
\lambda_1(\Sigma,g_f)\ge e^{\inf_\Sigma f}\frac K2.
\tag{4.17}
$$
Yang-Yau gives
$$
\operatorname{Area}_{g_f}(\Sigma)\le \frac{8\pi(\gamma+1)}{\lambda_1(\Sigma,g_f)}.
\tag{4.18}
$$
Also,
$$
d\sigma_{g_f}=e^{-3f/2}d\sigma,
\qquad
e^{-f}d\sigma=e^{f/2}\,d\sigma_{g_f}.
\tag{4.19}
$$
Hence
$$
m_{f,\Sigma}(\Sigma)
=
\int_\Sigma e^{-f}\,d\sigma
=
\int_\Sigma e^{f/2}\,d\sigma_{g_f}
\le
e^{\frac12\sup_\Sigma f}\operatorname{Area}_{g_f}(\Sigma).
\tag{4.20}
$$
Combining (4.17), (4.18), and (4.20), we obtain
$$
m_{f,\Sigma}(\Sigma)
\le
e^{\frac12\sup_\Sigma f}
\frac{8\pi(\gamma+1)}{e^{\inf_\Sigma f}(K/2)}
=
\frac{16\pi}{K}(\gamma+1)e^{-\inf_\Sigma f+\frac12\sup_\Sigma f}.
$$
This proves Corollary 3.2.

## 5. Proof of the free-boundary Dirichlet theorem

We now prove Theorem 3.3. The only extra input compared with Section 4 is the piecewise-boundary Reilly formula and the regularity of the cut-open Dirichlet problem near the codimension-two corner.

### 5.1. Geometry of the cut-open manifold

Let $\Sigma^{m-1}\subset M$ be a connected compact two-sided properly embedded free-boundary $f$-minimal hypersurface. Let
$$
\widetilde M
$$
denote the metric completion of $M\setminus \Sigma$.

Fix $p\in \partial\Sigma$. Because $\partial M$ is smooth and $\Sigma$ meets $\partial M$ orthogonally, there exist local coordinates
$$
(x_1,\dots,x_m)
$$
centered at $p$ such that
$$
M\cap U = \{x_1\ge 0\},
\qquad
\partial M\cap U = \{x_1=0\},
$$
and
$$
\Sigma\cap U = \{x_m=0,\ x_1\ge 0\}.
$$
Thus
$$
(M\setminus\Sigma)\cap U = \{x_1\ge 0,\ x_m\neq 0\}.
$$
After taking the metric completion of the two sides $x_m>0$ and $x_m<0$, each lifted point of the corner has a neighborhood diffeomorphic to
$$
[0,\infty)^2\times B^{m-2}.
$$
Therefore $\widetilde M$ is a compact smooth manifold with corners, and its singular boundary set
$$
\mathcal E
$$
is a codimension-two corner set.

The codimension-one boundary faces of $\widetilde M$ are:

- two copies $\Sigma_+$ and $\Sigma_-$ of $\Sigma$;
- finitely many smooth faces $\Gamma_\beta$ coming from the lift of $\partial M\setminus \partial\Sigma$.

Thus
$$
\partial\widetilde M = \Sigma_+\sqcup \Sigma_-\sqcup \Big(\bigsqcup_\beta \Gamma_\beta\Big).
$$
Each connected component of $\partial\Sigma_\pm$ lies in exactly one adjacent face $\Gamma_\beta$, and along that corner the two faces meet orthogonally.

If $\nu_\pm$ denote the outward unit normals of $\widetilde M$ along $\Sigma_\pm$, then under the natural identification with the original hypersurface,
$$
\nu_-=-\nu_+,
$$
and hence the second fundamental forms satisfy
$$
II_-=-II_+.
\tag{5.1}
$$
Because $\Sigma$ is $f$-minimal, each lifted face is also $f$-minimal:
$$
H_{f,\Sigma_\pm}=0.
\tag{5.2}
$$
Each outer face $\Gamma_\beta$ is a lifted piece of $\partial M$, so
$$
H_{f,\Gamma_\beta}=H_{f,\partial M}\ge 0.
\tag{5.3}
$$

### 5.2. Corner admissibility for the cut-open Dirichlet problem

Let $u\in C^\infty(\Sigma)$ satisfy
$$
u|_{\partial\Sigma}=0.
$$
For the application below, $u$ will be the first Dirichlet eigenfunction of $-\Delta_\Sigma^D$.

Define boundary data on $\partial\widetilde M$ by
$$
g=
\begin{cases}
u & \text{on }\Sigma_+,\\
-u & \text{on }\Sigma_-,\\
0 & \text{on each }\Gamma_\beta.
\end{cases}
\tag{5.4}
$$
Because $u|_{\partial\Sigma}=0$, these traces agree continuously at every corner point of $\mathcal E$.

**Proposition 5.1 (corner admissibility).**  
For every $\alpha\in(0,1)$, the Dirichlet problem
$$
\begin{cases}
\Delta_{\frac{m}{m-1}f}w=0 & \text{on }\operatorname{Int}(\widetilde M),\\
w=g & \text{on }\partial\widetilde M
\end{cases}
\tag{5.5}
$$
has a unique solution
$$
w\in C^{1,\alpha}(\widetilde M)\cap C^\infty(\widetilde M\setminus \mathcal E).
$$
Moreover, on every compact set $K\Subset \widetilde M\setminus \mathcal E$ one has
$$
\|w\|_{C^3(K)}<\infty.
$$
In particular, $w$ belongs to the function class required by the piecewise-boundary Reilly formula (2.5).

**Proof.**  
The operator $L:=\Delta_{\frac{m}{m-1}f}$ is uniformly elliptic with smooth coefficients. In local coordinates,
$$
Lw = a^{ij}(x)\,\partial_{ij}w+b^i(x)\,\partial_i w,
$$
where $(a^{ij})$ is positive definite and $a^{ij},b^i\in C^\infty$. Equivalently,
$$
Lw = e^{\frac{m}{m-1}f}\,\operatorname{div}\!\left(e^{-\frac{m}{m-1}f}\nabla w\right),
$$
so $L$ is the Euler-Lagrange operator for the weighted Dirichlet energy.

Choose any $H^1$ extension $G$ of the continuous boundary data $g$. Minimizing
$$
\mathcal E(v)=\int_{\widetilde M}|\nabla v|^2\,dm_{\frac{m}{m-1}f}
$$
among $v\in G+H_0^1(\widetilde M)$ gives a unique weak solution of (5.5). Uniqueness also follows from the maximum principle.

The local model from Section 5.1 shows that $\widetilde M$ is sectionally smooth in the sense of the classical elliptic theory for domains with edges. After flattening the metric and the boundary in local corner charts, equation (5.5) becomes a uniformly elliptic linear second-order equation on a sectionally smooth Euclidean domain with continuous Dirichlet data that are smooth on each boundary face and compatible at the corner.

At this point one can invoke the same regularity package used by Fraser-Li in the free-boundary setting: Agmon-Douglis-Nirenberg boundary estimates together with Azzam's Dirichlet theory on sectionally smooth domains [ADN, A1, A2, FL]. Concretely, Fraser-Li analyze the same cut-open free-boundary geometry and obtain the regularity needed for a piecewise-boundary Reilly argument; our problem is simpler because all boundary conditions are Dirichlet and the outer-face data are identically zero. Therefore
$$
w\in C^{1,\alpha}(\widetilde M)\cap C^\infty(\widetilde M\setminus \mathcal E)
\qquad\text{for every }\alpha\in(0,1).
\tag{5.6}
$$

Finally, if $K\Subset \widetilde M\setminus \mathcal E$, then $K$ stays a positive distance away from the corner set. Interior Schauder theory or smooth-boundary Schauder theory therefore applies, and repeated elliptic bootstrapping yields
$$
\|w\|_{C^3(K)}<\infty.
\tag{5.7}
$$
This is exactly the regularity class needed in (2.5). $\square$

### 5.3. Proof of Theorem 3.3

Let $u$ be a first Dirichlet eigenfunction of $-\Delta_\Sigma^D$:
$$
-\Delta_\Sigma^D u = \lambda u,
\qquad
u = 0 \text{ on }\partial\Sigma,
\qquad
\lambda=\lambda_{1,D}^D(\Sigma).
\tag{5.8}
$$
Let $w$ be the solution of the cut-open Dirichlet problem from Proposition 5.1:
$$
\begin{cases}
\Delta_{\frac{m}{m-1}f}w=0 & \text{on }\widetilde M,\\
w=u & \text{on }\Sigma_+,\\
w=-u & \text{on }\Sigma_-,\\
w=0 & \text{on each }\Gamma_\beta.
\end{cases}
\tag{5.9}
$$
Since the boundary values are not identically zero, $w$ is nonconstant.

Weighted integration by parts gives
$$
E:=\int_{\widetilde M}|\nabla w|^2\,dm_{\frac{m}{m-1}f}
=
\int_{\Sigma_+}u\,w_{\nu_+}\,dm_{\frac{m}{m-1}f,\Sigma_+}
-
\int_{\Sigma_-}u\,w_{\nu_-}\,dm_{\frac{m}{m-1}f,\Sigma_-}.
\tag{5.10}
$$
Hence
$$
E>0.
\tag{5.11}
$$

Apply the piecewise-boundary Reilly inequality (2.5) to $w$ on $\widetilde M$. Since $\Delta_{\frac{m}{m-1}f}w=0$ and $\operatorname{Ric}_f^1\ge K e^{-f/(m-1)}g$, we obtain
$$
0\ge K E + J_{\Sigma_+}+J_{\Sigma_-}+\sum_\beta J_{\Gamma_\beta},
\tag{5.12}
$$
where
$$
J_F
=
\int_F
\left(
H_{f,F}w_{\nu_F}^2
+
II_F(\nabla_F\psi_F,\nabla_F\psi_F)
+
w_{\nu_F}\Delta_{f,F}\psi_F
-
\langle \nabla_F\psi_F,\nabla_F w_{\nu_F}\rangle
\right)
\,dm_{f,F},
\tag{5.13}
$$
and $\psi_F=w|_F$.

On each outer face $\Gamma_\beta$ we have $\psi_{\Gamma_\beta}=0$. Thus
$$
\nabla_{\Gamma_\beta}\psi_{\Gamma_\beta}=0,
\qquad
\Delta_{f,\Gamma_\beta}\psi_{\Gamma_\beta}=0,
$$
and therefore
$$
J_{\Gamma_\beta}
=
\int_{\Gamma_\beta} H_{f,\Gamma_\beta}w_{\nu_\beta}^2\,dm_{f,\Gamma_\beta}
\ge 0
\tag{5.14}
$$
by (5.3).

On the hypersurface faces,
$$
\psi_{\Sigma_+}=u,
\qquad
\psi_{\Sigma_-}=-u,
\qquad
H_{f,\Sigma_\pm}=0,
$$
so
$$
J_{\Sigma_\pm}
=
\int_{\Sigma_\pm}
\left(
II_\pm(\nabla u,\nabla u)
+
w_{\nu_\pm}\Delta_{f,\Sigma_\pm}(\pm u)
-
\langle \nabla(\pm u),\nabla w_{\nu_\pm}\rangle
\right)
\,dm_{f,\Sigma_\pm}.
\tag{5.15}
$$

Let $E_\pm:=\partial\Sigma_\pm$, and let $\eta_\pm$ denote the outer unit conormal of $E_\pm$ in $\Sigma_\pm$. Since $w\in C^{1,\alpha}(\widetilde M)$, the quantity $w_{\nu_\pm}$ extends continuously to $E_\pm$. Integration by parts on $\Sigma_\pm$ yields
$$
-\int_{\Sigma_\pm}\langle \nabla(\pm u),\nabla w_{\nu_\pm}\rangle\,dm_f
=
\int_{\Sigma_\pm}w_{\nu_\pm}\Delta_{f,\Sigma_\pm}(\pm u)\,dm_f
-
\int_{E_\pm}w_{\nu_\pm}\,\partial_{\eta_\pm}(\pm u)\,dm_{f,E_\pm}.
\tag{5.16}
$$

We claim that
$$
w_{\nu_\pm}=0
\qquad\text{on }E_\pm.
\tag{5.17}
$$
Indeed, fix $q\in E_\pm$ and let $\Gamma_\beta$ be the unique adjacent outer face through $q$. Because the corner is orthogonal, the vector $\nu_\pm$ is tangent to $\Gamma_\beta$ and normal to $E_\pm$ inside $\Gamma_\beta$. Since $w\equiv 0$ on $\Gamma_\beta$, every tangential derivative of $w$ along $\Gamma_\beta$ vanishes; in particular,
$$
w_{\nu_\pm}(q)=0.
$$
This proves (5.17), so the boundary integral in (5.16) vanishes.

Hence
$$
J_{\Sigma_\pm}
=
\int_{\Sigma_\pm} II_\pm(\nabla u,\nabla u)\,dm_{f,\Sigma_\pm}
+
2\int_{\Sigma_\pm} w_{\nu_\pm}\Delta_{f,\Sigma_\pm}(\pm u)\,dm_{f,\Sigma_\pm}.
\tag{5.18}
$$
Using the eigenvalue equation,
$$
\Delta_{f,\Sigma}u
=
e^{-f/(m-1)}\Delta_\Sigma^D u
=
-\lambda e^{-f/(m-1)}u,
\tag{5.19}
$$
we obtain
$$
J_{\Sigma_+}
=
\int_{\Sigma_+} II_+(\nabla u,\nabla u)\,dm_{f,\Sigma_+}
-
2\lambda\int_{\Sigma_+}u\,w_{\nu_+}\,dm_{\frac{m}{m-1}f,\Sigma_+},
\tag{5.20}
$$
and
$$
J_{\Sigma_-}
=
\int_{\Sigma_-} II_-(\nabla u,\nabla u)\,dm_{f,\Sigma_-}
+
2\lambda\int_{\Sigma_-}u\,w_{\nu_-}\,dm_{\frac{m}{m-1}f,\Sigma_-}.
\tag{5.21}
$$
Now (5.1) yields cancellation of the second fundamental form terms, and by the energy identity (5.10) we get
$$
J_{\Sigma_+}+J_{\Sigma_-}=-2\lambda E.
\tag{5.22}
$$
Substituting (5.14) and (5.22) into (5.12), we find
$$
0\ge (K-2\lambda)E.
\tag{5.23}
$$
Because $E>0$, this implies
$$
\lambda=\lambda_{1,D}^D(\Sigma)\ge \frac K2.
$$
This proves Theorem 3.3.

## 6. Reflective doubling and surface area bounds

We now prove Theorem 3.4 and Corollary 3.5.

### 6.1. Spectral parity on the double

Assume the hypotheses of Theorem 3.4. Since $\widehat\Sigma$ is a smooth embedded two-sided closed $\widehat f$-minimal hypersurface in the closed weighted manifold $(\widehat M,\widehat g,\widehat f)$, Theorem 3.1 applied with empty ambient boundary gives
$$
\lambda_1^D(\widehat\Sigma)\ge \frac K2.
\tag{6.1}
$$
Here $\lambda_1^D(\widehat\Sigma)$ denotes the first nonzero eigenvalue of the closed operator
$$
\Delta_{\widehat\Sigma}^D:=e^{\widehat f/(m-1)}\Delta_{\widehat f,\widehat\Sigma}.
$$

The involution $\tau$ preserves $\widehat g$, $\widehat f$, and $\widehat\Sigma$, so it commutes with $\Delta_{\widehat\Sigma}^D$. Therefore the spectrum splits into $\tau$-even and $\tau$-odd parts.

Near $\partial\Sigma$, choose reflection coordinates $(y,s)$ on $\widehat\Sigma$ such that
$$
\tau(y,s)=(y,-s),
\qquad
\partial\Sigma=\{s=0\}.
\tag{6.2}
$$
If $v$ is $\tau$-even, then $v(y,s)=v(y,-s)$ and hence
$$
\partial_s v(y,0)=0,
\tag{6.3}
$$
which is the Neumann condition on $\partial\Sigma$.
If $v$ is $\tau$-odd, then $v(y,s)=-v(y,-s)$ and thus
$$
v(y,0)=0,
\tag{6.4}
$$
which is the Dirichlet condition.

Conversely, a Neumann eigenfunction on $\Sigma$ extends evenly to $\widehat\Sigma$, while a Dirichlet eigenfunction extends oddly. In either case, both numerator and denominator of the Rayleigh quotient double, so the eigenvalue is unchanged by extension. Therefore
$$
\operatorname{Spec}(\widehat\Sigma,\Delta^D)
=
\operatorname{Spec}_N(\Sigma,\Delta^D)\cup \operatorname{Spec}_D(\Sigma,\Delta^D),
\tag{6.5}
$$
and in particular,
$$
\lambda_1^D(\widehat\Sigma)
=
\min\left\{\lambda_{1,N}^D(\Sigma),\,\lambda_{1,D}^D(\Sigma)\right\}.
\tag{6.6}
$$
Combining (6.1) and (6.6), we obtain
$$
\lambda_{1,N}^D(\Sigma)\ge \frac K2,
\qquad
\lambda_{1,D}^D(\Sigma)\ge \frac K2.
$$
This proves Theorem 3.4.

### 6.2. Proof of Corollary 3.5

Assume $m=3$, and let $\gamma$ be the genus of $\Sigma$ and $b$ the number of boundary components. The double $\widehat\Sigma$ is closed of genus
$$
\widehat\gamma=2\gamma+b-1.
\tag{6.7}
$$
Also,
$$
m_{\widehat f,\widehat\Sigma}(\widehat\Sigma)
=
2\,m_{f,\Sigma}(\Sigma).
\tag{6.8}
$$
Applying Corollary 3.2 to $\widehat\Sigma$ gives
$$
m_{\widehat f,\widehat\Sigma}(\widehat\Sigma)
\le
\frac{16\pi}{K}(\widehat\gamma+1)e^{-\inf_\Sigma f+\frac12\sup_\Sigma f}.
\tag{6.9}
$$
Since
$$
\widehat\gamma+1=2\gamma+b,
\tag{6.10}
$$
we obtain from (6.8) and (6.9)
$$
m_{f,\Sigma}(\Sigma)
\le
\frac{8\pi}{K}(2\gamma+b)e^{-\inf_\Sigma f+\frac12\sup_\Sigma f}.
$$
This proves Corollary 3.5.

## 7. Remarks and further directions

The direct cut-open argument for free-boundary hypersurfaces is genuinely Dirichlet. It uses the vanishing of the trace on the lifted outer boundary faces and the vanishing of the hypersurface eigenfunction on $\partial\Sigma$ to eliminate the codimension-two boundary term. By contrast, the Neumann estimate still seems to require the reflective doubling argument.

The only analytic input in the free-boundary proof not reproduced in full detail is the corner-regularity theorem for the cut-open Dirichlet problem. This is standard rather than novel: the local geometry is the same orthogonal-corner geometry already used by Fraser-Li, and the requisite regularity is exactly the classical Dirichlet theory on sectionally smooth domains due to Agmon-Douglis-Nirenberg and Azzam. In particular, no new singular analysis is needed beyond identifying the correct cut-open geometry.

Several questions remain open.

1. Can the nonreflective free-boundary Neumann estimate be proved directly, without passing to the double?
2. Can the present cut-open argument be rewritten entirely in Li-Xia/Fujitani affine-connection notation, yielding a boundary and free-boundary theorem directly for affine connections?
3. What rigidity follows in the equality case $\lambda=K/2$? The Reilly identities suggest a warped-product or substatic model phenomenon.
4. To what extent can the boundary/domain estimate be combined with compactness arguments in the spirit of Cheng-Mejia-Zhou and Fujitani?

## References

[A1] A. Azzam, *On Dirichlet's problem for elliptic equations in sectionally smooth $n$-dimensional domains*, SIAM J. Math. Anal. **11** (1980), no. 2, 248-253.

[A2] A. Azzam, *On Dirichlet's problem for elliptic equations in sectionally smooth $n$-dimensional domains. II*, SIAM J. Math. Anal. **12** (1981), no. 2, 205-212.

[ADN] S. Agmon, A. Douglis, and L. Nirenberg, *Estimates near the boundary for solutions of elliptic partial differential equations satisfying general boundary conditions. I*, Comm. Pure Appl. Math. **12** (1959), 623-727.

[CMZ] Xu Cheng, Tito Mejia, and Detang Zhou, *Eigenvalue estimate and compactness for closed $f$-minimal surfaces*, Pacific J. Math. **271** (2014), no. 2, 347-367. arXiv:1210.8448.

[CW] H. I. Choi and A. N. Wang, *A first eigenvalue estimate for minimal hypersurfaces*, J. Differential Geom. **18** (1983), no. 3, 559-562.

[F1] Yasuaki Fujitani, *Choi-Wang inequality for affine connections*, arXiv:2507.00385.

[F2] Yasuaki Fujitani, *A Steklov eigenvalue estimate for affine connections and its application to substatic triples*, Anal. Math. Phys. **15** (2025), article no. 136. DOI: 10.1007/s13324-025-01135-w.

[FS] Yasuaki Fujitani and Yohei Sakurai, *Stability of weighted minimal hypersurfaces under a lower $1$-weighted Ricci curvature bound*, arXiv:2508.20405.

[FL] Ailana Fraser and Martin Man-chun Li, *Compactness of the space of embedded minimal surfaces with free boundary in three-manifolds with nonnegative Ricci curvature and convex boundary*, J. Differential Geom. **96** (2014), no. 2, 183-200. arXiv:1204.6127.

[LW] Haizhong Li and Xiangdong Wei, *$f$-minimal surface and manifold with positive $m$-Bakry-Emery Ricci curvature*, J. Geom. Anal. **25** (2015), no. 1, 421-435. arXiv:1209.0895.

[LX] Jiakun Li and Chao Xia, *An integral formula for affine connections*, J. Geom. Anal. **27** (2017), no. 3, 2539-2556.

[YY] Paul C. Yang and Shing-Tung Yau, *Eigenvalues of the Laplacian of compact Riemann surfaces and minimal submanifolds*, Ann. Scuola Norm. Sup. Pisa Cl. Sci. (4) **7** (1980), no. 1, 55-63.



