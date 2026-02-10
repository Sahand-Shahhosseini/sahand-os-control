# sahand-os-control

**Control-plane repo for the Sahand account.**  
This repository defines **how work is registered and executed** across the account, without storing sensitive content.

## The Two-Program Engine (v0)

- **Program A — Task Commander (WHAT exists):**
  - Tasks live as **GitHub Issues** (optionally organized in a Project board).

- **Program B — Task Runner (HOW to execute):**
  - Each non-trivial task is executed using the **`TASK_RUN_1_100`** issue template (1..100 steps).

This repo is intentionally **thin**: it coordinates work; it does not contain core SUFCC/SSTAI proofs or any sensitive datasets.

## Quickstart (click-only, 60 seconds)

1. Go to **Issues → New issue**
2. Choose **TASK_RUN_1_100**
3. Fill:
   - Goal, DoD, Constraints, Inputs/Outputs, Acceptance Criteria
   - Steps **001–010** (Scope Lock)
4. Execute the task using **GitHub Desktop** (no CLI):
   - edit files locally → review diff → commit → push
   - open PR if the change is non-trivial

## Key Files

- **Rules for agents:** [`AGENTS.md`](AGENTS.md)
- **Engine spec:** [`docs/SPEC_TWO_PROGRAM_ENGINE_v0.md`](docs/SPEC_TWO_PROGRAM_ENGINE_v0.md)
- **1..100 runner template:** [`.github/ISSUE_TEMPLATE/task_run_1_100.md`](.github/ISSUE_TEMPLATE/task_run_1_100.md)
- **Account doc index:** [`docs/14DOC_INDEX.md`](docs/14DOC_INDEX.md)
- **Scope ladder:** [`docs/SCOPE_LADDER.md`](docs/SCOPE_LADDER.md)
- **External review protocol:** [`docs/EXTERNAL_REVIEW_PROTOCOL.md`](docs/EXTERNAL_REVIEW_PROTOCOL.md)
- **GitHub Desktop tool spec:** [`docs/TOOLS_GIT_DESKTOP_v0.md`](docs/TOOLS_GIT_DESKTOP_v0.md)

## Safety (non-negotiable)

- **No CLI** for the human executor (click-only).
- **No secrets in cloud** (no patient data, no credentials, no core unpublished SUFCC/SSTAI dumps).
- **Minimal scope**: avoid creating new large structures without a task.
- **Fail-closed**: if unclear → stop and ask.

