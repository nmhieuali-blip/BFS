# Generate User Story Prompt

# Objective
Generate enterprise-grade user stories from requirement input with traceable business structure.

---

# Input Variables

- `{{requirement_id}}`
- `{{module_name}}`
- `{{feature_name}}`
- `{{business_context}}`
- `{{actors}}`
- `{{requirements}}`
- `{{business_constraints}}`
- `{{dependencies}}`

---

# Instructions

Generate one or more user stories using the standard format below.

---

# Required Output Structure

## Story Information
- Story ID: `US-{{MODULE}}-{{NUMBER}}`
- Story Title: `[{{MODULE}}] - [ACTION] - [TARGET]`
- Priority: Critical / High / Medium / Low

## User Story
As a [actor]  
I want [goal]  
So that [business value]

## Business Goal
Define measurable value.

## Actors
List all participating actors/systems.

## Preconditions
List required states before flow starts.

## Main Flow
Step-by-step business flow.

## Alternative Flow
Include branching scenarios.

## Exception Flow
Include failure and rejection scenarios.

## Postconditions
Describe expected final states.

## Business Rules
List linked IDs: `BR-{{MODULE}}-{{NUMBER}}`

## Dependencies
List systems/APIs/services/approvals.

## Assumptions and Open Questions
If unclear, use:
`NEED_CLARIFICATION: <question>`

---

# Quality Rules

- Do not mix implementation detail with business intent.
- Do not invent missing business rules.
- Ensure each flow step has clear actor/system responsibility.
- Ensure terminology matches glossary.

---

# Traceability Rule

Include a short mapping snippet:

`{{requirement_id}} -> US-... -> BR-...`

Return markdown only.
