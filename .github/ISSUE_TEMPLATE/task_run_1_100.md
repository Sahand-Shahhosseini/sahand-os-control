---
name: TASK_RUN_1_100
about: Execute one task in 1..100 steps (Codex + click-only workflow)
title: "[TASK] "
labels: ["task-run"]
assignees: []
---

# TASK: <clear, specific title>

## Goal (1 sentence)
Describe exactly what will exist when this task is finished.

## Definition of Done (DoD)
- [ ] Deliverable produced (Doc / PR / PDF / Release) and linked here
- [ ] `docs/14DOC_INDEX.md` updated (status + scope fields)
- [ ] Ready for external review OR explicitly marked as internal-only

## Constraints (hard rules)
- **No CLI**: user actions must be click-only
- **No secrets in cloud**: do not upload sensitive core/IP, patient data, credentials, or private datasets
- **Fail-closed**: if anything is ambiguous, stop and ask before proceeding
- **Prefer minimal scope**: do not create extra docs unless explicitly required; fill existing docs first

## Reviewer Pack Mapping
- Docset: [ ] DOCSET_07 (Reviewer Pack)  |  [ ] DOCSET_14 (Full Pack)
- Target Release: [ ] RC0  [ ] RC1  [ ] RC2  [ ] v0.1-lock

## Context / Background
(Why this task exists, and where it sits in the overall program.)

## Inputs
- Repositories / paths involved:
- References (links, notes, PDFs, prior docs):
- Assumptions:

## Outputs (expected artifacts)
- Files to be created/updated:
- PR(s) expected:
- PDF/ZIP/Release expected:

## Acceptance Criteria (must be testable)
- AC1:
- AC2:
- AC3:

## Kill-Switch (stop conditions)
Stop immediately if any of the following occurs:
- Sensitive content would be uploaded to GitHub/Base44/Codex
- Scope grows beyond MVP without an explicit “SCOPE_CHANGE” issue
- Required repo feature is missing (Issues disabled, permissions blocked, etc.)

---

# Execution Plan — 1..100 Steps (checkbox protocol)

## Steps 001–010 (Scope Lock)
- [ ] 001 Confirm Goal + DoD are concrete and measurable
- [ ] 002 Define boundaries: what is IN scope vs OUT of scope
- [ ] 003 Identify inputs and their exact locations/links
- [ ] 004 Identify outputs (files/PR/release) with exact names
- [ ] 005 Choose docset (DOCSET_07 or DOCSET_14) and target release (RC0/RC1/…)
- [ ] 006 List key risks (privacy, scope creep, missing access)
- [ ] 007 Write acceptance criteria (AC1..ACn)
- [ ] 008 Define kill-switch conditions
- [ ] 009 Choose minimal MVP (v0 scope) for RC0
- [ ] 010 Add this issue to Project board and set status → Ready

## Steps 011–030 (Design / Outline)
- [ ] 011 Draft outline (sections/modules) for the deliverable
- [ ] 012 Define terminology (glossary terms if needed)
- [ ] 013 Define interfaces (inputs/outputs) if this is an agent/spec
- [ ] 014 Cross-link to relevant docs in `/docs`
- [ ] 015 Create minimal structure (headings, tables, placeholders)
- [ ] 016 Ensure “no empty sections” rule (use TODO markers instead)
- [ ] 017 Self-review for redundancy and unclear claims
- [ ] 018 Update `docs/14DOC_INDEX.md` → status `SCOPE_LOCKED` (or equivalent)
- [ ] 019 Prepare Codex instruction prompt (exactly what to change)
- [ ] 020 Design locked — no scope expansion beyond MVP without SCOPE_CHANGE
- [ ] 021 Reserve
- [ ] 022 Reserve
- [ ] 023 Reserve
- [ ] 024 Reserve
- [ ] 025 Reserve
- [ ] 026 Reserve
- [ ] 027 Reserve
- [ ] 028 Reserve
- [ ] 029 Reserve
- [ ] 030 Reserve

## Steps 031–070 (Implementation with Codex / PR Flow)
- [ ] 031 Codex run #1 (create/update files per plan)
- [ ] 032 Review diff #1 (read all changes; check constraints)
- [ ] 033 Codex run #2 (fill missing content; improve structure)
- [ ] 034 Review diff #2 (consistency + completeness)
- [ ] 035 Codex run #3 (polish: clarity, formatting, links)
- [ ] 036 Ensure `AGENTS.md` rules are respected (minimal docs, no secrets)
- [ ] 037 Create PR with description + checklist; include `Fixes #<this_issue>`
- [ ] 038 Review PR: confirm DoD + acceptance criteria are met
- [ ] 039 Merge PR
- [ ] 040 Update `docs/14DOC_INDEX.md` status → `DRAFT` or `RC0_READY`
- [ ] 041 Reserve
- [ ] 042 Reserve
- [ ] 043 Reserve
- [ ] 044 Reserve
- [ ] 045 Reserve
- [ ] 046 Reserve
- [ ] 047 Reserve
- [ ] 048 Reserve
- [ ] 049 Reserve
- [ ] 050 Reserve
- [ ] 051 Reserve
- [ ] 052 Reserve
- [ ] 053 Reserve
- [ ] 054 Reserve
- [ ] 055 Reserve
- [ ] 056 Reserve
- [ ] 057 Reserve
- [ ] 058 Reserve
- [ ] 059 Reserve
- [ ] 060 Reserve
- [ ] 061 Reserve
- [ ] 062 Reserve
- [ ] 063 Reserve
- [ ] 064 Reserve
- [ ] 065 Reserve
- [ ] 066 Reserve
- [ ] 067 Reserve
- [ ] 068 Reserve
- [ ] 069 Reserve
- [ ] 070 Reserve

## Steps 071–090 (Verification)
- [ ] 071 Check: no empty sections remain (replace empties with TODO + clear next actions)
- [ ] 072 Check: terminology is consistent across docs
- [ ] 073 Check: scope matches MVP (no scope creep)
- [ ] 074 Check: no sensitive content is present
- [ ] 075 Check: links work; file paths correct
- [ ] 076 Check: acceptance criteria satisfied (AC1..ACn)
- [ ] 077 Prepare RC0 packaging plan (PDF/ZIP if applicable)
- [ ] 078 Update index status → `RC0`
- [ ] 079 Reserve
- [ ] 080 Reserve
- [ ] 081 Reserve
- [ ] 082 Reserve
- [ ] 083 Reserve
- [ ] 084 Reserve
- [ ] 085 Reserve
- [ ] 086 Reserve
- [ ] 087 Reserve
- [ ] 088 Reserve
- [ ] 089 Reserve
- [ ] 090 Reserve

## Steps 091–100 (External Review / Lock)
- [ ] 091 Create Release `RC0` (attach PDFs/ZIPs if needed)
- [ ] 092 Send to external reviewer (record who/when)
- [ ] 093 Log feedback into DOC14 (External Feedback Log)
- [ ] 094 Convert feedback → Issues (each item = one fix task)
- [ ] 095 Apply fixes → produce `RC1`
- [ ] 096 Repeat review loop until `APPROVED_EXT`
- [ ] 097 Freeze changes (no further edits except via new version bump)
- [ ] 098 Tag/Release `v0.1` (LOCKED_v0.1)
- [ ] 099 Update `docs/14DOC_INDEX.md` status → `LOCKED_v0.1`
- [ ] 100 Close this issue (Done)
