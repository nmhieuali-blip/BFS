# Generate User Story Prompt

# Objective

Generate enterprise-grade User Stories based on business requirements.

---

# Input

Input may include:

- BRD
- feature request
- workflow
- meeting note
- legacy process
- verbal requirement

---

# Instructions

Generate User Stories using the following structure.

---

# Required User Story Format

## User Story ID

Format:

US-XXX

---

## Title

Short business-oriented title.

---

## User Story

Format:

As a [actor]
I want [goal]
So that [business value]

---

## Business Goal

Describe measurable business value.

---

## Actors

List all actors involved.

---

## Preconditions

List required conditions before flow starts.

---

## Main Flow

Step-by-step business flow.

---

## Alternative Flow

List exception or alternate scenarios.

---

## Postconditions

Expected state after successful completion.

---

## Business Rules

List all business rules related to this story.

---

## Dependencies

List:

- external systems
- APIs
- services
- approvals
- integrations

---

## Assumptions

Explicitly list assumptions.

If unclear:

NEED_CLARIFICATION

---

# Validation Checklist

Validate:

- actor exists
- business value is measurable
- flow is complete
- exceptions included
- rules are testable
- dependencies identified
- terminology consistent

---

# Important Rules

Do not:

- mix technical implementation with business requirement
- invent hidden business logic
- skip unhappy path
- generate vague acceptance behavior

---

# Output Format

Return markdown only.