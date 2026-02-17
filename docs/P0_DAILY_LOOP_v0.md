# P0 Daily Loop (v0)

This is the minimal daily execution loop for the whole account.

## Loop
1. **Sleep**
   - archive outputs
   - close open runs
2. **Arise**
   - choose 1 active Run only
   - load constraints and DoD
3. **Transfer**
   - move inputs to the correct workspace
   - ensure manifests/hashes exist
4. **Create**
   - execute the run (double-click)
   - generate evidence
   - update telemetry/ledger

## Hard constraints
- No multi-run parallelism at P0. One run at a time.
- Every run must produce evidence outputs + hashes.
- Every run must be judgeable (has acceptance criteria).

## Minimal checklist per day
- One active Run has a clear DoD.
- Evidence pack exists for any execution.
- Backcheck performed (GitHub + Airtable alignment).
