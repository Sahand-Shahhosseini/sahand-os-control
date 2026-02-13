# ISSUE DRAFT — P0: Convert placeholders to real issues (close dangling pointers)

**Goal:** Remove/repair placeholder issues and dangling references so the control-plane is auditable.

**Why:** Placeholder issues break execution proofs and make runs non-reproducible.

**Scope:**
- Identify placeholder issues (template-only bodies, empty sections, non-existent references).
- For each: either (a) fill with Goal/Outputs/AC or (b) close & replace with a real issue.

**Outputs:**
- `docs/P0_PLACEHOLDER_AUDIT_v1.md` with: issue_id, status, action_taken, replacement_link.

**Acceptance Criteria:**
- No open issue remains with template-only content.
- No issue references non-existing issues without a replacement link.
- Audit file exists and is updated on `main`.
