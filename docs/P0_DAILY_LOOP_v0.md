# P0 Daily Loop (click-only) — v0

This repo is the **control-plane**. You do not “work” here; you **orchestrate work** here.

## Hard constraints
- Executor is **click-only**: GitHub Desktop + GitHub Web UI. No terminal/CLI.
- **No secrets in cloud**: no patient data, credentials, private datasets, or proprietary core dumps.
- Prefer **small diffs** and **file-based evidence**.

## Daily loop (15–35 minutes)
1) **Pick ONE open Issue** (WHAT)
   - Prefer P0 priority.
   - Confirm it has Goal + DoD + Scope + Outputs + Acceptance Criteria.

2) If the Issue is not executable yet, make it executable
   - Add missing fields (Goal/DoD/AC).
   - If it’s a placeholder: close & replace (link replacement).

3) Convert to a RUN (HOW)
   - If it needs a 1..100 plan, open a `TASK_RUN_1_100` issue linked to the parent.
   - Minimal required filling: Steps 001–030 + Outputs + AC.

4) Create/update the **file artifacts** needed
   - docs/RUNS/*.md, docs/ISSUE_DRAFTS/*.md, docs/DOC0X_*.md
   - Update `docs/14DOC_INDEX.md` statuses when doc artifacts move (EMPTY → DRAFT, etc.)

5) GitHub Desktop execution (click-only)
   - Create branch (if multi-file or risky).
   - Commit with a precise message.
   - Push.
   - Create PR (for multi-file changes) and merge after review.

6) Close the loop
   - Update the Issue with links to artifacts/PR.
   - If DoD is met: close the Issue.
   - If not: add next-step checklist (no ambiguity).

## Commit discipline
- One commit = one intent.
- Prefer messages: `P0: ...` / `14DOC: ...` / `RUN: ...`
