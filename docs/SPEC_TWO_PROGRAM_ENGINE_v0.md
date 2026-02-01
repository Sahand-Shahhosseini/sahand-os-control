# SPEC · Two-Program Engine v0
Control-plane for Sahand Account (GitHub + Codex)

Version: v0.1-draft  
Repo: sahand-os-control  
Author: Sahand × ChatGPT  
Scope: This SPEC is about HOW tasks are defined and executed (1..100), not about the math/content of SUFCC/SSTAI.

---

## 0. Purpose

The goal of this Two-Program Engine is:

1. To have **ONE place** that defines:
   - *What tasks exist* across the account (Program A – Commander)
   - *How each task is executed in 1..100 steps* (Program B – Runner)

2. To integrate with:
   - Existing account-level structures:
     - 7DOC / 14DOC pipelines
     - P0_CONSTITUTION, MASTER_PROGRAM, RUN_PLAN, etc.
     - D:\ OS and Runner structure
   - But without duplicating their content.

3. To produce, **optionally**, a final “report/document for this chat/page” as an artifact,
   NOT to turn everything into a document factory by default.

---

## 1. Position in Sahand’s Account

- This Engine lives at the **control-plane level**:
  - It does NOT store core SUFCC/SSTAI proofs or clinical data.
  - It orchestrates tasks that *refer* to those projects.

- Relation to existing components:
  - **P0_CONSTITUTION / MASTER_PROGRAM**: define global axes, values, and RUN evidence rules.
    - Two-Program Engine must respect the “no percent without RUN artifact” rule.
  - **D:\ OS**: physical execution space.
    - Tasks here may describe what to do on D:\, but this repo does NOT mirror D:\ structure.
  - **7DOC / 14DOC**: higher-level document/report pipelines.
    - Some tasks will be “Fill DOC0X to RC0/RC1”, but this Engine does not force everything into 7/14 docs.

- Relation to this chat/page:
  - This page is the **design + bootstrap** log for the Two-Program Engine.
  - A future report like `ThisPage_TwoProgramEngine_v0_1.md` MAY be created, but is not required for operation.

---

## 2. Program A – Task Commander (WHAT to do)

**Object:** TASK

- Representation:
  - GitHub Issue in repo `sahand-os-control`.
  - Optional: attached to a GitHub Project board (columns: Todo / Ready / Doing / Review / Done).

- Minimal fields (inside the issue body):
  - Goal: 1–2 line description of the final state.
  - Context: why this task matters (link to MASTER_PROGRAM / D:\ / SUFCC / etc.).
  - Domain tag: e.g. DOC / CODE / OS / SUFCC / SSTAI / CLINIC / VALUES.
  - Priority: P0 / P1 / P2.
  - Risk: Low / Medium / High.
  - Optional linkage:
    - To 7DOC/14DOC (if the task is about a document).
    - To RUN_PLAN / RUN_ID in MASTER_PROGRAM.

- Hard constraints (Commander-level):
  - Every serious piece of work must appear as a TASK here, or be explicitly delegated elsewhere.
  - No “ghost work”: nothing big happens only in chat or only on D:\ without at least one TASK.

---

## 3. Program B – Task Runner (HOW to do it in 1..100)

**Object:** RUN_1_100

- Representation:
  - Use GitHub Issue Template: `TASK_RUN_1_100` (`.github/ISSUE_TEMPLATE/task_run_1_100.md`).
  - Each non-trivial TASK should either:
    - Use this template directly, or
    - Have a linked RUN_1_100 issue that references it.

- Structure (already implemented in template):
  - Goal, DoD, Constraints.
  - Reviewer Pack mapping (if the task produces a doc).
  - Inputs / Outputs.
  - Acceptance Criteria.
  - 001–010: Scope lock.
  - 011–030: Design / outline.
  - 031–070: Implementation (often via Codex + PRs).
  - 071–090: Verification.
  - 091–100: Release / Lock / Close.

- Invariants:
  - No CLI (user is in Executor-mode).
  - No secrets in cloud (no patient data, no SUFCC core math dumps, no credentials).
  - Prefer minimal changes; avoid big refactors unless clearly scoped.

---

## 4. Agents and Safety (AGENTS.md binding)

This Engine assumes the existence of Agents (ChatGPT, Codex, future tools).  
They MUST follow `AGENTS.md`:

- No CLI instructions to user.
- No sensitive data in this repo.
- Changes go through Issues + PRs.
- `docs/14DOC_INDEX.md` is the index of higher-level documents; update it when document-like artifacts change state (EMPTY → SCOPE_LOCKED → DRAFT → RC0 → RC1 → APPROVED_EXT → LOCKED_v0.1).
- External review (if any) must be backed by real feedback, not invented.

---

## 5. Minimal Usage Pattern (v0)

At v0, the Engine must support at least these flows:

1. **Pure operational task (no doc)**  
   Example: “Clean and classify D:\ runners”
   - Commander: TASK issue with basic fields.
   - Runner: TASK_RUN_1_100 issue that describes the 1..100 steps.
   - Outputs: e.g. `docs/D_DRIVE_RUNNERS.md` + real changes on D:\.

2. **Document-related task (optional 7DOC/14DOC)**  
   Example: “Create a RC0 outline for DOC01 Executive Summary”
   - Commander: TASK issue tagged DOC + DOCSET_07.
   - Runner: TASK_RUN_1_100 with clear DoD and mapping to DOC01.
   - Outputs: `docs/DOC01_...md` in this repo (or in the relevant doc repo) + maybe a PDF later.

3. **Meta-task: upgrade this SPEC**
   - Commander: TASK “Upgrade Two-Program Engine SPEC v0 → v0.2”.
   - Runner: TASK_RUN_1_100 focusing on this file.
   - Outputs: new version of this SPEC and a short change-log.

---

## 6. Out of Scope (for v0)

This SPEC v0 explicitly does NOT cover:

- How λ₂, μ_EE, or SUFCC-specific metrics are logged.
- How P vs NP, RH, or any math result is formalized.
- How clinical protocols (Heart Clinic, Zygote Homeostasis, etc.) are validated.
- How 7DOC/14DOC are structured internally beyond simple indexing.

Those remain governed by:
- P0_CONSTITUTION
- MASTER_PROGRAM
- Their own project-specific SPECS.

This Engine only provides a consistent way to:
- Register a task,
- Execute it in a 1..100 pattern,
- Optionally attach it to the existing doc/review pipelines.

---

## 7. Versioning and Evolution

- This file is **SPEC v0**.
- Any changes to this SPEC must go through:
  - A TASK issue explicitly named like:  
    `"[TASK] Upgrade Two-Program Engine SPEC v0.x → v0.y"`
  - A RUN_1_100 execution for that task.
  - A PR that updates this file and, if needed, `AGENTS.md` or `TASK_RUN_1_100`.

- Future versions (v0.2, v0.3, …) may:
  - Add tighter links to 7DOC/14DOC.
  - Add mapping to RUN_PLAN and Q1 gates.
  - Add explicit link to D:\ folder structures.

For now, v0 is intentionally thin and operational.
