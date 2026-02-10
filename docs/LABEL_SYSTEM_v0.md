# LABELS · Minimal System — v0.1

This repo uses labels to keep Program A (Commander) and Program B (Runner) readable.

## Required labels
- `commander` : Issues that define tasks (WHAT exists)
- `task-run`  : Execution runs using TASK_RUN_1_100 (HOW to execute)

## Optional labels (recommended)
- `doc-7`, `doc-14` : document-track routing
- `ops` : control-plane / tooling changes
- `blocked` : hard blocker exists
- `needs-review` : waiting for review

## Rule
Labels never replace acceptance criteria.  
Acceptance = artifacts exist + checks pass + (if needed) external review logged.
