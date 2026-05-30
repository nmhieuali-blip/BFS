# Generate BPMN Prompt

# Objective
Generate BPMN-style workflow artifacts that are complete, reviewable, and consistent with business rules.

---

# Input Variables

- `{{process_name}}`
- `{{actors}}`
- `{{systems}}`
- `{{preconditions}}`
- `{{main_flow_requirements}}`
- `{{decision_rules}}`
- `{{exception_scenarios}}`
- `{{integration_points}}`

---

# Instructions

Produce both:

1. Structured textual process breakdown
2. Mermaid diagram representation

---

# Required Components

- start event
- end events (success + rejection/failure)
- tasks with actor ownership
- gateways with explicit conditions
- approval/rejection branch (if applicable)
- exception and retry/timeout handling
- postconditions

---

# Required Output Structure

## Process Name
## Actors and Swimlanes
## Preconditions
## Main Flow Steps
## Decision Gateways
## Exception Flow
## Postconditions
## Mermaid Diagram

---

# Validation Rules

Ensure:

- all branches terminate
- no dead-end/orphan step
- rejection path exists where needed
- retry and timeout behavior is explicit
- transitions are logically valid

If any branch is unclear:

`NEED_CLARIFICATION: FLOW_GAP`

---

# Output Rule

Return markdown only.
