## Method Card
- **Short tag:** holomorph etale H1 lift
- **Full name:** Holomorph-lift model for etale H^1.
- **Input setting:** A connected scheme U with a finite locally constant sheaf and its etale fundamental group.
- **New object / driver:** Affine Hol(M)-monodromy lifts, or equivalently finite etale covers carrying a fixed resolvent torsor.
- **Obstruction resolved:** Cohomology classes in H^1 are usually abstract torsors, so it is hard to see their geometric content or control them uniformly over schemes.
- **Expected outputs:** A classification of etale H^1 by translation-conjugacy classes of lifts, an unramified interpretation on normal integral schemes, and affine tensor-product compatibility.
- **Transfer targets:** Explicit arithmetic realizations of torsors, finite etale algebra constructions, and concrete cohomology calculations over schemes.
- **Main technical risk:** The lift description has to stay functorial and choice-free while matching both the torsor and cover-theoretic pictures.
- **Mechanism type:** rigidity, transport, defect control
- **Tags:** holomorph, etale-H1, monodromy-lift, torsor, finite-local-system, scheme
- **Method link:** ../methods/holomorph_lift_etale_h1.md

**Condensation.** The new viewpoint is to recast etale H^1 as a classification problem for affine holomorph-valued monodromy lifts, so a cohomology class becomes a concrete finite etale object with a prescribed resolvent. This overcomes the obstruction that first cohomology is normally packaged as an abstract torsor class with limited geometric visibility. The operative mechanism is to lift the fundamental-group action from Aut(M) to Hol(M) = M ⋊ Aut(M) and then quotient by translation-conjugacy. If it works, it gives a scheme-theoretic description of H^1, recovers the unramified classes on normal integral schemes, and produces affine tensor-product compatibilities for the associated etale algebras.

# A holomorph description of $H^1$ for finite local systems on connected schemes

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_


## Abstract

For a field $K$ and a finite Galois module $M$, O'Dorney described $H^1(K,M)$
in terms of finite 'etale algebras whose monodromy lies in the holomorph
$\Hol(M)=M\rtimes \Aut(M)$. We prove the scheme-theoretic analogue for a
connected scheme $U$ and a finite locally constant sheaf $\mathcal M$ on
$U_{\et}$. The resulting description identifies $H^1_{\et}(U,\mathcal M)$ with
affine $\Hol(M)$-monodromy lifts of $\pi_1(U)$ modulo translation-conjugacy, or
equivalently with finite 'etale covers carrying a fixed
$\Aut(M)$-resolvent torsor. For integral normal noetherian $U$ this recovers
exactly the classes unramified along $U$, and in the affine case it yields a
tensor-product compatibility for the corresponding finite 'etale algebras.

## 1. Introduction

Let $M$ be a finite abelian group. The holomorph

$$
\Hol(M)=M\rtimes \Aut(M)
$$

is the group of affine transformations of the set $M$. Its structural role in
degree-$1$ cohomology is elementary but important: the normal subgroup $M$
records translations, the quotient $\Hol(M)/M\cong \Aut(M)$ records the fixed
linear part of the monodromy, and the stabilizer of $0\in M$ is exactly
$\Aut(M)$.

For a field $K$, O'Dorney made this structure completely explicit. If $M$ is a
finite $G_K$-module with action

$$
\phi:G_K\to \Aut(M),
$$

then $H^1(K,M)$ may be described by lifts

$$
\psi:G_K\to \Hol(M)
$$

of $\phi$, modulo conjugation by the translation subgroup $M$, or equivalently
by finite 'etale $K$-algebras with monodromy in $\Hol(M)$ and a fixed
$\Aut(M)$-resolvent torsor \cite[Theorem~4.5]{OD}.

The aim of this note is to record the corresponding statement for connected
schemes. Let $U$ be connected and let

$$
\phi:\pi_1(U,\bar u)\to \Aut(M)
$$

be continuous. The associated finite locally constant sheaf
$\mathcal M_\phi$ plays the role of a finite Galois module. We show that
$H^1_{\et}(U,\mathcal M_\phi)$ is still controlled by affine $\Hol(M)$-actions:
the only change is that one replaces the absolute Galois group $G_K$ by the
'etale fundamental group $\pi_1(U,\bar u)$.

This result is formally close to standard torsor theory. We do *not* claim
a new abstract classification of torsors. The point is instead to isolate a
concrete and functorial holomorph package, parallel to O'Dorney's field-level
statement, that keeps the linear and translational parts of the monodromy
visible and makes the arithmetic meaning over non-field bases explicit. Over

$$
U=\Spec \mathcal O_{K,S},
$$

for example, the theorem identifies classes in $H^1_{\et}(U,\mathcal M_\phi)$
with O'Dorney's classes in $H^1(K,M)$ that are unramified at every finite place
outside $S$.

The main theorem gives three equivalent descriptions:

1. $H^1_{\et}(U,\mathcal M_\phi)$;
2. lifts of $\phi$ to $\Hol(M)$ modulo conjugation by $M$;
3. triples $(E,Y,\theta)$, where $E\to U$ is a finite 'etale
   $\Hol(M)$-torsor, $Y=E/\Aut(M)$ is a degree-$|M|$ finite 'etale cover, and
   $\theta:E/M\xrightarrow{\sim}T_\phi$ identifies the quotient by the translation
   subgroup with the fixed $\Aut(M)$-torsor attached to $\phi$.

We also prove that pullback corresponds to base change, and that addition in
$H^1$ is controlled by the addition map

$$
M\times M\to M.
$$

The paper is organized as follows. Section~2 fixes notation and recalls the
necessary background on finite 'etale covers, finite local systems, and
torsors. Section~3 states the main theorem and its corollaries. Section~4
contains the proof. Section~5 gives explicit examples over arithmetic and
function-field bases. Section~6 records remarks and open questions.

## 2. Notation and preliminaries

Let $U$ be a connected scheme with geometric point $\bar u$, and let
$\pi_1(U,\bar u)$ be its profinite 'etale fundamental group.

Let $M$ be a finite abelian group. We write

$$
\Hol(M)=M\rtimes \Aut(M)
$$

for the holomorph, acting on the set $M$ by affine maps

$$
(a,t)\cdot x=a(x)+t.
$$

With this convention,

$$
(a,t)(b,u)=(ab,\ t+a(u)).
$$

For $y\in M$, write $\tau_y=(1,y)$ for translation by $y$.

Fix a continuous homomorphism

$$
\phi:\pi_1(U,\bar u)\to \Aut(M).
$$

Let $\mathcal M_\phi$ be the associated finite locally constant sheaf of
abelian groups on $U_{\et}$. Let

$$
T_\phi\to U
$$

be the finite 'etale $\Aut(M)$-torsor corresponding to $\phi$ under the
equivalence between finite 'etale $U$-schemes and finite continuous
$\pi_1(U,\bar u)$-sets.

We use the following facts.

- Finite 'etale $U$-schemes are equivalent to finite continuous
  $\pi_1(U,\bar u)$-sets \cite[Tag 03VD]{Stacks03VD}.
- Finite locally constant sheaves of abelian groups on $U_{\et}$ are
  equivalent to finite continuous $\pi_1(U,\bar u)$-modules \cite[Tag 0DV4]{Stacks0DV4}.
- For a finite abelian sheaf, $H^1$ classifies torsors under that sheaf; for
  a finite constant sheaf this is spelled out in \cite[Tag 0A5G]{Stacks0A5G}.

**Remark.** Changing the base point $\bar u$ conjugates $\pi_1(U,\bar u)$ and therefore
conjugates $\phi$ and the set of lifts. All constructions below are invariant
under this change.

**Remark.** If $U=\Spec R$ is affine, a finite 'etale $U$-scheme is equivalently a finite
'etale $R$-algebra. The scheme language is slightly cleaner globally, but the
algebra language is what one sees over rings of $S$-integers.

## 3. Main result

**Theorem 3.1.** Let $U$ be a connected scheme with geometric point $\bar u$, let $M$ be a
finite abelian group, and let

$$
\phi:\pi_1(U,\bar u)\to \Aut(M)
$$

be continuous. Let $\mathcal M_\phi$ be the associated finite locally constant
sheaf of abelian groups on $U_{\et}$, and let $T_\phi\to U$ be the associated
finite 'etale $\Aut(M)$-torsor.

Then the following sets are naturally in bijection:

1. $H^1_{\et}(U,\mathcal M_\phi)$;
2. continuous homomorphisms

   $$
   \psi:\pi_1(U,\bar u)\to \Hol(M)
   $$

   with $\pi\circ \psi=\phi$, modulo conjugation by the translation subgroup
   $M\subseteq \Hol(M)$;
3. isomorphism classes of triples $(E,Y,\theta)$ where

   - $E\to U$ is a finite 'etale $\Hol(M)$-torsor,
   - $Y=E/\Aut(M)$ is a finite 'etale $U$-scheme of degree $|M|$,
   - $\theta:E/M\xrightarrow{\sim}T_\phi$ is an isomorphism of
     $\Aut(M)$-torsors.

Moreover, if $f:V\to U$ is a morphism of connected schemes, then pullback

$$
f^*:H^1_{\et}(U,\mathcal M_\phi)\to H^1_{\et}(V,f^{-1}\mathcal M_\phi)
$$

corresponds under (b) to precomposition with
$f_*:\pi_1(V,\bar v)\to \pi_1(U,\bar u)$ and under (c) to base
change of the triple $(E,Y,\theta)$.

**Corollary 3.2.** Assume that $U$ is integral, normal, and noetherian, with function field $K$.
Then the generic-fiber functor identifies

$$
H^1_{\et}(U,\mathcal M_\phi)
$$

with the subset of $H^1(K,M)$ consisting of the O'Dorney classes whose
associated finite 'etale $K$-scheme is unramified along $U$.

In particular, if

$$
U=\Spec \mathcal O_{K,S}
$$

for a number field $K$ and a finite set $S$ of finite places, then these are
exactly the classes unramified at every finite place $v\notin S$. No
archimedean place enters the geometry of $U$.

**Proposition 3.3.** Let $\alpha,\beta,\alpha+\beta\in H^1_{\et}(U,\mathcal M_\phi)$, and let
$Y_\alpha,Y_\beta,Y_{\alpha+\beta}$ be the corresponding finite 'etale
$U$-schemes from Theorem~\ref{thm:main}. Then there is a finite 'etale morphism

$$
Y_\alpha\times_U Y_\beta\longrightarrow Y_{\alpha+\beta}.
$$

If $U=\Spec R$ is affine, dualizing this morphism gives an inclusion of finite
'etale $R$-algebras

$$
L_{\alpha+\beta}\hookrightarrow L_\alpha\otimes_R L_\beta.
$$

## 4. Proof

**Lemma 4.1.** Let $\mathcal P$ be an $\mathcal M_\phi$-torsor on $U_{\et}$. Then the
geometric fiber $X=\mathcal P_{\bar u}$ is a finite continuous
$\pi_1(U,\bar u)$-set equipped with a simply transitive $M$-action satisfying

$$
g\cdot(m\cdot x)=\phi(g)(m)\cdot(g\cdot x)
$$

for all $g\in \pi_1(U,\bar u)$, $m\in M$, and $x\in X$.

Conversely, every such finite continuous $\pi_1(U,\bar u)$-set arises from an
$\mathcal M_\phi$-torsor.

**Proof.** This is the standard translation between torsors under a finite locally constant
sheaf and finite locally constant sheaves of sets with simply transitive group
action. Evaluating at $\bar u$ and using
\cite[Tags 03VD, 0DV4]{Stacks03VD,Stacks0DV4} gives the stated description in
terms of finite continuous $\pi_1(U,\bar u)$-sets.

**Lemma 4.2.** Fix an $\mathcal M_\phi$-torsor $\mathcal P$, let $X=\mathcal P_{\bar u}$, and
choose an $M$-equivariant bijection

$$
\iota:M\xrightarrow{\sim} X.
$$

Then there is a unique continuous homomorphism

$$
\psi_\iota:\pi_1(U,\bar u)\to \Hol(M)
$$

such that

$$
g\cdot \iota(x)=\iota(\psi_\iota(g)(x))
$$

for all $g\in \pi_1(U,\bar u)$ and $x\in M$, and it satisfies

$$
\pi\circ \psi_\iota=\phi.
$$

**Proof.** Define $\psi_\iota(g)\in \operatorname{Sym}(M)$ by the displayed formula. Since
the $M$-action on $X$ is compatible with $\phi$, for all $x,m\in M$ we have

$$
g\cdot \iota(x+m)
=g\cdot(m\cdot \iota(x))
=\phi(g)(m)\cdot(g\cdot \iota(x)).
$$

Applying $\iota^{-1}$ gives

$$
\psi_\iota(g)(x+m)=\psi_\iota(g)(x)+\phi(g)(m).
$$

Thus $\psi_\iota(g)$ is affine with linear part $\phi(g)$, so
$\psi_\iota(g)\in \Hol(M)$ and $\pi\circ\psi_\iota=\phi$.

The homomorphism property follows from functoriality of the monodromy action,
and continuity is automatic because the target is finite.

**Lemma 4.3.** Let $\iota_y=\iota\circ \tau_y$, where $\tau_y$ denotes translation by
$y\in M$. Then

$$
\psi_{\iota_y}(g)=\tau_{-y}\psi_\iota(g)\tau_y
$$

for all $g\in \pi_1(U,\bar u)$.

**Proof.** For every $x\in M$,

$$
g\cdot \iota_y(x)
=g\cdot \iota(x+y)
=\iota\bigl(\psi_\iota(g)(x+y)\bigr)
=\iota_y\bigl(\tau_{-y}\psi_\iota(g)\tau_y(x)\bigr).
$$

This proves the identity.

**Proof of Theorem~\ref{thm:main}.** The equivalence (a)$\Leftrightarrow$(b) follows from
Lemmas~\ref{lem:torsor-piset}, \ref{lem:labeling}, and \ref{lem:conjugacy}.

For (b)$\Rightarrow$(c), let

$$
\psi:\pi_1(U,\bar u)\to \Hol(M)
$$

be a lift of $\phi$. Let $E\to U$ be the finite 'etale $\Hol(M)$-torsor
attached to the regular left action of $\Hol(M)$ on itself. Let

$$
Y=E/\Aut(M).
$$

Because the stabilizer of $0\in M$ under the affine action of $\Hol(M)$ is
$\Aut(M)$, the finite 'etale cover $Y$ is the one corresponding to the affine
$\pi_1(U,\bar u)$-set $M$. Also,

$$
E/M
$$

is the $\Aut(M)$-torsor attached to the composite

$$
\pi_1(U,\bar u)\xrightarrow{\psi}\Hol(M)\xrightarrow{\pi}\Aut(M),
$$

which is exactly $\phi$. Hence there is a canonical isomorphism

$$
\theta:E/M\xrightarrow{\sim}T_\phi.
$$

For (c)$\Rightarrow$(b), a $\Hol(M)$-torsor $E$ gives
a monodromy map

$$
\psi:\pi_1(U,\bar u)\to \Hol(M)
$$

well defined up to conjugacy by $\Hol(M)$. The extra datum

$$
\theta:E/M\xrightarrow{\sim}T_\phi
$$

fixes the image of $\psi$ in $\Aut(M)$ exactly. Therefore the remaining
ambiguity is conjugation by the kernel of

$$
\Hol(M)\twoheadrightarrow \Aut(M),
$$

namely by the translation subgroup $M$.

The pullback statement follows from functoriality of the fiber functor and the
construction of $E$ and $Y$ from finite continuous $\pi_1$-sets.

**Proof of Corollary~\ref{cor:unramified}.** Let $\eta$ be the generic point of $U$. By
\cite[Tag 03VD]{Stacks03VD},
$\pi_1(U,\bar\eta)$ is the Galois group of the maximal extension of $K$
unramified along $U$. Hence a lift

$$
\psi:\pi_1(U,\bar\eta)\to \Hol(M)
$$

is exactly a field-theoretic lift of the unramified quotient of $G_K$. Applying
O'Dorney's field theorem over $K$ gives the identification with the unramified
subset of $H^1(K,M)$ \cite[Theorem~4.5]{OD}.

When $U=\Spec \mathcal O_{K,S}$, codimension-one points are the finite places
outside $S$, so "unramified along $U$" is equivalent to "unramified at every
finite place $v\notin S$".

**Proof of Proposition~\ref{prop:sum}.** Choose lifts

$$
\psi_\alpha(g)=(\phi(g),\sigma_\alpha(g)),
\qquad
\psi_\beta(g)=(\phi(g),\sigma_\beta(g)).
$$

Then $Y_\alpha\times_U Y_\beta$ corresponds to the finite
$\pi_1(U,\bar u)$-set $M\times M$ with action

$$
g\cdot(x_1,x_2)=
(\phi(g)x_1+\sigma_\alpha(g),\ \phi(g)x_2+\sigma_\beta(g)).
$$

The addition map

$$
q:M\times M\to M,\qquad q(x_1,x_2)=x_1+x_2,
$$

is equivariant for the action attached to the sum cocycle
$\sigma_\alpha+\sigma_\beta$, because

$$
q(g\cdot(x_1,x_2))
=
\phi(g)(x_1+x_2)+\sigma_\alpha(g)+\sigma_\beta(g).
$$

Therefore $q$ induces a morphism of finite 'etale $U$-schemes

$$
Y_\alpha\times_U Y_\beta\to Y_{\alpha+\beta}.
$$

If $U=\Spec R$ is affine, dualizing the above morphism gives the inclusion

$$
L_{\alpha+\beta}\hookrightarrow L_\alpha\otimes_R L_\beta.
$$

The scheme-theoretic statement is primary; the algebra statement is its affine
dual.

## 5. Examples and applications

**Example 5.1 (Quadratic covers over $\mathbf Z\lbrack 1/2\rbrack$).** Let

$$
U=\Spec \mathbf Z[1/2],\qquad M=C_2,
$$

with trivial $\phi$. Then $\Aut(C_2)=1$ and $\Hol(C_2)\cong C_2$. Theorem
\ref{thm:main} says that $H^1_{\et}(U,C_2)$ is represented by quadratic 'etale
covers of $U$.

Examples include

$$
\mathbf Z[1/2]\times \mathbf Z[1/2],\qquad
\mathbf Z[1/2][i],\qquad
\mathbf Z[1/2][\sqrt{2}],\qquad
\mathbf Z[1/2][\sqrt{-2}].
$$

These are finite 'etale because the discriminants $-4$, $8$, and $-8$ are units
after inverting $2$.

The point here is not merely the generic fibers over $\mathbf Q$, but the fact
that the covers already exist over the arithmetic scheme $\Spec \mathbf Z[1/2]$.

**Example 5.2 (An $S_3$-cover over $\mathbf Z\lbrack 1/6\rbrack$).** Let

$$
U=\Spec \mathbf Z[1/6],\qquad M=C_3.
$$

Then

$$
\Aut(C_3)\cong C_2,\qquad \Hol(C_3)\cong S_3.
$$

Let

$$
\phi:\pi_1(U,\bar u)\to C_2
$$

be the quadratic character cutting out

$$
T_\phi=\Spec \mathbf Z[1/6][\omega],\qquad \omega^2+\omega+1=0.
$$

Consider

$$
L=\mathbf Z[1/6][x]/(x^3-2).
$$

Its discriminant is

$$
-108=-2^2 3^3,
$$

which is a unit on $U$, so $L$ is finite 'etale over $U$. Its generic fiber
has Galois closure with group $S_3$, and the corresponding quadratic resolvent
is $\mathbf Q(\sqrt{-3})$. Thus Theorem~\ref{thm:main} places $L$ naturally in

$$
H^1_{\et}(U,\mathcal M_\phi).
$$

**Example 5.3 (A function-field example).** Let

$$
U=\Spec \mathbf F_5[t,1/t(t-1)],\qquad M=C_2,
$$

again with trivial $\phi$. Then

$$
Y=\Spec \mathbf F_5[t,1/t(t-1)][y]/(y^2-t(t-1))
$$

is finite 'etale over $U$, because the discriminant $4t(t-1)$ is a unit on the
base. This gives a nontrivial class in

$$
H^1_{\et}(U,C_2).
$$

Hence the same formalism applies over open curves over finite fields.

## 6. Remarks and open questions

**Remark.** The theorem should be viewed as a concrete holomorph reformulation of standard
torsor theory in the specific setting of finite local systems, rather than as a
new abstract theorem of 'etale cohomology. Its novelty lies in the explicit
affine package and in the arithmetic-scheme interpretation parallel to
O'Dorney's field theorem.

**Remark.** The algebraic structure of $\Hol(M)$ is essential. The normal subgroup $M$
encodes translations, the quotient $\Aut(M)$ encodes the fixed linear part, and
the stabilizer of $0\in M$ identifies the degree-$|M|$ cover as a quotient by
$\Aut(M)$. The addition law in $H^1$ is controlled by the additive map
$M\times M\to M$.

**Remark.** Nothing here addresses bad reduction. Extending the same picture to finite flat
group schemes over Dedekind bases would require replacing finite 'etale
monodromy by a different kind of integral structure.

1. Can one formulate an analogous description for nonabelian finite local
systems, replacing ordinary $H^1$ by pointed nonabelian cohomology?

2. Is there a finite-flat analogue over Dedekind schemes that remains valid
at primes dividing $|M|$?

3. Can the additive compatibility in Proposition~\ref{prop:sum} be refined
into a useful description of cup products or low-degree pairings?

4. For $U=\Spec \mathcal O_{K,S}$, can one make the resolvent torsor
explicitly computable for small groups such as $C_3$, $C_4$, and $V_4$?

5. What is the correct formulation in towers $U_n\to U$, especially in
Iwasawa-theoretic situations?

6. Is there a useful function-field refinement involving Artin--Schreier and
Kummer covers on open curves over finite fields?

## References

- [O'Dorney, 2025, arXiv:2506.11310] Evan M. O'Dorney, *'Etale algebras and the Kummer theory of finite Galois modules*, arXiv:2506.11310, 2025.
- [Stacks Project Authors, 2025, Tag 03VD] The Stacks Project Authors, *The Stacks Project*, Tag 03VD (Fundamental groups), 2025.
- [Stacks Project Authors, 2025, Tag 0DV4] The Stacks Project Authors, *The Stacks Project*, Tag 0DV4 (Locally constant sheaves and the fundamental group), 2025.
- [Stacks Project Authors, 2025, Tag 0A5G] The Stacks Project Authors, *The Stacks Project*, Tag 0A5G (First cohomology and torsors), 2025.

