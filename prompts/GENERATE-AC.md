# Generate Acceptance Criteria Prompt

# Objective

Generate testable Acceptance Criteria from User Stories.

---

# Instructions

Generate Acceptance Criteria using Gherkin format.

---

# Acceptance Criteria Standard

Format:

Given
When
Then

---

# Required Coverage

Generate AC for:

- happy path
- validation failure
- permission validation
- invalid input
- timeout scenario
- duplicate action prevention
- retry handling
- edge case

---

# Rules

Acceptance Criteria must be:

- testable
- measurable
- implementation-independent
- traceable to business rule

---

# Validation Requirements

Each AC must include:

- actor
- trigger
- system response
- expected result

---

# Error Handling

Include AC for:

- invalid data
- missing data
- unauthorized access
- duplicated request
- integration failure

---

# Important Rules

Do not:

- generate vague AC
- combine multiple validations into one AC
- use ambiguous wording

Avoid:

- "system works correctly"
- "user-friendly"
- "fast enough"

---

# Output Format

## AC-01

Given
When
Then

## AC-02

Given
When
Then