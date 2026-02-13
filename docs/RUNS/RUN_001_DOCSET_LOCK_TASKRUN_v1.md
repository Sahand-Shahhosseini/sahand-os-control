# RUN_001 — Docset Lock + Stage0 Close (TASK_RUN_1_100) — v1

## Objective
Move the control-plane from “defined” to “executable” by creating minimal doc skeletons,
updating the 14DOC index, and writing the daily loop that prevents drift.

## Outputs (must be committed)
- `docs/P0_DAILY_LOOP_v0.md`
- `docs/DOC01_EXECUTIVE_SUMMARY_v0.md`
- `docs/DOC03_TASK_SYSTEM_COMMANDER_RUNNER_v0.md`
- `docs/DOC04_REPRO_EVIDENCE_CHAIN_v0.md`
- `docs/DOC06_EVAL_EXTERNAL_REVIEW_PROTOCOL_v0.md`
- Updated `docs/14DOC_INDEX.md` (core docs EMPTY→DRAFT)

## Acceptance Criteria (pass/fail)
- AC1: The five output files exist on `main`.
- AC2: `docs/14DOC_INDEX.md` marks DOC01/DOC03/DOC04/DOC06 as DRAFT and links them.
- AC3: No doc remains “EMPTY” without an explicit TODO and a next-action pointer.

## Steps 001–030 (filled; continue as needed)
### 001–010 (Scope lock)
- [ ] 001 Confirm objective and outputs list
- [ ] 002 Confirm constraints (click-only, no secrets, minimal diffs)
- [ ] 003 Confirm target branch strategy (direct-to-main or PR)
- [ ] 004 Define pass/fail acceptance criteria
- [ ] 005 Define kill-switch: stop if any sensitive content might be committed
- [ ] 006 Identify existing files that will be updated (14DOC_INDEX)
- [ ] 007 Decide filenames (must match this run)
- [ ] 008 Reserve
- [ ] 009 Reserve
- [ ] 010 Add this run to tracking Issue and set status → Ready

### 011–020 (Design / outline)
- [ ] 011 Write `docs/P0_DAILY_LOOP_v0.md`
- [ ] 012 Write skeleton for DOC01
- [ ] 013 Write skeleton for DOC03
- [ ] 014 Write skeleton for DOC04
- [ ] 015 Write skeleton for DOC06
- [ ] 016 Update `docs/14DOC_INDEX.md` to link these docs
- [ ] 017 Self-check: no forbidden content
- [ ] 018 Commit (single intent)
- [ ] 019 Push / PR if used
- [ ] 020 Merge / land on main

### 021–030 (Verification)
- [ ] 021 Verify links in 14DOC_INDEX render correctly
- [ ] 022 Verify files exist on main
- [ ] 023 Update parent Issue with links to commit/PR
- [ ] 024 Close parent Issue if DoD satisfied
- [ ] 025 Reserve
- [ ] 026 Reserve
- [ ] 027 Reserve
- [ ] 028 Reserve
- [ ] 029 Reserve
- [ ] 030 Reserve
