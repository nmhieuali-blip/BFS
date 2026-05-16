# BUSINESS RULE STANDARD

## Purpose

Standardize:
- Business rule structure
- Rule naming
- Validation ownership
- Rule dependency
- Rule versioning

---

# Rule ID Format

Format:

BR-{MODULE}-{NUMBER}

Example:

BR-AUTH-001
BR-PAYMENT-002
BR-INSURANCE-003

---

# Rule Categories

Supported categories:

- Validation
- Security
- Calculation
- Integration
- Compliance
- Workflow
- Notification

---

# Standard Structure

## Rule ID

Unique identifier.

Example:

BR-AUTH-001

---

## Rule Name

Short descriptive name.

Example:

JWT Token Expiration

---

## Description

Detailed business explanation.

---

## Category

Example:
- Security
- Validation

---

## Trigger Point

Where the rule executes.

Example:
- Before login
- Before claim approval
- During payment processing

---

## Conditions

Conditions required for rule execution.

---

## Expected Result

Expected outcome after validation.

---

## Error Handling

Expected error behavior.

Example:
- Reject request
- Return 401
- Retry process

---

## Dependencies

Related:
- APIs
- Services
- External HIS
- Database tables

---

## Related User Stories

Example:
- US-AUTH-001
- US-CLAIM-002

---

## Related Acceptance Criteria

Example:
- AC-AUTH-001

---

## Priority

Allowed values:
- Critical
- High
- Medium
- Low

---

# Versioning

Format:

v1.0
v1.1
v2.0

---

# Ownership

Rule owner must be defined.

Example:
- BA Team
- Security Team
- Insurance Team

---

# Enforcement Layer

Where the rule is enforced.

Examples:
- Frontend
- API Gateway
- Backend Service
- Database
- External HIS

---

# Example

## BR-AUTH-001

### Rule Name

JWT Token Expiration

### Description

Access token expires after 15 minutes.

### Category

Security

### Trigger Point

Authenticated API request

### Expected Result

Reject expired token request.

### Enforcement Layer

Auth Service