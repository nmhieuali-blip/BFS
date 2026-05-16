# BPMN Examples

---

# Example 1 — User Login Flow

## Business Context

User login vào hệ thống healthcare portal.

---

## Actors

- User
- Frontend
- Auth Service
- Database
- Notification Service

---

## BPMN Flow

```mermaid
flowchart TD

A[User Open Login Page]
--> B[Input Username Password]

B --> C{Validate Input}

C -->|Invalid| D[Show Validation Error]

C -->|Valid| E[Send Login Request]

E --> F[Auth Service Verify User]

F --> G{Credential Correct}

G -->|No| H[Increase Failed Count]

H --> I{Exceeded Retry Limit}

I -->|Yes| J[Lock Account]

I -->|No| K[Return Login Failed]

G -->|Yes| L[Generate JWT Token]

L --> M[Save Login Audit]

M --> N[Return Access Token]

N --> O[Redirect Dashboard]
````

---

# Example 2 — Insurance Approval Flow

## Actors

* Receptionist
* Insurance Staff
* Approval Manager
* Claim Service

---

## BPMN Flow

```mermaid
flowchart TD

A[Create Insurance Claim]
--> B[Validate Insurance Info]

B --> C{Valid Insurance}

C -->|No| D[Reject Claim]

C -->|Yes| E[Submit Claim]

E --> F[Insurance Staff Review]

F --> G{Need Manager Approval}

G -->|No| H[Approve Claim]

G -->|Yes| I[Manager Review]

I --> J{Approved}

J -->|No| K[Reject Claim]

J -->|Yes| H

H --> L[Update Claim Status]

L --> M[Notify Hospital]