# ENGINE_PROFILE_SOURCE_v0_1 — source-of-truth contract

**Date:** 2026-02-17

## Purpose
This repo (`sahand-os-control`) implements execution and control policies on D:\.
It is **not** the source-of-truth for SSTAI engine profile parameters.

## Source of truth
- **SSTAI engine profile (U_SSTAI):** `sstai-kernel-core/kernel/SSTAI_KERNEL_PROFILE_v0_1.json`
- **Judge semantics:** `judge-n-core/*` (especially `J_VERDICT_SCHEMA_v0_1.json` and `E_SUITE_v0_1.md`)

## Rule
If there is any conflict between configs here and the canonical profile in `sstai-kernel-core`:
1) HOLD execution
2) request an explicit update in `sstai-kernel-core`
3) resume only after Judge-compatible resolution

## Telemetry
Record each OS run into Airtable base `SSTAI_KERNEL_TELEMETRY`, table `Runs_v0_1`.

