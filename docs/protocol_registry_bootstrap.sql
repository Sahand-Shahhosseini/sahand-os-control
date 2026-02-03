-- Bootstrap content for protocol_registry.sqlite (deterministic; no timestamps)
BEGIN TRANSACTION;

DELETE FROM protocol;
DELETE FROM block;
DELETE FROM scale;
DELETE FROM requirement;
DELETE FROM mapping_doc_to_blocks;
DELETE FROM audit_gate;
DELETE FROM conjecture_template;
DELETE FROM symbol_dictionary;
DELETE FROM conjecture_ledger;

INSERT INTO protocol(protocol_id, name, version_tag, status, date_iso) VALUES ('DOC_PROTO_7_PLUS_14_MAINSTREAM', 'DOC_PROTO_7_PLUS_14_MAINSTREAM', 'v0.3_Integrated_RC2', 'RC', '2026-02-02');

INSERT INTO block(block_id, layer, title, purpose) VALUES ('D1', 'DOMAIN', 'Domain Background', 'State of the art; measurable constraints');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('D2', 'DOMAIN', 'Problem Statement & Use Cases', 'Bounded problem; success criteria');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('D3', 'DOMAIN', 'Math-to-Domain Bridge', 'Noise-aware mapping; validation and failure');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('D4', 'DOMAIN', 'Protocols', 'Experimental/clinical/simulation protocols; registered discipline');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('D5', 'DOMAIN', 'Analysis Plan', 'Statistics/analytics and uncertainty plan');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('D6', 'DOMAIN', 'Implementation', 'Executable system; no new math; references ALG-IDs');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('D7', 'DOMAIN', 'Regulatory/Safety/Audit Layer', 'Cross-cutting audit gates across blocks');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('DOC01', 'DOC', 'Foundations Specification', 'Constitution, symbols, notation, consistency law');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('DOC02', 'DOC', 'Metatheory & Rationale', 'Internal audit, rejected alternatives, weaknesses');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('DOC03', 'DOC', 'Whitepaper', 'Narrative gatekeeper; claims must link to evidence');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('DOC04', 'DOC', 'Proposal & Plan', 'PMO; WBS, milestones, critical path, risks');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('DOC05', 'DOC', 'Technical Paper', 'Report engine; IMRAD assembly + QA gates');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('DOC06', 'DOC', 'Value & Goal Map', 'Objective function; trade-off law');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('DOC07', 'DOC', 'Execution / OS Spec', 'Runtime authority; artifact map, env lock, tests, release');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('M1', 'MATH', 'Objects & Spaces', 'Definitions of mathematical objects/spaces; typing');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('M2', 'MATH', 'Dynamics / Operators', 'Evolution rules and operators');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('M3', 'MATH', 'Theorems / Invariants', 'Claims and proofs per scaling');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('M4', 'MATH', 'Models', 'Mathematical representation and assumptions');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('M5', 'MATH', 'Links to Established Theory', 'Mapping to known theory; novelty boundary');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('M6', 'MATH', 'Algorithms (Theory Only)', 'Algorithm theory: correctness, convergence, complexity; no code');
INSERT INTO block(block_id, layer, title, purpose) VALUES ('M7', 'MATH', 'Conjecture Ledger', 'Lifecycle registry for unproven claims; anti-zombie');

INSERT INTO scale(scale_id, description) VALUES ('FULL', 'Production/safety-critical; formal traceability and regulatory readiness');
INSERT INTO scale(scale_id, description) VALUES ('MIN', 'Prototypes and solo research; core correctness + reproducibility baseline');
INSERT INTO scale(scale_id, description) VALUES ('STANDARD', 'Publication-grade; stronger justification and analysis discipline');

INSERT INTO requirement(req_id, block_id, scale_id, description, is_mandatory) VALUES ('D3-ALL-1', 'D3', 'MIN', 'Mapping rows include: units, observability, noise model, uncertainty params, sensitivity, validation metric, failure modes', 1);
INSERT INTO requirement(req_id, block_id, scale_id, description, is_mandatory) VALUES ('D7-ALL-1', 'D7', 'MIN', 'Define gates D7-P/E/S/T with evidence requirements; fail-closed for releases', 1);
INSERT INTO requirement(req_id, block_id, scale_id, description, is_mandatory) VALUES ('DOC01-MIN-1', 'DOC01', 'MIN', 'Symbol dictionary for load-bearing symbols + notation standards', 1);
INSERT INTO requirement(req_id, block_id, scale_id, description, is_mandatory) VALUES ('DOC07-STD-1', 'DOC07', 'STANDARD', 'Artifact map + pinned dependencies + automated test harness', 1);
INSERT INTO requirement(req_id, block_id, scale_id, description, is_mandatory) VALUES ('M6-ALL-1', 'M6', 'MIN', 'Each algorithm has ALG-ID, I/O contract, correctness argument, complexity; no code-like pseudocode', 1);
INSERT INTO requirement(req_id, block_id, scale_id, description, is_mandatory) VALUES ('M7-ALL-1', 'M7', 'MIN', 'CJ-ID, testability, blocking status, owner, due date, verdict state', 1);

INSERT INTO mapping_doc_to_blocks(doc_id, primary_blocks, secondary_blocks) VALUES ('DOC01', 'M1,M2,M3', 'D3 (constraints)');
INSERT INTO mapping_doc_to_blocks(doc_id, primary_blocks, secondary_blocks) VALUES ('DOC02', 'M5,M7', 'DOC06,D7');
INSERT INTO mapping_doc_to_blocks(doc_id, primary_blocks, secondary_blocks) VALUES ('DOC03', 'D1,D2,D6', 'M4,M7');
INSERT INTO mapping_doc_to_blocks(doc_id, primary_blocks, secondary_blocks) VALUES ('DOC04', 'D2,D4,D7', 'M7,DOC07');
INSERT INTO mapping_doc_to_blocks(doc_id, primary_blocks, secondary_blocks) VALUES ('DOC05', 'M1-M6,D3-D5', 'M7,D7');
INSERT INTO mapping_doc_to_blocks(doc_id, primary_blocks, secondary_blocks) VALUES ('DOC06', 'ALL', '');
INSERT INTO mapping_doc_to_blocks(doc_id, primary_blocks, secondary_blocks) VALUES ('DOC07', 'D6,D4,D7', 'M6,DOC01');

INSERT INTO audit_gate(gate_id, name, applies_to, evidence_required, verdict_enum) VALUES ('D7-E', 'Ethics Gate', 'D4', 'consent/ethics status; risk/benefit; inclusion/exclusion rationale', 'PASS/FAIL/WAIVER');
INSERT INTO audit_gate(gate_id, name, applies_to, evidence_required, verdict_enum) VALUES ('D7-P', 'Privacy Gate', 'D1,D4,DOC07', 'data minimization; legal basis; retention; anonymization/pseudonymization', 'PASS/FAIL/WAIVER');
INSERT INTO audit_gate(gate_id, name, applies_to, evidence_required, verdict_enum) VALUES ('D7-S', 'Security Gate', 'D6,DOC07', 'threat model; access control; secrets handling; vulnerability checklist', 'PASS/FAIL/WAIVER');
INSERT INTO audit_gate(gate_id, name, applies_to, evidence_required, verdict_enum) VALUES ('D7-T', 'Traceability Gate', 'DOC04,DOC05,DOC07', 'req-to-test matrix; artifact map; reproducibility manifest', 'PASS/FAIL/WAIVER');

INSERT INTO conjecture_template(field_name, description) VALUES ('CJ-ID', 'Unique conjecture identifier');
INSERT INTO conjecture_template(field_name, description) VALUES ('Statement', 'Precise conjecture statement');
INSERT INTO conjecture_template(field_name, description) VALUES ('Dependencies', 'Which claims/blocks depend on it');
INSERT INTO conjecture_template(field_name, description) VALUES ('Testability', 'How it could be falsified');
INSERT INTO conjecture_template(field_name, description) VALUES ('BlockingStatus', 'CRITICAL/IMPORTANT/OPTIONAL');
INSERT INTO conjecture_template(field_name, description) VALUES ('Owner', 'Responsible person/role');
INSERT INTO conjecture_template(field_name, description) VALUES ('DueExpiry', 'Due or expiry date');
INSERT INTO conjecture_template(field_name, description) VALUES ('CurrentEvidence', 'Evidence summary so far');
INSERT INTO conjecture_template(field_name, description) VALUES ('NextAction', 'Next step to resolve');
INSERT INTO conjecture_template(field_name, description) VALUES ('Verdict', 'OPEN/VERIFIED/FALSIFIED/DEPRECATED');



COMMIT;
