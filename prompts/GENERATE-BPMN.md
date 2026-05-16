# Generate BPMN Prompt

# Objective

Generate BPMN-style business workflow descriptions.

---

# Instructions

Generate structured BPMN flow representation.

---

# Required BPMN Components

Include:

- actors
- start event
- end event
- tasks
- gateways
- exception flow
- approval flow
- system actions

---

# Required Structure

## Process Name

## Actors

## Preconditions

## Main Flow

### Step 1
Actor:
Action:
System Response:

---

## Decision Gateway

Condition:
Yes Flow:
No Flow:

---

## Exception Flow

List all failure scenarios.

---

## Postconditions

Expected final states.

---

# Validation Rules

Validate:

- all branches terminate
- no orphan flow
- approval path complete
- rejection path exists
- rollback logic exists if needed

---

# Important Rules

Do not:

- skip system response
- skip validation flow
- mix technical code logic
- create impossible transitions

---

# Edge Cases

Always consider:

- retry
- timeout
- duplicate submission
- concurrent update
- integration failure

---

# Output Format

Markdown only.