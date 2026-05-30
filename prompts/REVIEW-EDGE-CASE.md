# Review Edge Case Prompt

# Objective
Identify non-obvious edge cases and operational risks in the business workflow.

---

# Input Variables

- `{{artifact_name}}`
- `{{flow_summary}}`
- `{{actors_and_roles}}`
- `{{business_rules}}`
- `{{integration_dependencies}}`
- `{{known_constraints}}`

---

# Review Scope

Analyze risks across:

- validation and input integrity
- permission and role boundaries
- integration timeout/retry/fallback
- workflow transition consistency
- data integrity and synchronization
- concurrency and race conditions

---

# Output Format

## Edge Case {{NUMBER}}
### Scenario
### Trigger
### Risk / Business Impact
### Recommendation
### Severity (LOW / MEDIUM / HIGH / CRITICAL)
### Linked Artifact IDs (US/BR/AC)

---

# Review Rules

- Prioritize non-obvious cases over basic checks.
- Include at least one concurrency-related case if integration or approvals exist.
- Include concrete mitigation recommendations.
- Link each finding to impacted artifact IDs.

If insufficient context:

`NEED_CLARIFICATION: EDGE_CASE_CONTEXT_GAP`
