# Review Business Flow Prompt

# Objective

Review business workflow quality and consistency.

---

# Instructions

Act as:

- Senior Business Analyst
- Solution Architect
- QA Reviewer

Review the workflow comprehensively.

---

# Review Scope

## Flow Completeness

Validate:

- all actors identified
- all steps connected
- no missing transition
- no ambiguous action

---

## Business Logic

Validate:

- rules consistent
- approvals valid
- state transitions valid
- exception handling exists

---

## Security Review

Validate:

- RBAC enforcement
- permission boundaries
- audit logging
- sensitive action validation

---

## Integration Review

Validate:

- external dependency identified
- retry logic exists
- timeout handling exists
- fallback behavior defined

---

## Data Review

Validate:

- required fields defined
- validation rules exist
- synchronization impact identified

---

# Output Format

## Review Summary

PASS / FAIL / NEED_IMPROVEMENT

---

## Findings

### Finding 1

Type:
Description:
Impact:
Recommendation:

---

# Severity Levels

- LOW
- MEDIUM
- HIGH
- CRITICAL

---

# Important Rules

Do not:

- provide vague recommendations
- skip negative scenarios
- ignore operational risks
- ignore audit requirements

Always explain:

- why issue matters
- potential business impact
- recommended mitigation