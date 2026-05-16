# SEQUENCE DIAGRAM STANDARD

## Purpose

Standardize sequence diagrams.

---

# Participants Order

Recommended order:

- Frontend
- API Gateway
- Auth Service
- Business Service
- Database
- External HIS
- Notification Service

---

# Request Format

Use:

Actor -> Service

Example:

Frontend -> API Gateway

---

# Response Format

Use dashed line.

Example:

API Gateway --> Frontend

---

# Async Flow

Use label:

async

Example:

Publish Event (async)

---

# Retry Flow

Retry count required.

Example:

Retry x3

---

# Timeout Handling

External services must define:
- timeout duration
- retry logic
- fallback logic

---

# Error Handling

Must define:
- error response
- rollback
- compensation

---

# Queue/Event Naming

Format:

event.{module}.{action}

Example:

event.claim.created

---

# Notes

Optional technical explanation allowed.