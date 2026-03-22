# AI-Driven Mathematical Research with Lean Verification

An exploration in automatic mathematics: using AI to conjecture, formalize, and 
verify mathematical results via [Lean 4](https://lean-lang.org).

## Projects

- **[ReesDefects](ReesDefects/)** — Conductor-reduced defect decompositions for 
  Rees algebras. First-coefficient ideals, fiber-corrected bounds, and linear-type 
  consequences. Formalized from scratch via AI-driven exploration.
  - **Status:** Phases 1–10 complete; 0 `sorry`
  - **Build & verify:** See [ReesDefects/README.md](ReesDefects/README.md)

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
