## Method Card
- **Short tag:** local Rényi rank selection
- **Full name:** Local renormalized Rényi transfer for coupled axial blocks.
- **Input setting:** The coupled axial neutral system for rescaled mean curvature flow near a generalized cylinder, with matrix mode A, vector mode b, and rough late-time error bounds.
- **New object / driver:** The local renormalization M = A - (1/(2 rho)) bb^T together with the shifted Rényi-defect package.
- **Obstruction resolved:** The axial vector coupling prevents direct application of the Riccati--Rényi rank theorem to the raw matrix mode A.
- **Expected outputs:** Shifted Rényi monotonicity and rank selection for the renormalized system, plus a supercubic comparison that transfers the finite-scale rank criterion back to the raw matrix A.
- **Transfer targets:** Refined cylindrical blow-up analysis and other coupled center-mode systems where a lower-order interaction must be renormalized away before applying matrix monotonicity tools.
- **Main technical risk:** The last transfer from M back to A depends on sharp suppression of the vector mode and on very precise comparison errors.
- **Mechanism type:** defect control, monotonicity, spectral cancellation
- **Tags:** local-renormalization, Rényi-rank, coupled-axial, Riccati, cylindrical-blowup, matrix-monotonicity
- **Method link:** ../methods/local_renormalized_renyi_transfer.md

**Condensation.** The new viewpoint is that the coupled axial block should first be renormalized locally, replacing the raw matrix mode by M = A - (1/(2 rho)) bb^T before any Rényi-rank analysis is attempted. This overcomes the obstruction that the vector coupling inserts a persistent lower-order forcing into the A equation and breaks the direct Riccati picture. The operative mechanism is to prove that the renormalized variable M satisfies a cubic-accurate Riccati law, apply the shifted Rényi theorem there, and then compare the shifted defects of M and A using the sharper axial decay. If it works, it supplies a complete route from the coupled geometric system to finite-scale rank detection for the original raw matrix mode.

# Quadratic leakage, local renormalization, and Rényi rank selection on cylindrical neutral blocks


**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

## Abstract

We study the axial neutral block of the rescaled mean curvature flow near the generalized cylinder
$$
C_{n,k}=S^{n-k}(\rho)\times\mathbb R^k, \qquad \rho=\sqrt{2(n-k)}.
$$
Three mechanism-level contributions are established.

First, we prove that the $\theta$-independent neutral block carries a closed Gaussian second-chaos algebra: for
$$
p_A(y):=y^\top Ay-2\operatorname{tr}A,
\qquad
A\in\operatorname{Sym}(k),
$$
the neutral projection satisfies
$$
\Pi_0(p_Ap_B)=4p_{AB+BA}.
$$
This yields the coordinate-free center Riccati law
$$
A'=-\frac{4}{\rho}A^2
$$
on the exact model. We also prove the exact quadratic leakage decomposition
$$
Q_2(p_A)=-\frac{4}{\rho}\operatorname{tr}(A^2)\cdot 1-\frac{4}{\rho}p_{A^2}-\frac{1}{2\rho}q_A,
\qquad
Lq_A=-q_A,
$$
which identifies the quartic stable graph $\Gamma(A)=-(2\rho)^{-1}q_A$.

Second, we prove a matrix theorem for cubic-accurate perturbed Riccati flows. If a symmetric matrix path $N(\tau)$ satisfies
$$
N'=-\frac{4}{\rho}N^2+O(\tau^{-3}),
\qquad
|N(\tau)|\lesssim\tau^{-1},
$$
then after the sharp positivity-restoring shift
$$
B_N(\tau):=N(\tau)+K\tau^{-2}I_k
$$
the corrected Rényi defects
$$
\widetilde{\mathcal R}_p^N(\tau)
=
\mathcal R_p(B_N(\tau))+C_p\tau^{-1}
$$
are nonincreasing, the asymptotic active rank is selected, and a one-scale strict inequality forces full rank.

Third, we prove that the same shifted Rényi package already applies to the coupled axial system
$$
A'=-\frac{4}{\rho}A^2-\frac{1}{2\rho}bb^\top+E_A,
\qquad
b'+\frac12 b=-\frac{4}{\rho}Ab+F_b,
$$
under the rough late bounds $|A|+|b|\lesssim\tau^{-1}$, $E_A=O(\tau^{-3})$, and $F_b=O(\tau^{-2})$. The key step is the local renormalization
$$
M:=A-\frac{1}{2\rho}bb^\top,
$$
which obeys
$$
M'=-\frac{4}{\rho}M^2+O(\tau^{-3}).
$$
Hence the shifted Rényi theorem transfers directly to $M$. After the sharper axial suppression $|b|=O(\tau^{-3})$, we compare the raw and renormalized shifted matrices and prove
$$
\mathcal R_p\!\bigl(A+K\tau^{-2}I\bigr)
=
\mathcal R_p\!\bigl(M+K\tau^{-2}I\bigr)
+
O(\tau^{-5}),
$$
so the raw-$A$ finite-scale criterion follows with a supercubic comparison margin. The paper therefore supplies a complete defect-to-rank mechanism:
$$
\text{Gaussian algebra}
\;\Longrightarrow\;
\text{quadratic leakage}
\;\Longrightarrow\;
\text{Riccati--Rényi theorem}
\;\Longrightarrow\;
\text{local renormalized transfer}
\;\Longrightarrow\;
\text{raw-matrix rank detection}.
$$

---

## 1. Introduction

### 1.1. Cylindrical neutral blocks and the rank problem

Let a rescaled mean curvature flow converge to the generalized cylinder
$$
C_{n,k}=S^{n-k}(\rho)\times\mathbb R^k,
\qquad
\rho=\sqrt{2(n-k)}.
$$
The rescaled graph equation over the fixed cylinder takes the form
$$
\partial_\tau u-L_{n,k}u=Q(u,\nabla u,\nabla^2u),
$$
where
$$
L_{n,k}u=\Delta u-\frac12\langle y,\nabla_yu\rangle+u
$$
is self-adjoint in the Gaussian space $L^2_\Phi(C_{n,k})$.

The low spectrum splits as
$$
L^2_\Phi(C_{n,k})=E_{<0}\oplus E_0\oplus E_{>0}.
$$
The block $E_{<0}$ consists of modulation directions, $E_{>0}$ is strictly stable, and the subtle information lives in the neutral block $E_0$. Once the decay-order package has shown that the asymptotic mass is concentrated in $E_0$, the remaining problem is internal to the neutral sector: how does one distinguish a fully active cylindrical branch from a partially active one?

For the $\theta$-independent axial part of $E_0$, the natural coordinates are symmetric matrices:
$$
p_A(y):=y^\top Ay-2\operatorname{tr}A,
\qquad
A\in\operatorname{Sym}(k).
$$
The discrete datum of interest is the **active rank**: the number of axial directions that survive at order $\tau^{-1}$ in the leading quadratic profile. Standard decay-order quantities become blind at exactly this stage. The point of the present paper is that the neutral block admits a new coordinate-free mechanism which continues to detect rank after coarse decay information has saturated.

### 1.2. The mechanism

The paper has one central spine.

1. **Gaussian second-chaos algebra.** The axial neutral block is not just a list of coefficients; it is a closed algebra on $\operatorname{Sym}(k)$:
   $$
   \Pi_0(p_Ap_B)=4p_{AB+BA}.
   $$
   This closes the neutral quadratic projection and yields the center Riccati law.

2. **Quadratic leakage and corrected center-stable object.** A pure neutral mode does not stay in the neutral sector under the quadratic nonlinearity. Instead,
   $$
   Q_2(p_A)
   =
   -\frac{4}{\rho}\operatorname{tr}(A^2)\cdot 1
   -\frac{4}{\rho}p_{A^2}
   -\frac{1}{2\rho}q_A,
   \qquad
   Lq_A=-q_A.
   $$
   Thus the correct quadratically corrected object is
   $$
   p_A+\Gamma(A),
   \qquad
   \Gamma(A):=-\frac{1}{2\rho}q_A.
   $$

3. **Shifted Rényi theorem for perturbed Riccati flows.** Once a symmetric matrix path satisfies
   $$
   N'=-\frac{4}{\rho}N^2+O(\tau^{-3}),
   \qquad
   |N(\tau)|\lesssim\tau^{-1},
   $$
   the sharp shift $K\tau^{-2}I$ restores positivity, the Rényi defects of the shifted matrix become corrected almost-monotone, and a finite-scale strict inequality detects full rank.

4. **Local renormalization of the coupled axial defect.** In the coupled late system
   $$
   A'=-\frac{4}{\rho}A^2-\frac{1}{2\rho}bb^\top+E_A,
   \qquad
   b'+\frac12 b=-\frac{4}{\rho}Ab+F_b,
   $$
   the raw defect $-(2\rho)^{-1}bb^\top$ is exactly absorbed by the local renormalized matrix
   $$
   M=A-\frac{1}{2\rho}bb^\top.
   $$
   Under only the rough bounds $|A|+|b|\lesssim\tau^{-1}$, $E_A=O(\tau^{-3})$, and $F_b=O(\tau^{-2})$, the renormalized matrix already satisfies the cubic-accurate Riccati law. The shifted Rényi theorem therefore applies to $M$ before one has proved the sharper decay $b=O(\tau^{-3})$.

5. **Comparison back to the raw matrix.** After the sharper axial suppression $|b|=O(\tau^{-3})$, the raw and renormalized shifted Rényi defects differ by $O(\tau^{-5})$. This gives an honest raw-$A$ criterion without pretending that a direct pre-renormalized monotonicity theorem holds under the rougher bounds.

### 1.3. Scope and imported input

The paper is self-contained at the level of the neutral Gaussian algebra, the abstract Riccati--Rényi theorem, the local renormalization argument, and the raw-versus-renormalized comparison. It does **not** reprove the large-scale geometric inputs from the surrounding cylindrical-singularity theory. In particular, we use as imported input whichever theorem package yields one of the following late-time reductions:

- a center/remainder hierarchy
  $$
  u(\tau)=p_{A(\tau)}+w(\tau),
  \qquad
  |A(\tau)|\lesssim\tau^{-1},
  \qquad
  \|w(\tau)\|_{L^2_\Phi}\lesssim\tau^{-2},
  $$
  which feeds directly into the abstract Riccati theorem through the exact projection identity; or

- a coupled low-mode system for $(A,b)$ of the form stated in Hypothesis 2.1 below, which feeds into the same theorem after local renormalization.

The unresolved point is not the matrix mechanism, nor the leakage algebra, nor the renormalization identity. The unresolved point is the strongest intrinsic geometric route: deriving the cubic-accurate center law directly from the weakest current weak-flow package without importing an additional long-time gauge theorem.

### 1.4. Organization

Section 2 records the setup and the standing coupled late system. Section 3 proves the structural identities on the neutral block. Section 4 proves the shifted Rényi theorem for cubic-accurate perturbed Riccati flows. Section 5 applies that theorem to the local renormalization of the coupled axial system and records a coupled corrected functional. Section 6 compares the raw and renormalized shifted matrices after sharper axial suppression. Section 7 explains how the matrix results are deployed on cylindrical branches. Appendix A records the exact raw-$A$ defect formula and the obstruction to direct pre-renormalized monotonicity.

---

## 2. Setup and standing hypotheses

### 2.1. Cylinder and spectral notation

Fix integers $1\le k\le n-1$ and set
$$
\rho:=\sqrt{2(n-k)}.
$$
The linearized operator $L_{n,k}$ is self-adjoint in the Gaussian space $L^2_\Phi(C_{n,k})$, where
$$
\Phi(y)=(4\pi)^{-k/2}e^{-|y|^2/4}.
$$
We use the low spectral decomposition
$$
E_{-1}=\operatorname{span}\{1\},
\qquad
E_{-1/2}=\operatorname{span}\{\theta_\alpha,\,y_j\},
$$
$$
E_0=\operatorname{span}\{\theta_\alpha y_j,\,y_iy_j,\,y_i^2-2\},
\qquad
E_{<0}=E_{-1}\oplus E_{-1/2}.
$$
The $\theta$-independent part of $E_0$ is parameterized by
$$
p_A(y):=y^\top Ay-2\operatorname{tr}A,
\qquad
A\in\operatorname{Sym}(k).
$$

### 2.2. Quadratic term on the axial neutral block

The leading quadratic term of the graph equation is
$$
Q_2(u)
=
-\frac{1}{2\rho}\Bigl(u^2+4u\Delta_\theta u+2|\nabla_\theta u|^2\Bigr).
$$
For $\theta$-independent functions $u=p_A$, the angular terms vanish, so
$$
Q_2(p_A)=-\frac{1}{2\rho}p_A^2.
$$

### 2.3. Standing coupled late system

We write
$$
c:=\frac{4}{\rho},
\qquad
d:=\frac{1}{2\rho}.
$$
Throughout Sections 5 and 6 we assume the following late-time coupled system.

### Hypothesis 2.1 (coupled axial late system)

Let $A(\tau)\in\operatorname{Sym}(k)$ and $b(\tau)\in\mathbb R^k$ be defined on $[\tau_0,\infty)$ and satisfy
$$
A'=-cA^2-d\,bb^\top+E_A,
\qquad
b'+\frac12 b=-cAb+F_b,
$$
together with
$$
|A(\tau)|+|b(\tau)|\le C_0\tau^{-1},
\qquad
|E_A(\tau)|\le C_1\tau^{-3},
\qquad
|F_b(\tau)|\le C_2\tau^{-2}
$$
for all $\tau\ge\tau_0$.

Later, for the raw comparison, we will assume the stronger axial suppression
$$
|b(\tau)|\le C_3\tau^{-3}.
$$

---

## 3. Structural identities on the axial neutral block

### 3.1. Gaussian second-chaos product law

### Proposition 3.1
For $A,B\in\operatorname{Sym}(k)$,
$$
\Pi_0(p_Ap_B)=4p_{AB+BA}.
$$
In particular,
$$
\Pi_0(p_A^2)=8p_{A^2}.
$$

#### Proof
Write
$$
p_A(y)=\sum_{i,j}A_{ij}(y_iy_j-2\delta_{ij}),
\qquad
p_B(y)=\sum_{p,q}B_{pq}(y_py_q-2\delta_{pq}).
$$
For the Gaussian measure with covariance $2I_k$, the Wick product identity gives
$$
\Pi_0\Bigl((y_iy_j-2\delta_{ij})(y_py_q-2\delta_{pq})\Bigr)
=
2\Bigl[
\delta_{ip}(y_jy_q-2\delta_{jq})
+\delta_{iq}(y_jy_p-2\delta_{jp})
$$
$$
\qquad\qquad
+\delta_{jp}(y_iy_q-2\delta_{iq})
+\delta_{jq}(y_iy_p-2\delta_{ip})
\Bigr].
$$
Summing against $A_{ij}B_{pq}$ yields
$$
\Pi_0(p_Ap_B)
=
2p_{AB}+2p_{AB^\top}+2p_{A^\top B}+2p_{A^\top B^\top}.
$$
Since $A$ and $B$ are symmetric, this reduces to $4p_{AB+BA}$. The special case $B=A$ gives $\Pi_0(p_A^2)=8p_{A^2}$. ∎

### 3.2. Exact center law

### Corollary 3.2
On the exact axial neutral model,
$$
\Pi_0Q_2(p_A)=-\frac{4}{\rho}p_{A^2}.
$$
Under the identification $A\leftrightarrow p_A$, the induced matrix law is
$$
A'=-\frac{4}{\rho}A^2.
$$

#### Proof
Since $p_A$ is $\theta$-independent,
$$
Q_2(p_A)=-\frac{1}{2\rho}p_A^2.
$$
Projecting with Proposition 3.1 gives
$$
\Pi_0Q_2(p_A)
=
-\frac{1}{2\rho}\Pi_0(p_A^2)
=
-\frac{1}{2\rho}\cdot 8p_{A^2}
=
-\frac{4}{\rho}p_{A^2}.
$$
This is exactly the Riccati law for the matrix coefficient. ∎

### 3.3. Exact quadratic leakage decomposition

### Proposition 3.3
Define
$$
q_A:=p_A^2-8\operatorname{tr}(A^2)-8p_{A^2}.
$$
Then
$$
q_A\in E_{>0},
\qquad
Lq_A=-q_A,
$$
and
$$
Q_2(p_A)
=
-\frac{4}{\rho}\operatorname{tr}(A^2)\cdot 1
-\frac{4}{\rho}p_{A^2}
-\frac{1}{2\rho}q_A.
$$

#### Proof
Since $Q_2(p_A)=-(2\rho)^{-1}p_A^2$, it is enough to decompose $p_A^2$ spectrally. Let $Y\sim N(0,2I_k)$. A direct Gaussian computation gives
$$
\mathbb E[p_A(Y)^2]=8\operatorname{tr}(A^2),
$$
so the constant projection of $p_A^2$ is $8\operatorname{tr}(A^2)\cdot 1$. The neutral projection is $8p_{A^2}$ by Proposition 3.1. Subtracting those two components defines $q_A$. It is orthogonal to $E_{<0}\oplus E_0$, has polynomial degree $4$, and therefore belongs to the first stable Hermite sector, where $Lq_A=-q_A$. Substituting the decomposition of $p_A^2$ into $Q_2(p_A)=-(2\rho)^{-1}p_A^2$ yields the formula. ∎

### Remark 3.4 (corrected center-stable graph)
The leakage formula identifies the explicit quartic stable graph
$$
\Gamma(A):=-\frac{1}{2\rho}q_A.
$$
Because $Lq_A=-q_A$, we have
$$
L\Gamma(A)=-\Gamma(A)=-\Pi_{>0}Q_2(p_A).
$$
Thus the quadratically corrected center-stable object is
$$
p_A+\Gamma(A),
$$
not the bare neutral mode $p_A$. This is the mechanism-level reason the stable block is expected to be one power of $\tau$ smaller than the neutral block.

### Remark 3.5 (center-model Rényi monotonicity)
On the exact positive model $A'=-cA^2$ with $A\ge0$, the Rényi defects of the normalized eigenvalue distribution are exactly monotone. The perturbed theorem in Section 4 may be viewed as a shifted, positivity-restored, and error-tolerant version of that center-model identity.

---

## 4. Shifted Rényi theorem for cubic-accurate perturbed Riccati flows

Throughout this section, $N(\tau)$ is a $C^1$ symmetric $k\times k$ matrix path on $[\tau_0,\infty)$ satisfying
$$
N'=-cN^2+R,
\qquad
|N(\tau)|\le C_0\tau^{-1},
\qquad
|R(\tau)|\le C_1\tau^{-3},
$$
with $c=4/\rho$. We assume the branch is **not fully degenerate**, meaning that at least one eigenvalue of $N(\tau)$ is not $o(\tau^{-1})$.

For a positive definite matrix $B$, define
$$
\mathcal R_p(B)
:=
\frac{1}{p-1}
\log\!\Bigl(
k^{p-1}\frac{\operatorname{tr}(B^p)}{\operatorname{tr}(B)^p}
\Bigr),
\qquad
p>1.
$$

### Theorem 4.1 (shifted Rényi theorem)
There exist $K>0$, $\tau_1\ge\tau_0$, and for every $p>1$ a constant $C_p>0$ such that, with
$$
B_N(\tau):=N(\tau)+K\tau^{-2}I_k,
$$
one has for all $\tau\ge\tau_1$:

1. $B_N(\tau)>0$.
2. The corrected Rényi defect
   $$
   \widetilde{\mathcal R}_p^N(\tau)
   :=
   \mathcal R_p(B_N(\tau))+C_p\tau^{-1}
   $$
   is nonincreasing.
3. There exists an integer $r\in\{1,\dots,k\}$ such that
   $$
   \mathcal R_p(B_N(\tau))\longrightarrow \log\frac{k}{r}
   $$
   for every $p>1$.
4. If
   $$
   \widetilde{\mathcal R}_p^N(\tau_*)
   <
   \log\frac{k}{k-1}
   $$
   at some $\tau_*\ge\tau_1$, then $r=k$.

#### Proof

We divide the argument into six steps.

##### Step 1. Scalar eigenvalue equations
Let
$$
\lambda_1(\tau)\le\cdots\le\lambda_k(\tau)
$$
be the ordered eigenvalues of $N(\tau)$. Since $N$ is $C^1$ and symmetric, the $\lambda_i$ are absolutely continuous, and at almost every differentiability point
$$
\lambda_i'=-c\lambda_i^2+e_i,
\qquad
|e_i|\le C_1\tau^{-3}.
$$

##### Step 2. Quantitative lower bound for negative eigenvalues
For every $i$ there exists $C>0$ such that
$$
\lambda_i(\tau)\ge -C\tau^{-2}
$$
for all large $\tau$.

Indeed, $|\lambda_i(\tau)|\le C_0\tau^{-1}$ implies $\lambda_i(\tau)\to0$, so integrating the scalar equation from $\tau$ to $\infty$ gives
$$
\lambda_i(\tau)
=
c\int_\tau^\infty \lambda_i(s)^2\,ds
-
\int_\tau^\infty e_i(s)\,ds
\ge
-
\int_\tau^\infty |e_i(s)|\,ds
\ge
-C\tau^{-2}.
$$

##### Step 3. Active/inactive dichotomy
Set
$$
\mu_i(\tau):=c\tau\lambda_i(\tau).
$$
Then
$$
\mu_i'
=
\frac{\mu_i(1-\mu_i)}{\tau}+g_i(\tau),
\qquad
|g_i(\tau)|\le C\tau^{-2}.
$$
Fix $\delta\in(0,\tfrac14)$. For large $\tau$, the perturbation obeys $|g_i(\tau)|\le \delta/(2\tau)$. If $\mu_i\in[2\delta,1-2\delta]$, then $\mu_i(1-\mu_i)\ge\delta$, hence
$$
\mu_i' \ge \frac{\delta}{2\tau}>0.
$$
If $\mu_i\in[1+2\delta,M]$, then $\mu_i(1-\mu_i)\le -2\delta$, hence
$$
\mu_i' \le -\frac{\delta}{\tau}<0.
$$
Therefore $\mu_i$ cannot have cluster points in $(0,1)$ or in $(1,\infty)$. Since Step 2 gives $\mu_i(\tau)\ge -C\tau^{-1}$ for large $\tau$, negative excursions vanish asymptotically. Thus
$$
\ell_i:=\lim_{\tau\to\infty}\mu_i(\tau)
$$
exists and belongs to $\{0,1\}$.

Let
$$
r:=\#\{i:\ell_i=1\}.
$$
The not-fully-degenerate hypothesis implies $r\ge1$. Moreover,
$$
\lambda_i(\tau)=\frac{\ell_i}{c\tau}+o(\tau^{-1}),
$$
so
$$
\operatorname{tr}N(\tau)=\frac{r}{c\tau}+o(\tau^{-1}),
\qquad
\operatorname{tr}(N(\tau)^p)=\frac{r}{c^p\tau^p}+o(\tau^{-p}).
$$

##### Step 4. Positivity-restoring shift
Choose $K>0$ so large that Step 2 implies
$$
B_N(\tau)=N(\tau)+K\tau^{-2}I_k>0
$$
for all $\tau\ge\tau_1$.

Since
$$
N=B_N-K\tau^{-2}I,
$$
we have
$$
N^2=B_N^2-2K\tau^{-2}B_N+K^2\tau^{-4}I.
$$
Using $N'=-cN^2+R$ and $(K\tau^{-2})'=-2K\tau^{-3}$,
$$
B_N'=-cB_N^2+F,
$$
where
$$
F:=2cK\tau^{-2}B_N-cK^2\tau^{-4}I-2K\tau^{-3}I+R.
$$
Because $|B_N(\tau)|\lesssim\tau^{-1}$, we obtain
$$
|F(\tau)|\lesssim\tau^{-3}.
$$

##### Step 5. Derivative of normalized moments
For $p>1$, define
$$
S_p(\tau):=\operatorname{tr}(B_N(\tau)^p),
\qquad
\sigma_p(\tau):=\frac{S_p(\tau)}{S_1(\tau)^p}.
$$
Since $B_N>0$,
$$
S_p'
=
p\operatorname{tr}(B_N^{p-1}B_N')
=
-cpS_{p+1}+p\operatorname{tr}(B_N^{p-1}F).
$$
Therefore
$$
(\log\sigma_p)'
=
-cp\Bigl(\frac{S_{p+1}}{S_p}-\frac{S_2}{S_1}\Bigr)
+
p\frac{\operatorname{tr}(B_N^{p-1}F)}{S_p}
-
p\frac{\operatorname{tr}F}{S_1}.
$$

Write the eigenvalues of $B_N$ as $b_1,\dots,b_k>0$ and set
$$
w_i:=\frac{b_i}{\sum_j b_j}.
$$
Then
$$
\frac{S_{p+1}}{S_p}-\frac{S_2}{S_1}
=
\frac{S_1}{\sigma_p}\bigl(\sigma_{p+1}-\sigma_2\sigma_p\bigr),
$$
and the standard positivity identity gives
$$
\sigma_{p+1}-\sigma_2\sigma_p
=
\frac12\sum_{i,j}w_iw_j(w_i^{p-1}-w_j^{p-1})(w_i-w_j)\ge0.
$$

For the error terms, Hölder yields
$$
S_{p-1}\le k^{1/p}S_p^{(p-1)/p}.
$$
Hence
$$
|\operatorname{tr}(B_N^{p-1}F)|
\le
|F|\,S_{p-1}
\le
C\tau^{-3}k^{1/p}S_p^{(p-1)/p}.
$$
Also, positivity gives
$$
S_p\ge k^{1-p}S_1^p,
$$
while Step 3 and positivity imply
$$
S_1=\operatorname{tr}(B_N)\ge c_0\tau^{-1}
$$
for large $\tau$. Therefore $S_p^{-1/p}\lesssim\tau$, and so
$$
\frac{|\operatorname{tr}(B_N^{p-1}F)|}{S_p}\lesssim\tau^{-2}.
$$
Similarly,
$$
\frac{|\operatorname{tr}F|}{S_1}\lesssim\tau^{-2}.
$$
Consequently,
$$
\mathcal R_p(B_N)' \le C_p\tau^{-2}
$$
for all large $\tau$, where
$$
\mathcal R_p(B_N)=\frac{1}{p-1}\log\!\bigl(k^{p-1}\sigma_p\bigr).
$$
Choosing $C_p$ larger if necessary and defining
$$
\widetilde{\mathcal R}_p^N(\tau)
=
\mathcal R_p(B_N(\tau))+C_p\tau^{-1},
$$
we obtain
$$
\bigl(\widetilde{\mathcal R}_p^N\bigr)'(\tau)
=
\mathcal R_p(B_N)'(\tau)-C_p\tau^{-2}
\le0.
$$

##### Step 6. Rank limit and finite-scale criterion
By Step 3,
$$
b_i(\tau)=\frac{\ell_i}{c\tau}+o(\tau^{-1}),
$$
so
$$
\sigma_p(\tau)=r^{1-p}+o(1).
$$
Hence
$$
\mathcal R_p(B_N(\tau))\longrightarrow \log\frac{k}{r}.
$$
This proves item (3).

Finally, if
$$
\widetilde{\mathcal R}_p^N(\tau_*)<\log\frac{k}{k-1}
$$
at some $\tau_*\ge\tau_1$, then monotonicity gives
$$
\lim_{\tau\to\infty}\widetilde{\mathcal R}_p^N(\tau)
\le
\widetilde{\mathcal R}_p^N(\tau_*).
$$
But the correction $C_p\tau^{-1}$ tends to $0$, so
$$
\lim_{\tau\to\infty}\widetilde{\mathcal R}_p^N(\tau)=\log\frac{k}{r}.
$$
If $r\le k-1$, then $\log(k/r)\ge\log(k/(k-1))$, contradiction. Thus $r=k$. ∎

### Corollary 4.2 (quadratic threshold)
Under the hypotheses of Theorem 4.1,
$$
\widetilde{\mathcal D}_{2,k}^N(\tau)
:=
\frac{\operatorname{tr}(B_N(\tau)^2)}{\operatorname{tr}(B_N(\tau))^2}
-\frac{1}{k}
+\frac{\widetilde C_2}{\tau}
$$
is nonincreasing for suitable $\widetilde C_2$, and
$$
\widetilde{\mathcal D}_{2,k}^N(\tau_*)
<
\frac{1}{k(k-1)}
\quad\Longrightarrow\quad
r=k.
$$

#### Proof
Use the identity
$$
\mathcal R_2(B)=\log\!\Bigl(k\,\frac{\operatorname{tr}(B^2)}{\operatorname{tr}(B)^2}\Bigr)
=
\log\bigl(1+k\mathcal D_{2,k}(B)\bigr)
$$
and apply Theorem 4.1 with $p=2$. ∎

---

## 5. The coupled axial system and local renormalization

In this section we assume Hypothesis 2.1. Set
$$
G(\tau):=b(\tau)b(\tau)^\top.
$$

### Proposition 5.1 (exact renormalized matrix law)
Define
$$
M(\tau):=A(\tau)-dG(\tau)=A(\tau)-\frac{1}{2\rho}b(\tau)b(\tau)^\top.
$$
Then
$$
M'=-cM^2+\widehat E,
$$
where
$$
\widehat E
=
E_A-d(F_bb^\top+bF_b^\top)+\frac{1}{\rho^3}G^2.
$$

#### Proof
Differentiate $G=bb^\top$:
$$
G'=b'b^\top+bb'^\top.
$$
Using
$$
b'+\frac12 b=-cAb+F_b,
$$
we obtain
$$
G'=-G-c(AG+GA)+F_bb^\top+bF_b^\top.
$$
Therefore
$$
\begin{aligned}
M'
&=A'-dG'\\
&=\bigl(-cA^2-dG+E_A\bigr)-d\bigl(-G-c(AG+GA)+F_bb^\top+bF_b^\top\bigr)\\
&=-cA^2+cd(AG+GA)+E_A-d(F_bb^\top+bF_b^\top).
\end{aligned}
$$
On the other hand,
$$
-cM^2
=
-c(A-dG)^2
=
-cA^2+cd(AG+GA)-cd^2G^2.
$$
Since
$$
cd^2=\frac{4}{\rho}\cdot\frac{1}{4\rho^2}=\frac{1}{\rho^3},
$$
subtraction gives the stated formula. ∎

### Corollary 5.2 (cubic-accurate Riccati law for the renormalized matrix)
Under Hypothesis 2.1,
$$
M'=-cM^2+O(\tau^{-3}),
\qquad
|M(\tau)|\lesssim\tau^{-1}.
$$
Moreover, if the underlying branch is not fully degenerate for $A$, then it is also not fully degenerate for $M$.

#### Proof
From Proposition 5.1 and Hypothesis 2.1,
$$
|E_A|\lesssim\tau^{-3},
\qquad
|F_bb^\top+bF_b^\top|\lesssim\tau^{-3},
\qquad
|G^2|\lesssim|b|^4\lesssim\tau^{-4},
$$
so $\widehat E=O(\tau^{-3})$. Also,
$$
|M|\le |A|+d|G|\lesssim\tau^{-1}+\tau^{-2}\lesssim\tau^{-1}.
$$
Finally,
$$
A-M=dG,
\qquad
|dG|\lesssim\tau^{-2},
$$
so Weyl's inequality gives
$$
|\lambda_i(A)-\lambda_i(M)|\lesssim\tau^{-2}.
$$
Thus any eigenvalue of $A$ that is not $o(\tau^{-1})$ yields an eigenvalue of $M$ with the same property. ∎

### Proposition 5.3 (corrected local $h_1$ energy)
There exist $\tau_2\ge\tau_0$ and $C_b>0$ such that
$$
\mathcal B(\tau):=|b(\tau)|^2+C_b\tau^{-3}
$$
is nonincreasing on $[\tau_2,\infty)$.

#### Proof
Differentiate:
$$
\frac{d}{d\tau}|b|^2=2\langle b',b\rangle.
$$
Using
$$
b'+\frac12 b=-cAb+F_b,
$$
we find
$$
(|b|^2)'=-|b|^2-2c\langle Ab,b\rangle+2\langle F_b,b\rangle.
$$
Since $|A(\tau)|\lesssim\tau^{-1}$, after enlarging $\tau_2$ we may assume
$$
2c|\langle Ab,b\rangle|\le \frac14|b|^2
$$
for all $\tau\ge\tau_2$. By Young's inequality,
$$
2|\langle F_b,b\rangle|
\le
\frac14|b|^2+C|F_b|^2
\le
\frac14|b|^2+C\tau^{-4}.
$$
Hence
$$
(|b|^2)'+\frac12|b|^2\le C\tau^{-4}.
$$
Therefore
$$
\mathcal B'(\tau)
=
(|b|^2)'-3C_b\tau^{-4}
\le
-\frac12|b|^2+(C-3C_b)\tau^{-4}.
$$
Choosing $C_b\ge C$ gives $\mathcal B'(\tau)\le0$ on $[\tau_2,\infty)$. ∎

### Theorem 5.4 (shifted Rényi transfer to the renormalized matrix)
Assume Hypothesis 2.1 and suppose the branch is not fully degenerate for $A$. Then there exist $K>0$, $\tau_1\ge\tau_0$, and for every $p>1$ a constant $C_p>0$ such that, with
$$
B_M(\tau):=M(\tau)+K\tau^{-2}I_k,
$$
the following hold for all $\tau\ge\tau_1$:

1. $B_M(\tau)>0$.
2. The corrected Rényi defect
   $$
   \widetilde{\mathcal R}_p^M(\tau)
   :=
   \mathcal R_p(B_M(\tau))+C_p\tau^{-1}
   $$
   is nonincreasing.
3. There exists $r\in\{1,\dots,k\}$ such that
   $$
   \mathcal R_p(B_M(\tau))\longrightarrow\log\frac{k}{r}
   $$
   for every $p>1$.
4. If
   $$
   \widetilde{\mathcal R}_p^M(\tau_*)<\log\frac{k}{k-1}
   $$
   at some $\tau_*\ge\tau_1$, then $r=k$.

#### Proof
By Corollary 5.2, $M$ satisfies the hypotheses of Theorem 4.1. Apply Theorem 4.1 with $N=M$. ∎

### Theorem 5.5 (coupled corrected functional)
Assume Hypothesis 2.1, the not-fully-degenerate condition for $A$, and fix $p>1$ and $\lambda>0$. After enlarging $\tau_1$ if necessary, the functional
$$
\mathscr R_{p,\lambda}(\tau)
:=
\widetilde{\mathcal R}_p^M(\tau)
+
\lambda\mathcal B(\tau)
$$
is nonincreasing on $[\tau_1,\infty)$, where
$$
\mathcal B(\tau)=|b(\tau)|^2+C_b\tau^{-3}
$$
is the quantity from Proposition 5.3. In particular,
$$
\lim_{\tau\to\infty}\mathscr R_{p,\lambda}(\tau)=\log\frac{k}{r}.
$$

#### Proof
Theorem 5.4 shows that $\widetilde{\mathcal R}_p^M$ is nonincreasing, and Proposition 5.3 shows that $\mathcal B$ is nonincreasing. Their weighted sum is therefore nonincreasing. Since $|b(\tau)|=O(\tau^{-1})$, we have $\mathcal B(\tau)\to0$, so the limit is the same as the limit in Theorem 5.4. ∎

---

## 6. Comparison with the raw matrix after sharper axial suppression

In this section we assume Hypothesis 2.1 and in addition
$$
|b(\tau)|\lesssim\tau^{-3}.
$$

### Proposition 6.1 (raw and renormalized shifted matrices)
For all large $\tau$,
$$
B_A(\tau):=A(\tau)+K\tau^{-2}I_k
$$
is positive definite and
$$
B_A(\tau)-B_M(\tau)=d\,G(\tau)=O(\tau^{-6}).
$$

#### Proof
By definition,
$$
B_A-B_M=A-M=dG.
$$
The sharper axial suppression gives
$$
|G|=|bb^\top|\lesssim\tau^{-6}.
$$
Also $G\ge0$, so
$$
B_A=B_M+dG\ge B_M>0
$$
for all large $\tau$, because $B_M$ is positive by Theorem 5.4. ∎

### Proposition 6.2 (comparison of shifted Rényi defects)
Assume in addition that the branch is not fully degenerate for $A$. Then for every $p>1$ there exist $\tau_3\ge\tau_1$ and $C_p'>0$ such that
$$
\bigl|\mathcal R_p(B_A(\tau))-\mathcal R_p(B_M(\tau))\bigr|
\le
C_p'\tau^{-5}
$$
for all $\tau\ge\tau_3$.

#### Proof
Fix $\tau\ge\tau_3$ and interpolate:
$$
B_t:=B_M+t(B_A-B_M)=B_M+tdG,
\qquad
0\le t\le1.
$$
Since $B_M>0$ and $dG\ge0$, every $B_t$ is positive definite.

For positive $B$ and symmetric $H$, the Fréchet derivative of $\mathcal R_p$ is
$$
D\mathcal R_p(B)[H]
=
\frac{p}{p-1}
\left(
\frac{\operatorname{tr}(B^{p-1}H)}{\operatorname{tr}(B^p)}
-
\frac{\operatorname{tr}H}{\operatorname{tr}B}
\right).
$$
Hence
$$
\mathcal R_p(B_A)-\mathcal R_p(B_M)
=
\int_0^1 D\mathcal R_p(B_t)[dG]\,dt.
$$
Now
$$
\operatorname{tr}(dG)=d|b|^2\lesssim\tau^{-6},
\qquad
\|B_t\|\lesssim\tau^{-1}.
$$
Therefore
$$
\operatorname{tr}(B_t^{p-1}dG)
\le
\|B_t\|^{p-1}\operatorname{tr}(dG)
\lesssim
\tau^{-(p-1)}\tau^{-6}.
$$
On a not-fully-degenerate branch,
$$
\operatorname{tr}(B_t)\ge \operatorname{tr}(B_M)\gtrsim\tau^{-1},
$$
and positivity implies
$$
\operatorname{tr}(B_t^p)\ge k^{1-p}\operatorname{tr}(B_t)^p\gtrsim\tau^{-p}.
$$
Hence
$$
\frac{\operatorname{tr}(B_t^{p-1}dG)}{\operatorname{tr}(B_t^p)}\lesssim\tau^{-5},
\qquad
\frac{\operatorname{tr}(dG)}{\operatorname{tr}(B_t)}\lesssim\tau^{-5}.
$$
The derivative bound is uniform in $t$, and integrating from $0$ to $1$ yields the claim. ∎

### Corollary 6.3 (raw-$A$ asymptotic rank limit)
Under the assumptions of Proposition 6.2,
$$
\mathcal R_p(B_A(\tau))\longrightarrow \log\frac{k}{r}
$$
for every $p>1$, where $r$ is the rank selected by Theorem 5.4.

#### Proof
By Proposition 6.2,
$$
\mathcal R_p(B_A(\tau))-\mathcal R_p(B_M(\tau))\to0.
$$
Now apply Theorem 5.4. ∎

### Corollary 6.4 (raw-$A$ finite-scale criterion with supercubic margin)
Under the assumptions of Proposition 6.2, there exists $C_p'>0$ such that if
$$
\mathcal R_p(B_A(\tau_*))+C_p\tau_*^{-1}+C_p'\tau_*^{-5}
<
\log\frac{k}{k-1}
$$
at some sufficiently large time $\tau_*$, then $r=k$.

#### Proof
By Proposition 6.2,
$$
\mathcal R_p(B_M(\tau_*))
\le
\mathcal R_p(B_A(\tau_*))+C_p'\tau_*^{-5}.
$$
Hence
$$
\widetilde{\mathcal R}_p^M(\tau_*)
=
\mathcal R_p(B_M(\tau_*))+C_p\tau_*^{-1}
\le
\mathcal R_p(B_A(\tau_*))+C_p\tau_*^{-1}+C_p'\tau_*^{-5}.
$$
If the right-hand side is below $\log(k/(k-1))$, Theorem 5.4 forces $r=k$. ∎

### Remark 6.5
Corollary 6.4 is a comparison theorem, not a direct monotonicity theorem for the raw matrix $A$ under the rough bound $|b|\lesssim\tau^{-1}$. The exact obstruction is recorded in Appendix A.

---

## 7. Geometric deployment on cylindrical branches

The results above are deliberately separated from the geometric source of the late-time matrix laws. This section records the two main deployment routes.

### 7.1. Direct route from a center/remainder hierarchy

The next proposition isolates the exact point where the Gaussian product law enters the geometric PDE.

### Proposition 7.1 (exact projection closes the center law)
Assume that along a late cylindrical branch one has a decomposition
$$
u(\tau)=p_{A(\tau)}+w(\tau)
$$
with
$$
|A(\tau)|\lesssim\tau^{-1},
\qquad
\|w(\tau)\|_{L^2_\Phi}\lesssim\tau^{-2},
$$
and with the modulation block removed. Then
$$
A'(\tau)=-\frac{4}{\rho}A(\tau)^2+O(\tau^{-3}).
$$

#### Proof
Project the rescaled graph equation
$$
\partial_\tau u-Lu=Q(u,\nabla u,\nabla^2u)
$$
to the axial neutral block. Since $Lp_A=0$,
$$
\partial_\tau p_{A(\tau)}=\Pi_0Q(p_A+w).
$$
Split
$$
\Pi_0Q(p_A+w)=\Pi_0Q_2(p_A)+\Pi_0\bigl(Q(p_A+w)-Q_2(p_A)\bigr).
$$
By Corollary 3.2,
$$
\Pi_0Q_2(p_A)=-\frac{4}{\rho}p_{A^2}.
$$
The remainder is controlled by standard tame estimates:
$$
\bigl|\Pi_0(Q(p_A+w)-Q_2(p_A))\bigr|
\lesssim
|A|\,\|w\|_{L^2_\Phi}
+
\|w\|_{L^2_\Phi}^2
+
|A|^3
=
O(\tau^{-3}).
$$
Translating back to the matrix coefficient yields the claim. ∎

### Corollary 7.2 (direct geometric route)
Whenever an external geometric theorem package provides the hierarchy required in Proposition 7.1 on a not-fully-degenerate branch, Theorem 4.1 applies directly to the raw matrix $A$. In particular, after the shift
$$
B_A(\tau)=A(\tau)+K\tau^{-2}I,
$$
the corrected Rényi defects are nonincreasing and the finite-scale strict inequality
$$
\mathcal R_p(B_A(\tau_*))+C_p\tau_*^{-1}
<
\log\frac{k}{k-1}
$$
forces full rank.

### 7.2. Coupled low-mode route and local renormalization

### Corollary 7.3 (renormalized geometric route)
Whenever an external geometric theorem package yields the coupled late system of Hypothesis 2.1 on a not-fully-degenerate branch, the renormalized matrix
$$
M=A-\frac{1}{2\rho}bb^\top
$$
already carries the full shifted Rényi package of Theorem 5.4 under only the rough forcing bound $F_b=O(\tau^{-2})$. If in addition the sharper axial suppression $|b|=O(\tau^{-3})$ is available, then Corollary 6.4 yields the raw-$A$ finite-scale criterion.

### Remark 7.4
The direct route and the renormalized route answer different structural questions.

- Proposition 7.1 shows that the exact neutral projection identity already suffices to recover the cubic-accurate center law from a center/remainder hierarchy.
- The renormalized route shows that even before the stronger axial suppression has been proved, the coupled defect can be absorbed locally and the same matrix theorem still applies.

Together they give a flexible theorem-level program: whichever geometric input is available, the rank-selection theorem can be reached either directly or after local renormalization.

---

## 8. Open problems

### 8.1. Intrinsic weak-flow closure
Derive the cubic-accurate center law
$$
A'=-\frac{4}{\rho}A^2+O(\tau^{-3})
$$
directly from the weakest current weak-flow cylindrical package, without importing an additional long-time gauge theorem.

### 8.2. Explicit corrected center manifold
Prove directly in the geometric flow that the non-neutral remainder satisfies
$$
w(\tau)=\Gamma(A(\tau))+O(\tau^{-3}),
\qquad
\Gamma(A)=-\frac{1}{2\rho}q_A.
$$
This would identify the corrected center manifold itself, not merely the matrix law it induces.

### 8.3. Comparison with other quadratic invariants
Relate the Rényi-defect description of the active rank to other matrix invariants used in long-time cylindrical asymptotics.

### 8.4. Portability
Abstract the mechanism
$$
\text{leakage identity}
\;+\;
\text{local renormalization}
\;+\;
\text{Rényi bridge}
$$
to other neck problems whose neutral block is a Gaussian second-chaos algebra.

---

## Appendix A. The direct raw-$A$ defect formula

This appendix records the exact defect that appears if one differentiates the shifted Rényi quantity before renormalization.

Fix $K>0$ and set
$$
B_A(\tau):=A(\tau)+K\tau^{-2}I.
$$
Suppose $A$ obeys the raw coupled law
$$
A'=-cA^2-d\,bb^\top+E_A.
$$

### Proposition A.1
For every $p>1$, the contribution of the defect term $-d\,bb^\top$ to
$$
\frac{d}{d\tau}\mathcal R_p(B_A(\tau))
$$
is exactly
$$
\Delta_{p,h_1}(\tau)
:=
\frac{pd}{p-1}
\left(
\frac{|b(\tau)|^2}{\operatorname{tr}B_A(\tau)}
-
\frac{b(\tau)^\top B_A(\tau)^{p-1}b(\tau)}{\operatorname{tr}(B_A(\tau)^p)}
\right).
$$

#### Proof
For positive $B$ and symmetric $H$,
$$
D\mathcal R_p(B)[H]
=
\frac{p}{p-1}
\left(
\frac{\operatorname{tr}(B^{p-1}H)}{\operatorname{tr}(B^p)}
-
\frac{\operatorname{tr}H}{\operatorname{tr}B}
\right).
$$
Apply this with $B=B_A(\tau)$ and $H=-d\,bb^\top$. Since
$$
\operatorname{tr}(bb^\top)=|b|^2,
\qquad
\operatorname{tr}(B_A^{p-1}bb^\top)=b^\top B_A^{p-1}b,
$$
the formula follows immediately. ∎

### Remark A.2
The term $\Delta_{p,h_1}$ is sign-indefinite. If $b$ is aligned with a weak eigendirection of $B_A$, the second term is small and $\Delta_{p,h_1}$ is positive. If $b$ is aligned with a strong eigendirection, the second term is dominant and $\Delta_{p,h_1}$ is negative. On a not-fully-degenerate branch one has $\operatorname{tr}B_A\sim\tau^{-1}$ and $\operatorname{tr}(B_A^p)\sim\tau^{-p}$, so under only the rough bound $|b|\lesssim\tau^{-1}$,
$$
\Delta_{p,h_1}(\tau)=O\!\bigl(\tau|b(\tau)|^2\bigr)=O(\tau^{-1}).
$$
This is too large to be absorbed by differentiating a scalar $h_1$ energy alone. That is the structural reason the local renormalization
$$
M=A-\frac{1}{2\rho}bb^\top
$$
is the correct object.

---

## References

1. A. Sun, Z. Wang, J. Xue, *Passing through nondegenerate singularities in mean curvature flows*.
2. A. Sun, J. Xue, *Generic mean curvature flows with cylindrical singularities*.
3. R. Bamler, Y. Lai, *Precise asymptotics near a generic singularity of mean curvature flow*.
