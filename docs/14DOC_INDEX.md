# 14-DOC INDEX (Program Control)
Status legend: EMPTY → SCOPE_LOCKED → DRAFT → RC0 → RC1 → APPROVED_EXT → LOCKED_v0.1

## Docset
- **DOCSET_07 (Reviewer Pack)**: 7 سندِ هسته‌ای برای داوری خارجی
- **DOCSET_14 (Full Pack)**: 14 سند کامل (هسته + ضمائم)

## Table
| Doc ID | Title (temp) | Docset | Current Status | v0 Scope (MVP) | Final Scope (Target) |
|---|---|---|---|---|---|
| DOC01 | [Executive Summary](DOC01_EXECUTIVE_SUMMARY_v0.md) | 07/14 | DRAFT | 1-2 صفحه | 5-10 صفحه + Claims map |
| DOC02 | AI-OS-Agent Spec | 07/14 | EMPTY | Spec اجرایی v0 | Spec کامل + APIs + boundaries |
| DOC03 | [Task System (Commander/Runner)](DOC03_TASK_SYSTEM_COMMANDER_RUNNER_v0.md) | 07/14 | DRAFT | Projects+Issues+Codex flow | Full governance + audit chain |
| DOC04 | [Repro & Evidence Chain](DOC04_REPRO_EVIDENCE_CHAIN_v0.md) | 07/14 | DRAFT | versioning + hashes + release | full CI + pdf pipeline + provenance |
| DOC05 | Security / IP / Red Lines | 07/14 | EMPTY | cloud-vs-local rules | threat model + data classes |
| DOC06 | [Evaluation & External Review Protocol](DOC06_EVAL_EXTERNAL_REVIEW_PROTOCOL_v0.md) | 07/14 | DRAFT | review loop + RC tagging | multi-reviewer + change-control |
| DOC07 | Roadmap v0→v1 | 07/14 | EMPTY | milestones 0..3 | milestones کامل تا “Project Complete” |
| DOC08 | Appendix A: Glossary | 14 | EMPTY | 30 اصطلاح | کامل |
| DOC09 | Appendix B: File/Folder Canon | 14 | EMPTY | ساختار حداقلی | کامل |
| DOC10 | Appendix C: Templates | 14 | EMPTY | قالب‌ها | کامل |
| DOC11 | Appendix D: Metrics/KPI | 14 | EMPTY | KPI حداقلی | کامل |
| DOC12 | Appendix E: Risk Register | 14 | EMPTY | 10 ریسک | کامل |
| DOC13 | Appendix F: Change Log Policy | 14 | EMPTY | قوانین تغییر | کامل |
| DOC14 | Appendix G: Reviewer Feedback Log | 14 | EMPTY | جدول feedback | کامل |

## Next Action
- First milestone: move DOC02/DOC05/DOC07 from EMPTY → DRAFT (minimal skeleton), then generate RC0 PDFs.

---

# Protocol Architecture Pointer (not stored here yet)

## DOC_PROTO_7_PLUS_14_MAINSTREAM_v0_3 (Pointer-only)

- **Tracking issue:** #4 — `TASK_RUN_1_100: Publish DOC_PROTO v0.3 Integrated RC2 (docs + release)`
- **Status in this repo:** POINTER (no RC artifacts stored here yet)

### Policy
This repository is **control-plane only**.
Therefore:
- The actual `.tex` / `.sql` protocol artifacts should live in a dedicated **docs/protocol** repo or in a local-only vault.
- This file (`14DOC_INDEX.md`) may store **pointers** and **status**, not large document dumps.

### Planned artifacts (names reserved, not present here)
- `DOC_PROTO_7_PLUS_14_MAINSTREAM_v0_3_INTEGRATED_RC2.tex`
- `protocol_registry_schema.sql`
- `protocol_registry_bootstrap.sql`
- `ANNEX_Z_MANIFEST_SHA256.txt`

### TODO (to resolve the dangling references)
1. Decide hosting location (a dedicated repo vs local-only).
2. Update this section with real links (repo/path or local pointer) once hosted.
3. Do NOT mark anything as RC/LOCKED until real artifacts exist and are reviewable.
