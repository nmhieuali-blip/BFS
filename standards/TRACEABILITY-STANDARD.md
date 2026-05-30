# TRACEABILITY STANDARD

## Purpose
Standardize end-to-end traceability from requirement intake to implementation and testing.

---

# Mandatory Traceability Chain

Every feature must map through:

`Requirement -> User Story -> Business Rule -> Acceptance Criteria -> Test Case -> API/Event Contract`

---

# ID Conventions

Use consistent IDs across artifacts:

- Requirement: `REQ-{DOMAIN}-{NUMBER}`
- User Story: `US-{MODULE}-{NUMBER}`
- Business Rule: `BR-{MODULE}-{NUMBER}`
- Acceptance Criteria: `AC-{MODULE}-{NUMBER}`
- Test Case: `TC-{MODULE}-{NUMBER}`
- API Contract: `API-{MODULE}-{NUMBER}`
- Event Contract: `EVT-{MODULE}-{NUMBER}`

Example:

- `REQ-CLAIM-001`
- `US-CLAIM-001`
- `BR-CLAIM-003`
- `AC-CLAIM-007`
- `TC-CLAIM-021`
- `API-CLAIM-001`

---

# Required Traceability Matrix

Each feature must include a traceability matrix.

## Minimum Columns

| Requirement ID | User Story ID | BR ID | AC ID | Test Case ID | API/Event ID | Owner |
|---|---|---|---|---|---|---|

---

# Mapping Rules

1. One requirement may map to multiple user stories.
2. Every user story must map to at least one business rule.
3. Every business rule must map to at least one acceptance criterion.
4. Every acceptance criterion must map to at least one test case.
5. Integration-related AC must map to API/Event contract references.
6. Deprecated IDs cannot be reused.

---

# Change Impact Rules

When any item changes:

- update all downstream mappings
- mark impacted IDs as `NEEDS_REVIEW`
- re-run flow and edge-case review prompts
- update version/date in artifact header

---

# Quality Gate

Traceability is considered PASS only when:

- no broken ID reference
- no orphan requirement
- no orphan acceptance criterion
- all critical rules have test coverage

---

# Common Anti-Patterns

Avoid:

- AC not linked to BR
- BR not linked to any story
- API changes without AC update
- free-text references without IDs

---

# Example Traceability Snippet

| Requirement ID | User Story ID | BR ID | AC ID | Test Case ID | API/Event ID | Owner |
|---|---|---|---|---|---|---|
| REQ-CLAIM-001 | US-CLAIM-001 | BR-CLAIM-003 | AC-CLAIM-002 | TC-CLAIM-010 | API-CLAIM-001 | BA |
| REQ-CLAIM-001 | US-CLAIM-001 | BR-CLAIM-005 | AC-CLAIM-006 | TC-CLAIM-024 | API-CLAIM-001 | QA |

---

# Output Rule

If mapping is incomplete, explicitly return:

`NEED_CLARIFICATION: TRACEABILITY_GAP`
