# 14-DOC INDEX (Program Control)
Status legend: EMPTY → SCOPE_LOCKED → DRAFT → RC0 → RC1 → APPROVED_EXT → LOCKED_v0.1

## Docset
- **DOCSET_07 (Reviewer Pack)**: 7 سندِ هسته‌ای برای داوری خارجی
- **DOCSET_14 (Full Pack)**: 14 سند کامل (هسته + ضمائم)

## Table
| Doc ID | Title (temp) | Docset | Current Status | v0 Scope (MVP) | Final Scope (Target) |
|---|---|---|---|---|---|
| DOC01 | Executive Summary | 07/14 | EMPTY | 1-2 صفحه | 5-10 صفحه + Claims map |
| DOC02 | AI-OS-Agent Spec | 07/14 | EMPTY | Spec اجرایی v0 | Spec کامل + APIs + boundaries |
| DOC03 | Task System (Commander/Runner) | 07/14 | EMPTY | Projects+Issues+Codex flow | Full governance + audit chain |
| DOC04 | Repro & Evidence Chain | 07/14 | EMPTY | versioning + hashes + release | full CI + pdf pipeline + provenance |
| DOC05 | Security / IP / Red Lines | 07/14 | EMPTY | cloud-vs-local rules | threat model + data classes |
| DOC06 | Evaluation & External Review Protocol | 07/14 | EMPTY | review loop + RC tagging | multi-reviewer + change-control |
| DOC07 | Roadmap v0→v1 | 07/14 | EMPTY | milestones 0..3 | milestones کامل تا “Project Complete” |
| DOC08 | Appendix A: Glossary | 14 | EMPTY | 30 اصطلاح | کامل |
| DOC09 | Appendix B: File/Folder Canon | 14 | EMPTY | ساختار حداقلی | کامل |
| DOC10 | Appendix C: Templates | 14 | EMPTY | قالب‌ها | کامل |
| DOC11 | Appendix D: Metrics/KPI | 14 | EMPTY | KPI حداقلی | کامل |
| DOC12 | Appendix E: Risk Register | 14 | EMPTY | 10 ریسک | کامل |
| DOC13 | Appendix F: Change Log Policy | 14 | EMPTY | قوانین تغییر | کامل |
| DOC14 | Appendix G: Reviewer Feedback Log | 14 | EMPTY | جدول feedback | کامل |

## Next Action
- First milestone: Lock scopes for DOC01..DOC07 (SCOPE_LOCKED) then generate RC0 PDFs.

# 14-DOC Index (Control Repo)

## DOC_PROTO_7_PLUS_14_MAINSTREAM_v0_3

- **Spec file**: `DOC_PROTO_7_PLUS_14_MAINSTREAM_v0_3_INTEGRATED_RC2.tex`
- **Schema**: `protocol_registry_schema.sql`
- **Bootstrap data**: `protocol_registry_bootstrap.sql`
- **Manifest**: `ANNEX_Z_MANIFEST_SHA256.txt`
- **Status**: RC2 (Release Candidate), internal standard for 7+14 document architecture.

This entry is driven by TASK_RUN_1_100 issue #4 in this repository.
