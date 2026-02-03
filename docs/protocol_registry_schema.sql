-- Protocol Registry Schema (SQLite)
-- Minimal, auditable registry for DOC_PROTO_7_PLUS_14_MAINSTREAM.

PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS protocol (
  protocol_id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  version_tag TEXT NOT NULL,
  status TEXT NOT NULL,
  date_iso TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS block (
  block_id TEXT PRIMARY KEY,
  layer TEXT NOT NULL,              -- DOC / MATH / DOMAIN
  title TEXT NOT NULL,
  purpose TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS scale (
  scale_id TEXT PRIMARY KEY,        -- MIN / STANDARD / FULL
  description TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS requirement (
  req_id TEXT PRIMARY KEY,
  block_id TEXT NOT NULL REFERENCES block(block_id),
  scale_id TEXT NOT NULL REFERENCES scale(scale_id),
  description TEXT NOT NULL,
  is_mandatory INTEGER NOT NULL DEFAULT 1
);

CREATE TABLE IF NOT EXISTS mapping_doc_to_blocks (
  doc_id TEXT NOT NULL,             -- DOC01..DOC07
  primary_blocks TEXT NOT NULL,      -- comma-separated
  secondary_blocks TEXT,
  PRIMARY KEY (doc_id)
);

CREATE TABLE IF NOT EXISTS audit_gate (
  gate_id TEXT PRIMARY KEY,          -- D7-P, D7-E, D7-S, D7-T
  name TEXT NOT NULL,
  applies_to TEXT NOT NULL,          -- comma-separated block IDs
  evidence_required TEXT NOT NULL,
  verdict_enum TEXT NOT NULL         -- PASS/FAIL/WAIVER
);

CREATE TABLE IF NOT EXISTS conjecture_template (
  field_name TEXT PRIMARY KEY,
  description TEXT NOT NULL
);

-- Optional: store manifests/hashes for releases
CREATE TABLE IF NOT EXISTS artifact_hash (
  artifact_path TEXT PRIMARY KEY,
  sha256 TEXT NOT NULL,
  created_utc TEXT NOT NULL
);

-- -------------------------------------------------------------------------
-- Canonical machine-readable mirrors for DOC01 and M7 (normative for FULL)
-- -------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS symbol_dictionary (
  symbol_id TEXT PRIMARY KEY,
  latex TEXT NOT NULL,
  kind TEXT NOT NULL,
  codomain TEXT,
  units TEXT,
  description TEXT NOT NULL,
  source_block TEXT NOT NULL DEFAULT 'DOC01',
  status TEXT NOT NULL DEFAULT 'ACTIVE',
  notes TEXT
);

CREATE TABLE IF NOT EXISTS conjecture_ledger (
  conj_id TEXT PRIMARY KEY,
  statement TEXT NOT NULL,
  blocking_status TEXT NOT NULL CHECK (blocking_status IN ('CRITICAL','IMPORTANT','OPTIONAL')),
  verdict_state TEXT NOT NULL CHECK (verdict_state IN ('OPEN','IN_PROGRESS','VERIFIED','FALSIFIED','DEPRECATED','WAIVED')),
  testability TEXT NOT NULL,
  linked_blocks TEXT,
  owner TEXT,
  due_date TEXT,
  current_evidence TEXT,
  next_action TEXT,
  created_date TEXT NOT NULL,
  last_update_date TEXT NOT NULL,
  notes TEXT
);

CREATE INDEX IF NOT EXISTS idx_conjecture_gate
  ON conjecture_ledger(blocking_status, verdict_state);
