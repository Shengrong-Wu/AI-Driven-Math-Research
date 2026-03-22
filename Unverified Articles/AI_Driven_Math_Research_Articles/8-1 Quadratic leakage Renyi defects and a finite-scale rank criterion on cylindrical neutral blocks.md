## Method Card
- **Short tag:** Rényi rank leakage correction
- **Full name:** Quadratic-leakage corrected Rényi rank selection.
- **Input setting:** The neutral spectral block of rescaled mean curvature flow near a generalized cylinder, together with cubic-accurate perturbed Riccati dynamics for the axial quadratic mode.
- **New object / driver:** The exact Gaussian second-chaos algebra, the quartic stable graph Gamma(A), and the shifted corrected Rényi defects.
- **Obstruction resolved:** The bare neutral mode misses the stable quadratic leakage, and there was no theorem-level one-scale criterion forcing maximal asymptotic rank.
- **Expected outputs:** An explicit center Riccati law on the model, a quadratically corrected center-stable profile, monotone corrected Rényi defects, and a finite-scale inequality implying maximal rank.
- **Transfer targets:** Cylindrical singularity analysis in mean curvature flow and other center-stable spectral problems with quadratic leakage.
- **Main technical risk:** Turning the matrix theorem into a fully intrinsic flow theorem still requires a robust geometric derivation of the cubic-accurate center law.
- **Mechanism type:** defect control, monotonicity, spectral cancellation
- **Tags:** Rényi-defect, quadratic-leakage, Riccati, cylindrical-blowup, rank-selection, neutral-block
- **Method link:** ../methods/renyi_rank_leakage_correction.md

**Condensation.** The new viewpoint is that the neutral cylindrical block should be analyzed through a corrected center-stable object p_A + Gamma(A) rather than the bare quadratic mode. This overcomes the obstruction that quadratic leakage into the stable spectrum corrupts both the naive center law and any direct rank diagnostic built from A alone. The operative mechanism is an exact Gaussian product algebra, an explicit leakage decomposition that identifies the quartic graph, and a shifted Rényi-defect monotonicity theorem for cubic-accurate Riccati flows. If it works, it yields a one-scale criterion selecting maximal asymptotic rank and upgrades the neutral-block analysis from heuristic bookkeeping to a theorem-level defect-to-rank mechanism.

# Quadratic leakage, Rényi defects, and a finite-scale rank criterion on cylindrical neutral blocks

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_


## Abstract

We study the neutral spectral block of the rescaled mean curvature flow near the generalized cylinder $C_{n,k} = S^{n-k}(\rho) \times \mathbb{R}^k$, $\rho = \sqrt{2(n-k)}$. Three contributions are established.

First, we prove that the $\theta$-independent neutral block carries an explicit Gaussian second-chaos algebra: the neutral projection of the product of two axial quadratic modes $p_A$, $p_B$ satisfies the identity $\Pi_0(p_A p_B) = 4 p_{AB+BA}$. This yields the coordinate-free center Riccati law $A' = -(4/\rho) A^2$ on the exact model.

Second, we prove an exact quadratic leakage decomposition for the neutral mode forcing:
$$
Q_2(p_A) = -\frac{4}{\rho}\operatorname{tr}(A^2) \cdot 1 - \frac{4}{\rho} p_{A^2} - \frac{1}{2\rho} q_A, \qquad L q_A = -q_A,
$$
which identifies an explicit quartic stable graph $\Gamma(A) = -(1/2\rho) q_A$. The correct asymptotic center-stable object is therefore the quadratically corrected profile $p_A + \Gamma(A)$, not the bare neutral mode $p_A$.

Third, we prove a purely matrix-analytic theorem: for any $C^1$ symmetric-matrix trajectory satisfying the cubic-accurate perturbed Riccati law $A' = -(4/\rho) A^2 + O(\tau^{-3})$ with $|A(\tau)| \lesssim \tau^{-1}$, an isotropic shift $B(\tau) = A(\tau) + K\tau^{-2} I_k$ restores positivity, the corrected Rényi defects $\widetilde{\mathcal{R}}_p(\tau) = \mathcal{R}_p(B(\tau)) + C_p \tau^{-1}$ are nonincreasing, and a single finite-scale inequality $\widetilde{\mathcal{R}}_p(\tau_*) < \log(k/(k-1))$ forces the asymptotic rank to be maximal.

Applied to mean curvature flow, the cubic-accurate center law can be derived by combining the long-time gauge and mode-hierarchy theorem of Bamler–Lai with the exact projection identity proved here, closing the theorem-level program without using the 2022 bounded-domain normal form. The fully intrinsic derivation from the 2025 Sun–Wang–Xue package alone remains open.

---

## 1. Introduction

### 1.1. Context

Let a rescaled mean curvature flow converge to the generalized cylinder
$$
C_{n,k} = S^{n-k}(\rho) \times \mathbb{R}^k, \qquad \rho := \sqrt{2(n-k)}.
$$
The rescaled graph equation over the fixed cylinder takes the form
$$
\partial_\tau u - L_{n,k} u = Q(u, \nabla u, \nabla^2 u),
$$
where the linearization
$$
L_{n,k} u = \Delta u - \frac{1}{2}\langle y, \nabla_y u \rangle + u
$$
is self-adjoint in the Gaussian space $L^2_\Phi(C_{n,k})$. Its low spectrum decomposes as
$$
L^2_\Phi(C_{n,k}) = E_{<0} \oplus E_0 \oplus E_{>0},
$$
where $E_{<0}$ is the modulation block (spanned by constants and first-order harmonics), $E_0$ is the neutral block, and $E_{>0}$ is the strictly stable block with spectral gap
$$
\lambda_+ = \min\Big\{\frac{1}{2}, \frac{1}{n-k}\Big\} > 0.
$$

For readers coming from geometric analysis rather than this particular asymptotic theory, it is helpful to keep the following picture in mind. After Huisken rescaling, the cylinder is a stationary model and the linearized operator splits perturbations according to their dynamical role. The block $E_{<0}$ consists of directions produced by changing the reference cylinder by rigid motions or scaling; these are not genuine geometric instabilities of the singularity, but rather gauge directions. The block $E_{>0}$ is genuinely stable and therefore decays faster. The delicate part is $E_0$: these modes neither decay immediately nor correspond to a trivial symmetry, and they are exactly where one expects the asymptotic shape of the cylindrical branch to be encoded.

In particular, the problem studied here is not whether the flow is close to a cylinder in a coarse sense; that is already part of the surrounding theory. The problem is what additional information is still hidden once one has already entered the neutral regime. Put differently: once the leading decay rate has dropped to the neutral spectral level, what quantity can still distinguish a fully nondegenerate cylindrical branch from a partially active one?

The 2025 work of Sun–Wang–Xue [1] isolates the neutral block as the asymptotically relevant one on nondegenerate or partially nondegenerate cylindrical branches: their decay-order package proves $N_{n,k}(\tau) \to 0$, so all asymptotic mass concentrates in $E_0$. The remaining problem is to resolve the internal structure of $E_0$ and determine the asymptotic rank of the cylindrical singularity.

Here “rank” refers to the number of axial directions that are genuinely active in the leading quadratic profile. This is the discrete datum that separates a fully nondegenerate cylindrical branch from one that is only partially active. The point of the present paper is that the standard decay order becomes blind exactly at the stage where this rank question appears, so one needs a different invariant inside the neutral block.

### 1.2. Prior work

Two imported theorem packages frame the present discussion.

Sun–Wang–Xue [1] provide weighted Gaussian $L^2$ monotonicity, a short-interval spectral dichotomy, Jacobi-field limits, and weak-flow translation control near nondegenerate cylindrical singularities. Sun–Xue [2] provide the Brendle–Choi rotation gauge, bounded-domain $C^2$ normal forms, and active-set asymptotics. The Bamler–Lai PDE–ODI package [3] provides a slowly varying Euclidean-motion gauge, high-order control of the gauging parameters, and a dominant quadratic-mode expansion to arbitrary polynomial order for the unmodified rescaled flow.

The present paper does not reprove any of those packages. It records what is genuinely new and what follows from combining the new identities with the imported inputs.

The division of labor is therefore very important. The earlier papers provide the large-scale geometric framework: entry into the cylindrical regime, gauges, asymptotic expansions, and long-time control. The present paper is much narrower. It isolates the algebra and finite-dimensional dynamics of the axial neutral block and extracts from them a new defect mechanism. In that sense, the paper should be read less as a new regularity theorem and more as a structural note on the part of the asymptotic expansion that remains informative after the leading decay order has stabilized at the neutral level.

### 1.3. Summary of contributions

The strongest self-contained theorem proved in this article is a purely matrix-analytic result (Theorem 4.1 below): given a cubic-accurate perturbed Riccati law for a symmetric-matrix trajectory, the Rényi defects of a suitably shifted positive matrix are corrected almost-monotone and yield a finite-scale full-rank criterion.

This theorem is intentionally formulated in matrix language because the geometric input and the analytic mechanism separate cleanly at that point. Once one has reduced the flow to a symmetric matrix trajectory with the correct cubic-accurate error, the rest of the argument is independent of the geometric origin of that matrix. The resulting theorem is therefore portable: any geometric problem that leads to the same perturbed Riccati law can, in principle, use the same Rényi-defect argument.

The main structural contributions are the Gaussian second-chaos product law (Proposition 3.1), the exact quadratic leakage decomposition (Proposition 3.3), and the identification of the corrected center-stable graph (Section 3.5). These are new identities, not previously recorded in the literature in this form.

Conceptually, these three ingredients play different roles.

- The Gaussian second-chaos product law says that the axial neutral block is not just a list of coefficients: it is a closed algebraic object naturally identified with $\operatorname{Sym}(k)$.
- The quadratic leakage formula explains why the neutral block is not literally invariant under the quadratic nonlinearity. A pure neutral mode produces not only another neutral mode, but also a very specific unstable constant term and a very specific stable quartic term.
- The corrected center-stable graph identifies the right nonlinear object to track. The true leading profile is not the bare quadratic mode $p_A$, but the quadratically corrected profile $p_A+\Gamma(A)$.

This is the reason for the phrase “quadratic leakage” in the title: the neutral mode leaks out of its own spectral sector, but in an explicitly computable way. The paper exploits that explicit leakage rather than trying to suppress it abstractly.

The application to mean curvature flow proceeds in two stages. On the conservative route, one combines the 2022 bounded-domain normal form with the matrix theorem to obtain a finite-scale nondegeneracy criterion (Corollary 4.3). On the revised route, one replaces the 2022 input by the Bamler–Lai long-time gauge and uses the exact projection identity to derive the cubic-accurate center law directly (Section 6), after which the same matrix theorem applies (Corollary 6.2).

The finite-scale criterion itself should also be read conceptually. It is not an asymptotic classification statement of the usual kind “if one lets time go to infinity, then the rank must be such-and-such.” Instead it says that one can certify maximal rank from a single sufficiently late scale by evaluating a corrected entropy-type defect. This is useful because it converts an asymptotic mode-selection issue into a one-scale test.

The Rényi defects are the natural quantities for this purpose because they are exactly the entropy functionals of the normalized eigenvalue distribution of the positivity-restored matrix $B(\tau)$. When that distribution is close to being uniform on all $k$ directions, the branch is full rank; when it is supported on fewer directions, the defect stays bounded away from zero by a quantitative gap.

### 1.4. What is not proved

The fully intrinsic derivation of the cubic-accurate center law from the 2025 Sun–Wang–Xue package alone remains open. Specifically, the missing step is a fixed-gauge long-time center-stable theorem yielding simultaneously $\Pi_{<0} u = 0$, $|A(\tau)| \lesssim \tau^{-1}$, and $\|w(\tau)\|_{L^2_\Phi} \lesssim \tau^{-2}$ directly from the weak-flow framework. This is stated as an open problem in Section 7.

It is worth emphasizing why this distinction matters. The main theorem of the paper is unconditional as a matrix theorem, and the conservative geometric corollary is unconditional once one imports the 2022 normal form. What remains open is not the matrix mechanism, nor the positivity restoration, nor the Rényi monotonicity argument. The open point is specifically the most intrinsic geometric route: obtaining the cubic-accurate center law from the 2025 weak-flow package alone, without bringing in an additional long-time gauge theorem.

In other words, the unresolved issue is one of derivation, not of interpretation. The paper identifies the right object and proves what that object does. What is not yet proved in the most economical route is that the 2025 package by itself already furnishes that object with the needed accuracy.

### 1.5. Outline

Section 2 records the setup and imported inputs. Section 3 develops the structural identities on the neutral block. Section 4 states the main theorem and corollaries. Section 5 proves the main theorem. Section 6 derives the cubic-accurate center law via the Bamler–Lai route. Section 7 discusses open problems. Appendix A records the exact center-model Rényi monotonicity computation. Appendix B records the explicit quartic stable graph.

From a reader’s perspective, the paper can be entered in two ways. A geometer interested mainly in the new theorem can read Sections 4-6 first: the punchline is that a cubic-accurate Riccati law implies a finite-scale rank criterion. A reader interested in mechanism should start with Section 3, where the algebraic heart of the paper is isolated. The later sections then show how that algebra turns into a usable defect monotonicity statement once the geometric flow has been reduced to the appropriate matrix trajectory.

---

## 2. Setup and imported inputs

### 2.1. Cylinder and spectral notation

Fix integers $1 \le k \le n-1$ and set $\rho := \sqrt{2(n-k)}$. The linearization $L_{n,k}$ is self-adjoint in $L^2_\Phi(C_{n,k})$ with the Gaussian weight $\Phi(y) = (4\pi)^{-k/2} e^{-|y|^2/4}$.

The spectral blocks are:
$$
E_{-1} = \operatorname{span}\{1\}, \qquad E_{-1/2} = \operatorname{span}\{\theta_\alpha,\, y_j\},
$$
$$
E_0 = \operatorname{span}\{\theta_\alpha y_j,\, y_i y_j,\, y_i^2 - 2\},
$$
where $\theta_\alpha$ denotes spherical harmonics on $S^{n-k}(\rho)$. The modulation block is $E_{<0} = E_{-1} \oplus E_{-1/2}$.

### 2.2. The axial neutral block

The $\theta$-independent part of $E_0$ is parameterized by symmetric matrices:
$$
p_A(y) := y^\top A y - 2\operatorname{tr}A, \qquad A \in \operatorname{Sym}(k).
$$
This identifies the axial neutral block with the Gaussian second chaos.

### 2.3. Quadratic term of the graph equation

The quadratic leading term of the nonlinearity is
$$
Q_2(u) = -\frac{1}{2\rho}\Big(u^2 + 4u\Delta_\theta u + 2|\nabla_\theta u|^2\Big).
$$
For $\theta$-independent functions $u = p_A$, the angular derivative terms vanish, giving
$$
Q_2(p_A) = -\frac{1}{2\rho} p_A^2.
$$

### 2.4. Imported inputs

The following facts are used but not proved here.

From Sun–Wang–Xue [1]: entry into the neutral regime on nondegenerate or partially nondegenerate cylindrical branches ($N_{n,k}(\tau) \to 0$), the short-interval spectral dichotomy, and weak-flow translation control.

From Sun–Xue [2]: the Brendle–Choi rotation gauge, bounded-domain $C^2$ normal form, and active-set asymptotics. On each fixed bounded domain of radius $R$, the normal form yields
$$
u(\theta, y, \tau) = \frac{\rho}{4\tau}\sum_{i \in I}(y_i^2 - 2) + O_R(\tau^{-1-\vartheta}),
$$
where $I \subset \{1, \dots, k\}$ is the active set and $\vartheta \in (0,1)$.

From Bamler–Lai [3]: the slowly varying Euclidean-motion gauge, gauged rescaled flow equation, and dominant quadratic-mode expansion to arbitrary polynomial order.

---

## 3. Structural identities on the neutral block

### 3.1. Gaussian second-chaos product law

**Proposition 3.1.** *For $A, B \in \operatorname{Sym}(k)$,*
$$
\Pi_0(p_A p_B) = 4 p_{AB + BA}.
$$
*In particular, $\Pi_0(p_A^2) = 8 p_{A^2}$.*

*Proof.* Write $p_A(y) = \sum_{i,j} A_{ij}(y_i y_j - 2\delta_{ij})$ and similarly for $p_B$. For the Gaussian measure with covariance $2I_k$, the Wick product formula gives
$$
\Pi_0\Big((y_i y_j - 2\delta_{ij})(y_p y_q - 2\delta_{pq})\Big) = 2\Big[\delta_{ip}(y_j y_q - 2\delta_{jq}) + \delta_{iq}(y_j y_p - 2\delta_{jp})
$$
$$
\qquad\qquad + \delta_{jp}(y_i y_q - 2\delta_{iq}) + \delta_{jq}(y_i y_p - 2\delta_{ip})\Big].
$$
Summing against $A_{ij} B_{pq}$ yields $\Pi_0(p_A p_B) = 2 p_{AB} + 2 p_{AB^\top} + 2 p_{A^\top B} + 2 p_{A^\top B^\top}$. Since $A$ and $B$ are symmetric, this simplifies to $4 p_{AB+BA}$. $\square$

### 3.2. Exact center Riccati law

**Proposition 3.2.** *On the exact axial neutral model,*
$$
\Pi_0 Q_2(p_A) = -\frac{4}{\rho} p_{A^2},
$$
*hence the induced matrix law is $A' = -(4/\rho) A^2$.*

*Proof.* Since $p_A$ is $\theta$-independent, $Q_2(p_A) = -(1/2\rho) p_A^2$. Projecting with Proposition 3.1 gives $\Pi_0 Q_2(p_A) = -(1/2\rho) \cdot 8 p_{A^2} = -(4/\rho) p_{A^2}$. Under the identification $A \leftrightarrow p_A$, this is the displayed ODE. $\square$

### 3.3. Exact Rényi monotonicity on the model

Let $\lambda_1, \dots, \lambda_k \ge 0$ be the eigenvalues of $A$ on the active branch, and set $S_m := \operatorname{tr}(A^m)$, $w_i := \lambda_i / S_1$, $\sigma_p := \sum_i w_i^p = S_p / S_1^p$. For $p > 1$ define the Rényi defect
$$
\mathcal{R}_p(A) = \frac{1}{p-1}\log\!\big(k^{p-1} \sigma_p\big).
$$
The computation in Appendix A gives:
$$
\mathcal{R}_p'(A) = -\frac{4p}{\rho} \frac{S_1}{p-1} \frac{\sigma_{p+1} - \sigma_2 \sigma_p}{\sigma_p} \le 0,
$$
with equality if and only if all nonzero eigenvalues are equal. On a rank-$r$ branch, $\mathcal{R}_p(A(\tau)) \to \log(k/r)$.

### 3.4. Exact quadratic leakage decomposition

**Proposition 3.3** (quadratic leakage decomposition). *Define*
$$
q_A := p_A^2 - 8\operatorname{tr}(A^2) - 8 p_{A^2}.
$$
*Then $q_A \in E_{>0}$, $L q_A = -q_A$, and*
$$
Q_2(p_A) = -\frac{4}{\rho}\operatorname{tr}(A^2) \cdot 1 - \frac{4}{\rho} p_{A^2} - \frac{1}{2\rho} q_A.
$$

*Proof.* Since $Q_2(p_A) = -(1/2\rho) p_A^2$, it suffices to decompose $p_A^2$ spectrally. The constant (unstable) projection is
$$
\mathbb{E}[p_A(Y)^2] = 8\operatorname{tr}(A^2),
$$
computed from the Gaussian law $Y \sim N(0, 2I_k)$. The neutral projection is $\Pi_0(p_A^2) = 8 p_{A^2}$ by Proposition 3.1. Subtracting these two pieces defines $q_A$. Since $q_A$ is orthogonal to both $E_{<0}$ and $E_0$ and has polynomial degree 4, it lies in the degree-4 Hermite chaos, so $L q_A = -q_A$. Substituting the decomposition of $p_A^2$ into $Q_2(p_A) = -(1/2\rho) p_A^2$ gives the displayed formula. $\square$

**Remark.** This proposition is the key structural identity. It says the neutral quadratic mode leaks into exactly three spectral directions: the unstable constant $1 \in E_{-1}$, the neutral Riccati mode $p_{A^2} \in E_0$, and the first stable eigenspace via the invertible quartic polynomial $q_A \in E_{>0}$.

### 3.5. The corrected center-stable graph

Proposition 3.3 identifies the explicit quadratic stable graph
$$
\Gamma(A) := -\frac{1}{2\rho} q_A.
$$
Because $L q_A = -q_A$, we have $L\Gamma(A) = -\Gamma(A) = -\Pi_{>0} Q_2(p_A)$. Thus the correct center-stable object is not $p_A$ alone but
$$
p_A + \Gamma(A) = p_A - \frac{1}{2\rho} q_A.
$$
This is the mechanism-level reason the stable block is expected to be one power of $\tau$ lower than the neutral block: the leading stable contribution is quadratically slaved to the neutral mode.

---

## 4. Main theorem and corollaries

### 4.1. Statement

**Theorem 4.1** (finite-scale rank criterion from a cubic-accurate Riccati law). *Let $A : [\tau_0, \infty) \to \operatorname{Sym}(k)$ be $C^1$ and assume*
$$
|A(\tau)| \le C_0 \tau^{-1}, \qquad A'(\tau) = -\frac{4}{\rho} A(\tau)^2 + E(\tau), \qquad |E(\tau)| \le C_1 \tau^{-3}
$$
*for all $\tau \ge \tau_0$. Assume also that the branch is not fully degenerate: at least one eigenvalue of $A$ is not $o(\tau^{-1})$.*

*Then there exist $K > 0$, $\tau_1 \ge \tau_0$, and for each $p > 1$ a constant $C_p > 0$ such that, for*
$$
B(\tau) = A(\tau) + K\tau^{-2} I_k,
$$
*the following hold for all $\tau \ge \tau_1$:*

1. *$B(\tau) > 0$;*
2. *the corrected Rényi defect $\widetilde{\mathcal{R}}_p(\tau) := \mathcal{R}_p(B(\tau)) + C_p \tau^{-1}$ is nonincreasing;*
3. *there exists an integer $r \in \{1, \dots, k\}$ such that $\lim_{\tau \to \infty} \mathcal{R}_p(B(\tau)) = \log(k/r)$;*
4. *if for some $\tau_*$ one has $\widetilde{\mathcal{R}}_p(\tau_*) < \log(k/(k-1))$, then $r = k$.*

### 4.2. Corollaries

**Corollary 4.2** (quadratic threshold). *Under the hypotheses of Theorem 4.1,*
$$
\widetilde{\mathcal{D}}_{2,k}(\tau) := \frac{\operatorname{tr}(B(\tau)^2)}{\operatorname{tr}(B(\tau))^2} - \frac{1}{k} + \frac{C_2}{\tau}
$$
*is nonincreasing for suitable $C_2$, and*
$$
\widetilde{\mathcal{D}}_{2,k}(\tau_*) < \frac{1}{k(k-1)} \quad \Longrightarrow \quad r = k.
$$

This follows from the identity $\mathcal{R}_2 = \log(1 + k\mathcal{D}_{2,k})$.

**Corollary 4.3** (conservative finite-scale criterion). *Suppose the hypotheses of the 2022 cylindrical normal-form theorem [2] hold, so that the axial neutral coefficient satisfies*
$$
A' = -\frac{4}{\rho} A^2 + E, \qquad |E| \le C_R \tau^{-2-\vartheta}
$$
*on every fixed bounded domain, with some $\vartheta \in (0,1)$. Then the shifted matrix $B_R(\tau) = A(\tau) + K_R \tau^{-1-\vartheta} I_k$ satisfies corrected Rényi almost-monotonicity and the finite-scale criterion*
$$
\widetilde{\mathcal{R}}_{p,R}(\tau_*) < \log\frac{k}{k-1} \quad \Longrightarrow \quad I = \{1, \dots, k\}.
$$

**Remark.** This corollary uses the weaker remainder $O(\tau^{-2-\vartheta})$ from the 2022 normal form, which requires the correspondingly weaker shift $K_R \tau^{-1-\vartheta} I_k$. The proof is entirely analogous to that of Theorem 4.1 with the integrable error bound $O(\tau^{-1-\vartheta})$ replacing $O(\tau^{-2})$ in the final monotonicity correction.

---

## 5. Proof of Theorem 4.1

Set $c := 4/\rho$.

### 5.1. Scalar eigenvalue equations

Let $\lambda_1(\tau) \le \cdots \le \lambda_k(\tau)$ be the ordered eigenvalues of $A(\tau)$. Since $A$ is $C^1$ and symmetric, each $\lambda_i$ is absolutely continuous. At almost every differentiability point there is a unit eigenvector $v_i(\tau)$ with $A(\tau)v_i(\tau) = \lambda_i(\tau) v_i(\tau)$, and therefore
$$
\lambda_i'(\tau) = -c\lambda_i(\tau)^2 + e_i(\tau), \qquad |e_i(\tau)| \le C_1 \tau^{-3}.
$$

### 5.2. Quantitative lower bound for negative eigenvalues

**Lemma 5.1.** *For every $i$ there is a constant $C$ such that $\lambda_i(\tau) \ge -C\tau^{-2}$ for all large $\tau$.*

*Proof.* Since $|\lambda_i(\tau)| \le C_0 \tau^{-1}$, we have $\lambda_i(\tau) \to 0$. Integrating the scalar equation from $\tau$ to $\infty$ gives
$$
\lambda_i(\tau) = c\int_\tau^\infty \lambda_i(s)^2\,ds - \int_\tau^\infty e_i(s)\,ds.
$$
The first term is nonnegative, so $\lambda_i(\tau) \ge -\int_\tau^\infty |e_i(s)|\,ds \ge -C\tau^{-2}$. $\square$

### 5.3. Active/inactive dichotomy

Define $\mu_i(\tau) := c\tau\lambda_i(\tau)$. Then
$$
\mu_i' = \frac{\mu_i(1 - \mu_i)}{\tau} + g_i(\tau), \qquad |g_i(\tau)| \le C\tau^{-2}.
$$

**Lemma 5.2.** *For every $i$, the limit $\ell_i := \lim_{\tau \to \infty} \mu_i(\tau)$ exists and belongs to $\{0, 1\}$.*

*Proof.* The bound $|A(\tau)| \le C_0 \tau^{-1}$ gives boundedness of $\mu_i$. By Lemma 5.1, $\mu_i(\tau) \ge -C\tau^{-1}$ for large $\tau$, so negative excursions vanish asymptotically.

Fix $\delta \in (0, 1/4)$. For large $\tau$ the perturbation satisfies $C\tau^{-2} \le \delta/(2\tau)$. Then if $\mu_i \in [2\delta, 1-2\delta]$, one has $\mu_i(1-\mu_i) \ge \delta$, hence $\mu_i' \ge \delta/(2\tau) > 0$; and if $\mu_i \in [1+2\delta, M]$, then $\mu_i(1-\mu_i) \le -2\delta$, hence $\mu_i' \le -\delta/\tau < 0$. Thus $\mu_i$ cannot have cluster points in $(0,1)$ or in $(1,\infty)$.

Once $\mu_i$ enters $[1-2\delta, 1+2\delta]$ at sufficiently large time, it cannot later cross below $1-2\delta$: any such crossing would force passage through $[2\delta, 1-2\delta]$, where the derivative is strictly positive. Therefore either $\mu_i$ stays eventually in $[0, 2\delta]$, or it stays eventually in $[1-2\delta, 1+2\delta]$. Since $\delta > 0$ is arbitrary, the limit exists and belongs to $\{0, 1\}$. $\square$

Let $r := \#\{i : \ell_i = 1\}$. By the non-full-degeneracy assumption, $r \ge 1$. Lemma 5.2 implies $\lambda_i(\tau) = \ell_i/(c\tau) + o(\tau^{-1})$, hence
$$
\operatorname{tr}A(\tau) = \frac{r}{c\tau} + o(\tau^{-1}), \qquad \operatorname{tr}(A(\tau)^p) = \frac{r}{c^p \tau^p} + o(\tau^{-p}).
$$

### 5.4. Positivity-restoring shift

Choose $K > 0$ so large that Lemma 5.1 gives $A(\tau) + K\tau^{-2} I_k > 0$ for all $\tau \ge \tau_1$, and set $B(\tau) := A(\tau) + K\tau^{-2} I_k$.

Since $A = B - K\tau^{-2} I$, we have $A^2 = B^2 - 2K\tau^{-2}B + K^2\tau^{-4}I$. Using $A' = -cA^2 + E$ and $(K\tau^{-2})' = -2K\tau^{-3}$, we obtain
$$
B' = -cB^2 + F,
$$
where $F := 2cK\tau^{-2}B - cK^2\tau^{-4}I - 2K\tau^{-3}I + E$. Since $|B(\tau)| \le C\tau^{-1}$, we get $|F(\tau)| \le C\tau^{-3}$.

### 5.5. Derivative of normalized moments

For $p > 1$ define $S_p(\tau) := \operatorname{tr}(B(\tau)^p)$, $\sigma_p(\tau) := S_p(\tau)/S_1(\tau)^p$, and
$$
\mathcal{R}_p(\tau) := \frac{1}{p-1}\log\!\big(k^{p-1}\sigma_p(\tau)\big).
$$
Since $B > 0$, $S_p' = p\operatorname{tr}(B^{p-1}B') = -cp S_{p+1} + p\operatorname{tr}(B^{p-1}F)$. Therefore
$$
(\log \sigma_p)' = -cp\Big(\frac{S_{p+1}}{S_p} - \frac{S_2}{S_1}\Big) + p\frac{\operatorname{tr}(B^{p-1}F)}{S_p} - p\frac{\operatorname{tr}F}{S_1}.
$$

**Lemma 5.3.** *One has $S_{p+1}/S_p - S_2/S_1 \ge 0$. Moreover,*
$$
\Big|\frac{\operatorname{tr}(B^{p-1}F)}{S_p}\Big| + \Big|\frac{\operatorname{tr}F}{S_1}\Big| \le C_p \tau^{-2}.
$$

*Proof.* Write the eigenvalues of $B$ as $b_1, \dots, b_k > 0$ and set $w_i := b_i/\sum_j b_j$. Then
$$
\frac{S_{p+1}}{S_p} - \frac{S_2}{S_1} = \frac{S_1}{\sigma_p}(\sigma_{p+1} - \sigma_2 \sigma_p),
$$
and the standard positivity identity gives
$$
\sigma_{p+1} - \sigma_2 \sigma_p = \frac{1}{2}\sum_{i,j} w_i w_j (w_i^{p-1} - w_j^{p-1})(w_i - w_j) \ge 0.
$$

For the error terms, Hölder gives $S_{p-1} \le k^{1/p} S_p^{(p-1)/p}$, hence $|\operatorname{tr}(B^{p-1}F)| \le |F|\,S_{p-1} \le C\tau^{-3} k^{1/p} S_p^{(p-1)/p}$. Also, $S_p \ge k^{1-p} S_1^p$ and $S_1 \ge c_0 \tau^{-1}$ for large $\tau$, so $S_p^{-1/p} \le C\tau$. Therefore $|\operatorname{tr}(B^{p-1}F)|/S_p \le C_p \tau^{-2}$. Similarly $|\operatorname{tr}F|/S_1 \le k|F|/S_1 \le C\tau^{-2}$. $\square$

Combining gives $\mathcal{R}_p'(\tau) \le C_p \tau^{-2}$ for all large $\tau$. Enlarging $C_p$ if necessary and defining $\widetilde{\mathcal{R}}_p(\tau) := \mathcal{R}_p(\tau) + C_p \tau^{-1}$, we obtain
$$
\widetilde{\mathcal{R}}_p'(\tau) = \mathcal{R}_p'(\tau) - C_p \tau^{-2} \le 0.
$$
This proves the corrected almost-monotonicity.

### 5.6. Asymptotic rank limit

Since $\lambda_i(\tau) = \ell_i/(c\tau) + o(\tau^{-1})$, the eigenvalues $b_i$ of $B$ satisfy $b_i(\tau) = \ell_i/(c\tau) + o(\tau^{-1})$. Therefore
$$
\sigma_p(\tau) = r^{1-p} + o(1),
$$
and hence $\mathcal{R}_p(\tau) \to \log(k/r)$.

### 5.7. Finite-scale criterion

Suppose $\widetilde{\mathcal{R}}_p(\tau_*) < \log(k/(k-1))$. Since $\widetilde{\mathcal{R}}_p$ is nonincreasing, $\lim_{\tau \to \infty} \widetilde{\mathcal{R}}_p(\tau) \le \widetilde{\mathcal{R}}_p(\tau_*)$. But $C_p \tau^{-1} \to 0$, so $\lim_{\tau \to \infty} \widetilde{\mathcal{R}}_p(\tau) = \log(k/r)$. If $r \le k-1$, then $\log(k/r) \ge \log(k/(k-1))$, contradicting the strict inequality at $\tau_*$. Hence $r = k$. $\square$

---

## 6. Closing the gap via the Bamler–Lai route

This section derives the cubic-accurate center law needed by Theorem 4.1 using the Bamler–Lai PDE–ODI package [3] for the long-time gauge and mode hierarchy, combined with the exact projection identity of Section 3.

### 6.1. Center/remainder hierarchy from Bamler–Lai

**Proposition 6.1.** *After translating the Bamler–Lai asymptotic expansion into the forward rescaled-time convention, there is a large-time graphical representation*
$$
u(\tau) = p_{A(\tau)} + w(\tau),
$$
*with*
$$
|A(\tau)| \lesssim \tau^{-1}, \qquad \|w(\tau)\|_{L^2_\Phi} \lesssim \tau^{-2}.
$$

*Proof.* Bamler–Lai construct a gauged modified flow by ambient Euclidean motions and prove high-order control of the gauging parameters. In the dominant quadratic-mode regime, their Proposition 7.1 gives a finite-mode expansion $U^+ = U_1 + U_{1/2} + U_0 + \cdots + U_{-J}$ for the unmodified graph, with approximation error $\|u_\tau - U^+(\tau)\|_{C^m(D_\tau)} \le C s^{-J-1}$, where $s := \tau_e - \tau + 10$.

The component estimates are $U_1, U_{1/2} = O(s^{-2})$, $U_0 = O(s^{-1})$, and the lower spectral modes $U_{-1}, \dots, U_{-J}$ are at worst $O(s^{-2})$.

Define $A(\tau)$ as the coefficient matrix of the projection of $u_\tau$ onto the axial quadratic Hermite sector. Since $U_0$ is the only $O(s^{-1})$ contribution in that sector, $|A(\tau)| \lesssim s^{-1}$. Setting $w(\tau) := u_\tau - p_{A(\tau)}$, all modal components of $w$ are $O(s^{-2})$ on $D_\tau$. The tail outside $D_\tau$ has Gaussian weight $\int_{|y| > R(\tau)} e^{-|y|^2/4}\,dy \lesssim e^{-R(\tau)^2/8} = s^{-J^2/8}$, so choosing $J$ large enough converts the local estimate into the global weighted bound $\|w(\tau)\|_{L^2_\Phi} \lesssim s^{-2}$. Relabeling $s$ as the forward large-time variable gives the result. $\square$

### 6.2. Cubic-accurate center law by exact projection

**Proposition 6.2.** *Under the decomposition of Proposition 6.1,*
$$
A'(\tau) = -\frac{4}{\rho} A(\tau)^2 + O(\tau^{-3}).
$$

*Proof.* The rescaled graph equation in the forward convention is $\partial_\tau u - Lu = Q(u, \nabla u, \nabla^2 u)$. Substituting $u(\tau) = p_{A(\tau)} + w(\tau)$ with $Lp_{A(\tau)} = 0$ and projecting to the axial neutral block gives
$$
\partial_\tau p_{A(\tau)} = \Pi_0 Q(p_A + w).
$$
Split the right-hand side:
$$
\Pi_0 Q(p_A + w) = \Pi_0 Q_2(p_A) + \Pi_0\big(Q(p_A + w) - Q_2(p_A)\big).
$$
By Proposition 3.2, $\Pi_0 Q_2(p_A) = -(4/\rho) p_{A^2}$. The remainder is estimated by standard tame bounds:
$$
\big|\Pi_0\big(Q(p_A + w) - Q_2(p_A)\big)\big| \lesssim |A|\,\|w\|_{L^2_\Phi} + \|w\|_{L^2_\Phi}^2 + |A|^3.
$$
Using Proposition 6.1, $|A|\,\|w\| + \|w\|^2 + |A|^3 \lesssim \tau^{-1}\tau^{-2} + \tau^{-4} + \tau^{-3} = O(\tau^{-3})$. $\square$

**Corollary 6.3.** *The hypotheses of Theorem 4.1 are satisfied along the Bamler–Lai route. Hence there exist $K > 0$, $\tau_1$, and for every $p > 1$ a constant $C_p > 0$ such that $B(\tau) = A(\tau) + K\tau^{-2}I_k$ is positive, $\widetilde{\mathcal{R}}_p(\tau)$ is nonincreasing, and*
$$
\widetilde{\mathcal{R}}_p(\tau_*) < \log\frac{k}{k-1} \quad \Longrightarrow \quad r = k.
$$
*The finite-scale rank criterion therefore holds without using the 2022 bounded-domain normal form.*

**Remark.** The decisive point in this closure is that Bamler–Lai is used only for the gauge, mode hierarchy, and remainder size estimate. Their internal finite-dimensional ODI for the quadratic mode is not directly substituted into the Rényi argument, because it contains additional cubic terms in their normalization and is not the exact projected center equation. Instead, one returns to the exact projection identity $\Pi_0 Q_2(p_A) = -(4/\rho) p_{A^2}$ proved in Section 3.

---

## 7. Open problems

### 7.1. Intrinsic SWX-only center-stable theorem

The strongest unresolved problem is to derive the cubic-accurate center law $A' = -(4/\rho) A^2 + O(\tau^{-3})$ directly from the 2025 Sun–Wang–Xue weak-flow/decay-order package, without importing the Bamler–Lai long-time gauge. This requires simultaneously establishing $\Pi_{<0} u = 0$ in a fixed gauge, $|A(\tau)| \lesssim \tau^{-1}$, and $\|w(\tau)\|_{L^2_\Phi} \lesssim \tau^{-2}$ from the weak-flow framework alone.

### 7.2. Explicit center manifold identification

A stronger mechanism statement would be to prove that the non-neutral remainder satisfies
$$
w(\tau) = \Gamma(A(\tau)) + O(\tau^{-3}), \qquad \Gamma(A) = -\frac{1}{2\rho} q_A,
$$
directly in the geometric flow. This would identify the corrected center manifold inside the flow, not merely the cubic center law.

### 7.3. Comparison of asymptotic invariants

Bamler–Lai parameterize the dominant quadratic regime by a non-negative definite matrix invariant, while the present work uses Rényi defects of a shifted matrix. The exact relationship between these two descriptions remains to be written down.

### 7.4. Method portability

The mechanism should extend to any neck problem with an explicitly parameterized neutral Gaussian second-chaos block, a quadratic forcing law that leaks into finitely many computable spectral directions, and an integrable perturbed Riccati law for the neutral coefficients. The transferable object is the combination: quadratic leakage identity + corrected center manifold + Rényi defect bridge.

---

## Appendix A. Exact Rényi monotonicity on the center model

Assume $A' = -cA^2$ with $c = 4/\rho$ and $A$ positive semidefinite of rank $r$ on the active branch. Let $\lambda_i$ be its nonnegative eigenvalues, $S_1 = \sum_i \lambda_i$, and $w_i = \lambda_i/S_1$. Then $\lambda_i' = -c\lambda_i^2$ and $S_1' = -cS_2$, hence
$$
w_i' = \frac{\lambda_i' S_1 - \lambda_i S_1'}{S_1^2} = -cS_1 w_i(w_i - \sigma_2),
$$
where $\sigma_2 = \sum_i w_i^2$. Therefore
$$
\sigma_p' = p\sum_i w_i^{p-1} w_i' = -cpS_1(\sigma_{p+1} - \sigma_2 \sigma_p).
$$
The standard positivity identity
$$
\sigma_{p+1} - \sigma_2 \sigma_p = \frac{1}{2}\sum_{i,j} w_i w_j (w_i^{p-1} - w_j^{p-1})(w_i - w_j) \ge 0
$$
gives
$$
\mathcal{R}_p' = \frac{1}{p-1}\frac{\sigma_p'}{\sigma_p} = -\frac{cp}{p-1}S_1 \frac{\sigma_{p+1} - \sigma_2 \sigma_p}{\sigma_p} \le 0.
$$
Equality holds if and only if all nonzero $w_i$ are equal. Along a rank-$r$ branch the normalized weights converge to the uniform measure on $r$ points, so $\mathcal{R}_p \to \log(k/r)$.

---

## Appendix B. Explicit quartic stable graph

The stable quartic correction generated by the axial neutral block is
$$
\Gamma(A) := -\frac{1}{2\rho} q_A, \qquad q_A := p_A^2 - 8\operatorname{tr}(A^2) - 8p_{A^2}.
$$
Because $q_A$ is a centered degree-4 Hermite polynomial, $Lq_A = -q_A$, and therefore
$$
L\Gamma(A) = -\Gamma(A) = -\Pi_{>0} Q_2(p_A).
$$
This identity is not needed in the proof of Theorem 4.1 once the perturbed Riccati law is assumed, but it is the mechanism-level explanation for why the center-stable remainder should improve from $O(\tau^{-2})$ to $w(\tau) = \Gamma(A(\tau)) + O(\tau^{-3})$ in a successful intrinsic theory.

---

## References

1. A. Sun, Z. Wang, J. Xue, *Passing through nondegenerate singularities in mean curvature flows*, arXiv:2501.16678, 2025.

2. A. Sun, J. Xue, *Generic mean curvature flows with cylindrical singularities*, arXiv:2210.00419, 2022.

3. R. Bamler, Y. Lai, *Precise asymptotics near a generic singularity of mean curvature flow*, preprint.
