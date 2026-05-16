# STATE DIAGRAM STANDARD

## Purpose

Standardize state machine diagrams.

---

# State Naming

Use past participle/status format.

Examples:
- Draft
- Pending
- Approved
- Rejected
- Cancelled
- Expired

---

# Transition Naming

Format:

[action]

Example:
- submit
- approve
- reject
- cancel

---

# Required States

Recommended:
- Draft
- Pending
- Completed
- Failed
- Cancelled

---

# Rules

## Every state must define:

- entry condition
- exit condition

---

## Every transition must define:

- actor
- validation
- business rule

---

# Timeout States

Must define:
- expiration condition
- auto transition

---

# Error State

Optional:
- Failed
- Rejected
- Partial Failed

---

# Reopen/Reprocess

Must explicitly define:
- allowed states
- permissions
- audit log requirement