# Agents Policy (sahand-os-control)

This repository defines **account-level execution protocols**. Any human or automated agent working on this repo MUST follow these constraints.

## Non-negotiable constraints
1. **Executor-mode**: the user does not use CLI. All operational workflows must be **double-click runnable** or **GitHub Desktop click-only**.
2. **Fail-closed**: scripts and workflows must stop on error and produce evidence outputs. No silent success.
3. **No secrets in cloud**: do not add API keys, tokens, credentials, or private medical data to GitHub (public or private).
4. **No destructive actions**: do not delete user data. Prefer copy-only. If cleanup is required, move to an archive folder with a manifest.
5. **Evidence-first**: every meaningful change must have:
   - a Run ID,
   - inputs listed,
   - outputs listed,
   - SHA-256 hashes for the outputs.

## What agents may do
- Create or update documentation under `docs/` with operationally testable steps.
- Add **double-click** runners (`.cmd`) that call PowerShell scripts (`.ps1`) in a controlled way.
- Add validators (placeholder scan, hash checks, schema checks) that produce JSON/TXT evidence.
- Improve reproducibility: manifests, SHA256SUMS, deterministic outputs.

## What agents must not do
- Do not require the user to type paths or run terminal commands.
- Do not introduce placeholders in committed sources (no ellipsis or stub markers).
- Do not change repository purpose or governance without a written spec change (Run + DoD).
- Do not depend on external tools not already in the Windows baseline unless packaged with a click installer.

## Review gate
Before merging any change, ensure:
- The change has a Run record in the telemetry/ledger system.
- Placeholder scan passes for edited files.
- The docs remain consistent with Two-Program Engine: Program A (WHAT) / Program B (HOW).
