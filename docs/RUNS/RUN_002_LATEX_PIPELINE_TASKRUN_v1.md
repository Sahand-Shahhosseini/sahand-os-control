# RUN_002 — PDF/LaTeX Pipeline (TASK_RUN_1_100) — v1

## Objective
Stabilize the LaTeX/PDF pipeline so at least one representative PDF builds cleanly in GitHub Actions.

## Outputs (must be committed)
- Updated workflow/config files
- One representative PDF build target documented (RC0 candidate)

## Acceptance Criteria (pass/fail)
- AC1: GitHub Actions build passes on `main`.
- AC2: One produced PDF is verified typography-clean (no corrupted glyphs).
- AC3: The fix is documented in a short “build rules” section.

## Steps 001–030 (outline; fill as executed)
- [ ] 001 Confirm which PDF is the representative target
- [ ] 002 Capture current build failure logs (link)
- [ ] 003 Identify root cause category (fonts, engine, packages, table overflow)
- [ ] 004 Minimal patch plan (<= 3 files)
- [ ] 005 Codex prompt prepared (exact changes only)
- [ ] 006 Implement patch on a branch
- [ ] 007 Run CI via PR and inspect logs
- [ ] 008 Iterate until pass
- [ ] 009 Document build rules
- [ ] 010 Merge
- [ ] 011–030 Reserve
