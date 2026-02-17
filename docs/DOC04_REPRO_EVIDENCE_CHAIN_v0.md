# DOC04 — Reproducible Evidence Chain (v0)

This document defines the **minimum** evidence chain required for any serious work in the account.

## Goal
Guarantee that an external reviewer can replay the run and verify:
- what was executed,
- with which inputs,
- what outputs were produced,
- and that outputs were not modified after the run.

## Evidence objects
A run produces an **Evidence Pack**:

1. **RUN_METADATA.json**
   - run_id
   - timestamp
   - repo(s) involved
   - operator (human/agent)
   - workspace root
   - constraints (Executor-mode, no-delete, fail-closed)

2. **INPUTS_MANIFEST.json**
   - list of all inputs (files + hashes)
   - external dependencies (tools + version)

3. **OUTPUTS_MANIFEST.json**
   - list of all outputs produced (files + hashes)
   - output directory

4. **SHA256SUMS.txt**
   - SHA-256 for all files in OUTPUTS_MANIFEST

5. **RUN_LOG.txt**
   - human-readable log
   - start/end markers
   - exit code

## Storage rule
- Outputs go to the canonical output root (example): `D:\04_OUTPUTS\REPORTS\...`
- Evidence packs are immutable after creation. If re-run is needed, generate a new run_id.

## Acceptance criteria (PASS)
A run is **PASS** only if:
- the runner is double-click runnable,
- it produces the Evidence Pack files above,
- hashes match,
- and the run log shows fail-closed behavior.

## Minimal reviewer instructions
A reviewer must be able to:
1. download the Evidence Pack,
2. recompute hashes,
3. confirm manifest alignment,
4. reproduce the run with the same inputs.
