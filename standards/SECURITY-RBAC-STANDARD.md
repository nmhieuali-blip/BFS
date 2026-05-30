# SECURITY AND RBAC STANDARD

## Purpose
Standardize security requirement capture and permission design for BA outputs.

---

# Core Security Areas

Every feature review must include:

- Authentication requirements
- Authorization boundaries (RBAC/ABAC)
- Sensitive data handling
- Audit logging requirements
- Abuse/fraud prevention checks

---

# RBAC Requirement Template

| Role | Action | Resource | Scope | Allowed (Y/N) | Notes |
|---|---|---|---|---|---|

---

# Mandatory Security Checks

1. Unauthorized access path defined.
2. Privilege escalation scenario reviewed.
3. Sensitive actions require explicit permission.
4. Read/write/delete boundaries are explicit by role.
5. Audit events defined for sensitive actions.
6. Error responses do not leak sensitive internals.
7. Session/token handling assumptions are documented.

---

# Audit Event Standard

Each sensitive action should capture:

- actor ID
- timestamp
- action
- resource ID
- previous state (if update)
- new state
- request correlation ID

---

# Security Severity Labels

- LOW
- MEDIUM
- HIGH
- CRITICAL

---

# Minimum Output Rule

If permission boundaries are unclear, output:

`NEED_CLARIFICATION: RBAC_BOUNDARY`
