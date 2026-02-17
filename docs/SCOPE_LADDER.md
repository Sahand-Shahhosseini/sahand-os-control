# Scope Ladder (v0)

Defines maturity states for any module/repo.

## States
- **v0**: idea/spec draft; may be incomplete; must still be operationally scoped.
- **RC0**: runnable demo exists; evidence pack exists; major gaps allowed but listed.
- **RC1**: reproducible; tests/gates exist; major gaps reduced; no placeholders in core docs.
- **APPROVED_EXT**: external reviewer has reviewed and written a PASS with limited fixes.
- **LOCKED_v0.1**: frozen; changes only via explicit version bump; evidence chain enforced.

## Minimal criteria per state
### v0
- purpose, inputs, outputs, DoD.

### RC0
- one runnable entry point,
- evidence pack produced,
- failure modes documented.

### RC1
- backcheck kit passes,
- placeholders removed from governance/spec sources,
- acceptance gates implemented.

### APPROVED_EXT
- reviewer bundle sent,
- reviewer verdict recorded.

### LOCKED_v0.1
- tagged release,
- SHA256SUMS + manifest published,
- no-edit policy for released artifacts.
