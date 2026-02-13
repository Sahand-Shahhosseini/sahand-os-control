# DOC03 — Task System (Commander/Runner) (v0)

## Commander (WHAT) = Issue contract
A task Issue must contain:
- Goal (1–2 lines)
- Scope: IN / OUT
- Outputs (file paths, PR links, releases)
- Acceptance Criteria (testable)
- Constraints (no secrets, click-only, minimal scope)

## Runner (HOW) = TASK_RUN_1_100
Use `.github/ISSUE_TEMPLATE/task_run_1_100.md`.
Minimum viable fill:
- Steps 001–010 (scope lock)
- Steps 011–030 (design / outline)
- Outputs + AC + kill-switch

## Evidence rule (operational)
“No progress claim without artifacts.”
Any claimed completion must have:
- committed file(s) or PR(s) or Release link(s)

## Minimal workflow (click-only)
Issue → (branch) → local edits → commit → push → PR → merge → update Issue → close
