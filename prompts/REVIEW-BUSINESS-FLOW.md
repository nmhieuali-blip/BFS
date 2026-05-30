# Review Business Flow Prompt

# Objective
Perform a structured quality review of business workflow artifacts before grooming or implementation.

---

# Input Variables

- `{{artifact_name}}`
- `{{artifact_version}}`
- `{{flow_content}}`
- `{{business_rules}}`
- `{{acceptance_criteria}}`
- `{{dependencies}}`
- `{{target_quality_stage}}` (Draft / Grooming / Implementation)

---

# Review Scope

Validate:

1. Flow completeness and transition integrity
2. Business rule consistency
3. Security and RBAC boundaries
4. Integration resilience (timeout/retry/fallback)
5. Data validation and contract coverage
6. Traceability completeness
7. Diagram/text consistency

---

# Output Format

## Review Summary
- Status: PASS / NEED_IMPROVEMENT / FAIL
- Quality Score: `X/20`
- Stage Readiness: Draft / Grooming / Implementation

## Findings
### Finding {{NUMBER}}
Type:
Severity: LOW / MEDIUM / HIGH / CRITICAL
Description:
Impact:
Recommendation:
Owner:

## Mandatory Actions Before Next Stage
- Action 1
- Action 2

## Traceability Check
- Requirement -> Story
- Story -> BR
- BR -> AC
- AC -> Test

---

# Review Rules

- Do not provide generic feedback.
- Include rationale and business impact for each finding.
- Explicitly call out critical blockers.

If required artifacts are missing:

`NEED_CLARIFICATION: REVIEW_INPUT_INCOMPLETE`
