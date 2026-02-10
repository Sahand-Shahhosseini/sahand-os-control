# TOOLS · GitHub Desktop v0

Version: v0.1  
Scope: sahand-os-control (control-plane repo for the account)

This document specifies how **GitHub Desktop** is used inside the Two-Program Engine v0.
It is written for the human executor (Sahand) in **click-only mode**.

---

## 1. Scope and Limitations

- This tool spec is for the **sahand-os-control** repo.
- It assumes:
  - GitHub Desktop is installed and logged in.
  - The repo is cloned locally and visible in GitHub Desktop.
- It does NOT cover:
  - Any CLI usage (`git` in terminal is forbidden).
  - Any automation that commits without the human reviewing the diff.

---

## 2. Basic Workflow (Single-Commit Edit)

Minimal safe workflow for applying a change suggested by the Two-Program Engine:

1. **Open the repo in GitHub Desktop**
   - Select `Sahand-Shahhosseini/sahand-os-control`.
   - Click `Fetch origin` to ensure you are up to date.
   - Confirm the current branch (usually `main`).

2. **Edit files locally**
   - Use `Repository → Open in your editor` (e.g., VS Code), or open files in any text editor.
   - Apply the changes exactly as specified by the task.
   - Save.

3. **Review changes (diff)**
   - In GitHub Desktop, open the **Changes** tab.
   - Confirm that only intended files changed.
   - Skim the diff to detect unexpected edits.

4. **Commit**
   - Write a clear commit summary (one sentence).
   - Optional: add a short description.
   - Click `Commit to main` (or to your branch).

5. **Push**
   - Click `Push origin`.

6. **Optional: PR**
   - If the change is non-trivial:
     - Create a branch in GitHub Desktop.
     - Push the branch.
     - Open a PR in the GitHub web UI.

---

## 3. Relation to Two-Program Engine (Program A/B)

- **Program A – Commander (Issues)**
  - When a task requires file edits, the issue should explicitly say:
    - “Implementation via local edit + GitHub Desktop commit + push”.

- **Program B – Runner 1..100**
  - Steps 031–070 (Implementation) may include:
    - “Open repo in GitHub Desktop and Fetch origin”
    - “Edit file X exactly as specified”
    - “Review diff, commit, push”
  - No step is allowed to require CLI.

---

## 4. Future Extensions (v0 → v0.2)

Not implemented in v0:

- Standard branch naming scheme (e.g. `feat/…`, `fix/…`)
- A short screenshot-based guide
- A “PR required” policy for specific file classes (e.g. templates)

v0 is intentionally minimal: it exists to prevent confusion and enforce click-only execution.
