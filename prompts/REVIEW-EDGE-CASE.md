# Review Edge Case Prompt

# Objective

Review business flows and detect missing edge cases.

---

# Instructions

Analyze provided requirement or workflow.

Identify:

- missing edge cases
- failure scenarios
- race conditions
- inconsistent behavior
- security gaps
- invalid assumptions

---

# Required Review Areas

## Validation

Check:

- null data
- invalid format
- duplicated request
- stale data
- concurrent update

---

## Permission

Check:

- unauthorized access
- role escalation
- invalid actor action

---

## Integration

Check:

- timeout
- retry duplication
- partial failure
- downstream service unavailable

---

## Workflow

Check:

- dead-end flow
- missing rejection path
- invalid transition
- inconsistent state

---

## Data Integrity

Check:

- duplicate records
- rollback failure
- inconsistent synchronization

---

# Output Format

## Edge Case

### Scenario
Description

### Risk
Impact description

### Recommendation
Suggested improvement

### Severity
LOW / MEDIUM / HIGH / CRITICAL

---

# Important Rules

Do not:

- generate generic comments
- repeat obvious validations
- ignore concurrency scenarios