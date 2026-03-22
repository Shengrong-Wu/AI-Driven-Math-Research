# Method: Degree-controlled Prym splitting in towers.
- **Short tag:** degree-controlled Prym splitting
- **Mechanism type:** defect control, transport, rigidity
- **Tags:** Prym, tower, Frobenius, class-group, degree-torsion, Jacobian
- **Input setting:** A tower of finite separable covers of smooth projective geometrically connected curves over a finite field.
- **New object / driver:** Addition maps between Prym varieties with kernels annihilated by deg(f), together with relative Weil polynomials and an explicit defect subgroup for relative class groups.
- **Obstruction resolved:** The classical isogeny P_(g o f) ~ P_f x P_g gives only coarse decomposition information and does not explain integral Frobenius control or the exact arithmetic defect in class groups.
- **Expected outputs:** Integral prime-to-degree splittings on Tate modules, multiplicativity of relative Weil polynomials and point counts, and exact prime-to-degree multiplicativity for relative class groups.
- **Transfer targets:** Arithmetic of curves over finite fields, explicit Jacobian/Prym calculations, and tower-level point-count or class-group formulas.
- **Main technical risk:** Degree-torsion defects persist exactly at the bad primes dividing deg(f) or the characteristic, so the clean multiplicative statements are genuinely prime-to-degree.

**Condensation.** The new viewpoint is to refine Prym decomposition in towers from an isogeny statement to a degree-controlled and Frobenius-aware splitting package. This overcomes the obstruction that the usual factorization hides the integral defect and therefore says little about point counts or relative class groups. The operative mechanism is to analyze the addition maps, prove their kernels are annihilated by the intermediate degree, and then read off the induced factorization on Tate modules, Weil polynomials, and rational points. If it works, it yields multiplicative formulas for Pryms and relative class groups away from the degree torsion and makes the arithmetic defect completely explicit.

## Used in
- [../4-2 Prym decompositions and relative class groups in towers.md](../4-2 Prym decompositions and relative class groups in towers.md)
