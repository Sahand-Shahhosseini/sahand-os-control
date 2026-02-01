# AGENTS RULES (SAHAND-OS CONTROL REPO)

This repository is **control-plane only**.  
All agents (Codex, ChatGPT, other LLMs, automation scripts) MUST follow these rules.

---

## 0. Scope of This Repo

- This repo defines:
  - Task system (Commander + Runner)
  - 1..100 execution protocol (`TASK_RUN_1_100`)
  - Document index (`docs/14DOC_INDEX.md`) and review pipeline
- This repo does **NOT** contain:
  - Core SUFCC/SSTAI mathematics
  - Sensitive datasets (patients, clinical, private)
  - Production secrets or credentials

If a change attempts to push any of the above into this repo, the agent MUST stop.

---

## 1. General Agent Constraints

1. **No CLI for the user**
   - All workflows must be executable by the user with clicks only (GitHub UI, Desktop apps).
   - Do not instruct the user to run git commands, shells, or terminals.

2. **No secrets in cloud**
   - Do not upload or request:
     - Patient data or any PII
     - Private datasets
     - API keys, tokens, passwords
     - Core unpublished SUFCC/SSTAI math that the owner wants to keep local
   - If in doubt, assume it is sensitive and keep it local.

3. **Fail-closed**
   - If requirements, permissions, or scope are unclear, STOP and request clarification.
   - Never “guess” by creating new top-level structures or pushing large dumps.

4. **Minimal-scope changes**
   - Prefer editing existing files over creating new ones.
   - Do not add new documents/specs unless the task explicitly requests them.
   - Avoid “big refactors” unless there is a dedicated issue for that.

---

## 2. TASK_RUN_1_100 Protocol

All non-trivial work MUST be driven by a `TASK_RUN_1_100` issue.

- Every such issue is the **single source of truth** for:
  - Goal
  - DoD (Definition of Done)
  - Constraints
  - Inputs / Outputs
  - 1..100 step checklist

Agent responsibilities:

1. Read the issue fully before making any changes.
2. Respect all constraints listed in the issue and in this `AGENTS.md`.
3. Keep changes **strictly within the stated scope**.
4. For each execution phase (design / implementation / verification), update the relevant steps in the checklist (when possible) or describe progress in comments.

---

## 3. GitHub Workflow Rules

1. **Issues**
   - Each task = one issue.
   - Do not mix unrelated tasks in a single issue.
   - Link issues to the Project board (Commander).

2. **Pull Requests**
   - All non-trivial changes MUST go through a PR.
   - PR description MUST reference the driving issue:  
     `Fixes #<issue_number>` or `Relates-to #<issue_number>`.
   - Keep PRs small and focused.

3. **Docs Index**
   - Whenever a document in `docs/` changes status or scope, update `docs/14DOC_INDEX.md`.
   - Allowed status keywords: `EMPTY`, `SCOPE_LOCKED`, `DRAFT`, `RC0`, `RC1`, `APPROVED_EXT`, `LOCKED_v0.1`.

4. **Releases**
   - RC and final releases are created manually by the owner.
   - Agents may propose release names and notes, but must NOT publish without explicit instruction.

---

## 4. External Review Pipeline

For documents belonging to DOCSET_07 or DOCSET_14:

1. Agents can help:
   - Prepare RC0/RC1 content
   - Generate PDFs/ZIP structures (spec descriptions, not actual binary builds)
   - Draft reviewer instructions/questions

2. Agents must NOT:
   - Invent fake reviewer feedback
   - Mark a document as `APPROVED_EXT` without real external confirmation

All real reviewer feedback is logged in `DOC14` (External Feedback Log) and linked to issues.

---

## 5. Safety and Escalation

Agents MUST escalate (stop and ask) when:

- A task appears to require sensitive data or core SUFCC/SSTAI math in this repo.
- A requested change conflicts with these rules.
- The user explicitly asks for something that violates “No secrets in cloud” or “No CLI”.

In such cases, the correct behaviour is to:
1. Explain which rule would be violated.
2. Propose an alternative that keeps the repo safe (e.g., local-only notes, redacted examples).

---

## 6. Summary

This repo is a **control and coordination layer**:
- Design tasks here
- Track execution here
- Keep proofs, sensitive math, and private datasets outside

Agents exist to make the control layer precise, minimal, auditable, and safe.
