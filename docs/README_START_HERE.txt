START HERE — DOC\_PROTO\_7\_PLUS\_14\_MAINSTREAM v0.3_Integrated_RC2

This pack contains:
1) The full LaTeX specification:
   - DOC_PROTO_7_PLUS_14_MAINSTREAM_v0_3_INTEGRATED_RC1.tex

2) Build scripts (Windows, double-click):
   - A_START_HERE_RUN_ALL.cmd  (runs build + hashes; fail-closed)
   - BUILD_PDF.cmd (tries latexmk/pdflatex if available)
   - HASH_ALL.cmd (generates SHA-256 manifest)

3) Reproducibility & evidence:
   - ANNEX_Z_MANIFEST_SHA256.txt

4) Protocol registry (SQLite):
   - protocol_registry.sqlite
   - protocol_registry_schema.sql

5) CI skeleton (GitHub Actions):
   - .github/workflows/ci_build.yml

6) Makefile (optional; for environments with make):
   - Makefile

NOTES:
- If you do not have TeX installed, install MiKTeX (Windows) and ensure latexmk is available.
- This pack does NOT assume any private tooling.


[SQLite Registry]
- Added tables (normative for FULL-Spec): symbol_dictionary (DOC01 mirror), conjecture_ledger (M7 mirror)
- protocol_registry_bootstrap.sql allows deterministic rebuild.
