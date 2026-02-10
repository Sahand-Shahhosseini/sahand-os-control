# PROJECT · Setup (click-only) — v0.1

Scope: `sahand-os-control` control-plane repo  
Executor mode: GitHub web UI + GitHub Desktop (NO CLI)

## Goal
Create a minimal **Commander board** so Program A (WHAT) is visible and stable.

## Create a GitHub Project (UI steps)
1. Open the repo on GitHub: `Sahand-Shahhosseini/sahand-os-control`
2. Click **Projects**
3. Click **New project**
4. Choose **Board** (Kanban)
5. Name it:
   - `Commander Board — sahand-os-control`
6. Create columns:
   - `Backlog`
   - `Active`
   - `Review`
   - `Done`

## Add Issues to the board
- For each new task:
  1. Create an Issue using **TASK_COMMANDER**
  2. Add the Issue to the project board
  3. When execution begins, open a **TASK_RUN_1_100** issue and link it

## Minimal label set (create in GitHub UI)
Create these labels (Repo → Issues → Labels → New label):
- `commander` — task registration (WHAT)
- `task-run` — execution run (HOW, 1..100)
- `doc-7` — DOCSET_07 scope
- `doc-14` — DOCSET_14 scope
- `ops` — repo/process/tooling changes
- `blocked` — cannot proceed
- `needs-review` — waiting for review (internal or external)

Notes:
- Labels are metadata, not “truth”. Real truth = artifacts + checks.

## Done criteria
- A Project board exists with the 4 columns above.
- At least 1 test issue exists and is added to `Backlog`.
