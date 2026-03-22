# Method: Local renormalized Rényi transfer for coupled axial blocks.
- **Short tag:** local Rényi rank selection
- **Mechanism type:** defect control, monotonicity, spectral cancellation
- **Tags:** local-renormalization, Rényi-rank, coupled-axial, Riccati, cylindrical-blowup, matrix-monotonicity
- **Input setting:** The coupled axial neutral system for rescaled mean curvature flow near a generalized cylinder, with matrix mode A, vector mode b, and rough late-time error bounds.
- **New object / driver:** The local renormalization M = A - (1/(2 rho)) bb^T together with the shifted Rényi-defect package.
- **Obstruction resolved:** The axial vector coupling prevents direct application of the Riccati--Rényi rank theorem to the raw matrix mode A.
- **Expected outputs:** Shifted Rényi monotonicity and rank selection for the renormalized system, plus a supercubic comparison that transfers the finite-scale rank criterion back to the raw matrix A.
- **Transfer targets:** Refined cylindrical blow-up analysis and other coupled center-mode systems where a lower-order interaction must be renormalized away before applying matrix monotonicity tools.
- **Main technical risk:** The last transfer from M back to A depends on sharp suppression of the vector mode and on very precise comparison errors.

**Condensation.** The new viewpoint is that the coupled axial block should first be renormalized locally, replacing the raw matrix mode by M = A - (1/(2 rho)) bb^T before any Rényi-rank analysis is attempted. This overcomes the obstruction that the vector coupling inserts a persistent lower-order forcing into the A equation and breaks the direct Riccati picture. The operative mechanism is to prove that the renormalized variable M satisfies a cubic-accurate Riccati law, apply the shifted Rényi theorem there, and then compare the shifted defects of M and A using the sharper axial decay. If it works, it supplies a complete route from the coupled geometric system to finite-scale rank detection for the original raw matrix mode.

## Used in
- [../9-1 Quadratic leakage, local renormalization, and Rényi rank selection on cylindrical neutral blocks.md](../9-1 Quadratic leakage, local renormalization, and Rényi rank selection on cylindrical neutral blocks.md)
