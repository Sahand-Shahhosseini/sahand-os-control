# External Review Protocol (v0)

## Objective
Enable external reviewers to validate work without exposing sensitive data and without requiring them to understand internal lore.

## Roles
- **Author**: prepares the pack.
- **Reviewer**: evaluates against the checklist.
- **Gatekeeper**: accepts/rejects based on evidence.

## What gets sent to reviewers
A **SAFE_PDF_BUNDLE** by default:
- PDFs only (paper/spec/protocols)
- `SHA256SUMS.txt`
- `MANIFEST.json`

Optional (only if safe):
- minimal reproducibility scripts (no secrets)
- minimal datasets with de-identification

## Review packet checklist
1. Scope and claims are explicit.
2. Definitions are operational.
3. Each claim maps to a test/proof obligation.
4. Reproducibility: Evidence Pack exists and validates.
5. Security: no private data, no credentials, no unsafe content.

## Reviewer workflow
1. Verify `SHA256SUMS.txt`.
2. Read the PDF bundle.
3. Use the checklist to mark PASS/FAIL per section.
4. Send back:
   - annotated notes,
   - a verdict summary,
   - and required fixes.

## Acceptance rule
If any of these occur, the verdict is **REJECT**:
- missing evidence pack,
- missing hashes,
- placeholders in critical documents,
- unclear scope or non-falsifiable claims.
