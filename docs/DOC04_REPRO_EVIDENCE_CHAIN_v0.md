# DOC04 — Repro & Evidence Chain (v0)

## Objective
Ensure every non-trivial change can be audited and reproduced.

## Evidence artifacts
- File-based plans: `docs/RUNS/*.md`
- Issue drafts: `docs/ISSUE_DRAFTS/*.md`
- Document skeletons: `docs/DOC0X_*.md`
- Releases: RC0/RC1/... when packaging exists

## Rules
1) Every major task has an Issue (WHAT).
2) Every non-trivial execution has a RUN (HOW).
3) Every RUN references committed outputs.
4) External review requires stored feedback + linkage to fixes.

## Fail-closed principle
If a change might leak sensitive material:
- Do not commit it.
- Replace it with a pointer-only note.
