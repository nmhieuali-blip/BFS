# ACCEPTANCE CRITERIA STANDARD

## Purpose

Standardize:
- Acceptance criteria
- Validation rules
- Error handling
- Edge cases

---

# Format

Use:

GIVEN
WHEN
THEN

---

# Example

GIVEN user enters valid credentials

WHEN clicking login button

THEN system returns access token

---

# Required Sections

## Success Cases

Normal successful scenarios.

---

## Validation Cases

Field validation:
- Required
- Length
- Format
- Data type

---

## Permission Cases

Role validation.

Example:

- Unauthorized access
- Missing permission

---

## Error Cases

Expected errors.

Example:

- Invalid password
- Expired token
- HIS timeout

---

## Edge Cases

Unexpected or rare scenarios.

Example:

- Duplicate request
- Double click
- Retry after timeout

---

## API Expectations

Expected:
- status code
- response structure
- error structure

---

# Naming Convention

AC-{MODULE}-{NUMBER}

Example:

AC-AUTH-001