# SPEC — Two-Program Engine (v0)

## Purpose
Separate **WHAT** we do from **HOW** we do it, with strict evidence and reproducibility.

## Program A: Task Commander (WHAT)
- tracks tasks as Issues (and optionally Projects)
- each task has:
  - goal,
  - constraints,
  - DoD,
  - reviewer pack mapping,
  - acceptance gates

## Program B: Task Runner (HOW)
- executes one task via a structured 1..100 step template:
  - 001–010: scope lock
  - 011–030: design
  - 031–070: implementation
  - 071–090: verification
  - 091–100: release/lock

## Interfaces
- Program A creates a task.
- Program B creates a run plan and produces outputs + evidence.
- Outputs are hashed and logged to telemetry.

## Non-negotiables
- Executor-mode compatible (double-click / click-only).
- Fail-closed runners.
- Evidence pack required for any claim of completion.

## Out of scope
- Large refactors without a new task and run.
- Any process requiring the user to use terminal commands.
