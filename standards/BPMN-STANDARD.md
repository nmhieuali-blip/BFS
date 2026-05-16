# BPMN STANDARD

## Purpose

Standardize BPMN diagrams.

---

# Diagram Structure

## Start Event

Every flow must have:
- 1 start event
- clear trigger

---

## End Event

Every flow must end with:
- success
- rejection
- cancellation
- timeout

---

# Swimlanes

Recommended lanes:
- User
- Frontend
- API Gateway
- Service
- HIS
- Notification Service

---

# Task Naming

Format:

[Action] + [Target]

Example:
- Validate Token
- Create Claim
- Send SMS

---

# Gateway Naming

Question format.

Example:
- Token Valid?
- HIS Available?

---

# Error Handling

Every external integration requires:
- timeout flow
- retry flow
- fallback flow

---

# Retry Standard

Retry count must be explicit.

Example:

Retry 3 times

---

# Compensation Flow

Required for:
- rollback
- distributed transaction
- payment reversal

---

# Event Standard

Supported:
- timer
- message
- signal
- error

---

# Color Convention

Optional:
- Green = success
- Red = error
- Yellow = pending