# Generate Acceptance Criteria Prompt

# Objective
Generate testable, traceable acceptance criteria from user stories and business rules.

---

# Input Variables

- `{{story_id}}`
- `{{module_name}}`
- `{{actors}}`
- `{{business_rules}}`
- `{{main_flow_summary}}`
- `{{system_constraints}}`
- `{{integration_dependencies}}`

---

# Instructions

Generate AC using strict Gherkin style.

---

# Output Structure

For each criterion:

## AC-{{MODULE}}-{{NUMBER}}
Related BR: `BR-{{MODULE}}-{{NUMBER}}`
Given ...
When ...
Then ...

---

# Mandatory Coverage

Include criteria for:

- happy path
- required field validation
- invalid format/data type
- permission denial
- duplicate request prevention
- timeout and retry behavior
- integration failure fallback
- concurrency edge case

---

# Quality Rules

Each AC must include:

- actor/role
- trigger action
- system response
- expected result
- observable outcome

Do not:

- merge unrelated checks in one AC
- use vague wording
- include implementation internals unless required by policy

---

# Traceability Rule

At the end, provide:

`AC -> BR mapping summary`

If BR linkage is missing:

`NEED_CLARIFICATION: MISSING_BR_LINK`
