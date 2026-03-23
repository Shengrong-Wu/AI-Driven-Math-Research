# AI-Driven Mathematical Research with Lean Verification

An exploration in automatic mathematics: using AI to conjecture, formalize, and 
verify mathematical results via [Lean 4](https://lean-lang.org).

## Projects

- **[ReesDefects](ReesDefects/)** — Conductor-reduced defect decompositions for
  Rees algebras. First-coefficient ideals, fiber-corrected bounds, and linear-type
  consequences. Formalized from scratch via AI-driven exploration.
  - **Status:** Phases 1–10 complete; 0 `sorry`
  - **Build & verify:** See [ReesDefects/README.md](ReesDefects/README.md)

- **[HighDimNullBianchi](HighDimNullBianchi/)** — Hybrid Lean 4 + Mathematica/xAct
  formalization of Proposition 3.6 from [arXiv:1705.09674](https://arxiv.org/abs/1705.09674):
  the complete frame-expanded Bianchi system (B1)–(B14) for an $(n+2)$-dimensional vacuum
  Lorentzian manifold in double-null gauge. Uses a certificate pipeline where Mathematica/xAct
  performs tensor algebra and exports JSON evidence certificates checked by Lean.
  - **Status:** All 14 equation statements kernel-checked; 1 equation (B9) fully kernel-proved; 18/19 certificates verified with xAct.
  - **Build & verify:** See [HighDimNullBianchi/README.md](HighDimNullBianchi/README.md)

## Methodology

This project uses large language models (thinking model, CLI code agents) to:
1. **Conjecture** what needs to be proved mathematically
2. **Formalize** the conjecture in Lean 4
3. **Verify** the proof mechanically with 0 `sorry`

The result is a structured record of the AI reasoning and the formally verified mathematics.

## Credits

- **Research direction & formalization oversight:** Shengrong Wu
- **AI agents:** ChatGPT 5.4 Codex, Claude Sonnet 4.6
- **Thinking model:** ChatGPT 5.4 Pro

## License

MIT (see [LICENSE](LICENSE))
