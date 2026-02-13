# DOC01 — Executive Summary (v0)

## What this repo is
`sahand-os-control` is a **control-plane** repository for Sahand's account program:
- It tracks WHAT to do (Issues).
- It tracks HOW to do it (TASK_RUN_1_100).
- It tracks document-pack status via `docs/14DOC_INDEX.md`.

## Core mechanism (Two-Program Engine)
- **Program A (Commander)**: GitHub Issues = task registry
- **Program B (Runner)**: TASK_RUN_1_100 Issues = execution protocols (001–100)
- Execution is **click-only** (GitHub Desktop + Web UI), by design.

## Non-negotiables
- No secrets in cloud
- Fail-closed mindset (stop if ambiguous)
- Reproducible, file-based evidence
- External review only with real reviewer feedback (no invented reviews)

## Immediate milestone (Stage0 close)
Stage0 is “closed” when:
1) Placeholder issues are removed/converted.
2) At least two real TASK_RUNs exist with Steps 001–030 filled and committed artifacts.
3) `14DOC_INDEX` core docs move from EMPTY → DRAFT with real files.
4) A daily loop doc exists to prevent drift.

## P0/P1/P2 mapping
- **P0**: control-plane health (issues, runs, doc index, pipeline)
- **P1**: public-safe mirror gate (in `sstai-lab-public` repo)
- **P2**: World Stack Map (L0–L11) as versioned artifacts
