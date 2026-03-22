# Method: Finite-flux and annular-energy refinement of Hermitian ALF Teukolsky control.
- **Short tag:** finite-flux annular ALF refinement
- **Mechanism type:** boundary-layer, spectral cancellation, asymptotic matching
- **Tags:** finite-flux, annular-energy, Teukolsky, ALF-instanton, profile-weight, mode-stability
- **Input setting:** A Hermitian non-Kähler ALF instanton with weighted Teukolsky field χ, explicit inverse Weyl asymptotics, and profile or annular decay assumptions.
- **New object / driver:** The finite boundary-flux criterion and the annular interpolation package at the Teukolsky-field level.
- **Obstruction resolved:** The original mode-stability proof did not separate finite-flux control, endpoint decay, and annular-energy criteria, so the sharp boundary threshold remained hidden.
- **Expected outputs:** Finite-flux identities, profile-weighted vanishing theorems including endpoint logarithmic cases, an annular-energy rigidity theorem, and explicit verification on Kerr and related families.
- **Transfer targets:** Other ALF stability or critical-decay energy arguments where one needs a boundary criterion finer than a single power law.
- **Main technical risk:** The endpoint regimes are genuinely sharp, so the interpolation between boundary area growth, profile weights, and bulk energy must be exact.

**Condensation.** The new viewpoint is to analyze Hermitian ALF mode stability first at the Teukolsky-field level, where finite flux and annular energy can be stated cleanly before being transferred back to perturbations. This overcomes the obstruction that the original theorem mixed the geometric perturbation decay with the actual boundary criterion and obscured the endpoint behavior. The operative mechanism is a positive boundary-flux identity sharpened by profile weights and dyadic annular estimates, all under the explicit inverse Weyl asymptotic needed to control the boundary density. If it works, it yields finite-flux conservation, vanishing theorems at and above the critical threshold, and practical rigidity criteria that can be checked on explicit ALF families.

## Used in
- [../6-3 Finite-Flux Profile-Weighted and Annular-Energy Refinements of Hermitian ALF Mode Stability.md](../6-3 Finite-Flux Profile-Weighted and Annular-Energy Refinements of Hermitian ALF Mode Stability.md)
