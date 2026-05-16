# State Machine Examples

---

# Example 1 — Insurance Claim State

## States

- Draft
- Submitted
- Reviewing
- Approved
- Rejected
- Cancelled

---

## State Diagram

```mermaid
stateDiagram-v2

[*] --> Draft

Draft --> Submitted

Submitted --> Reviewing

Reviewing --> Approved
Reviewing --> Rejected

Submitted --> Cancelled
Reviewing --> Cancelled

Approved --> [*]
Rejected --> [*]
Cancelled --> [*]
````

---

# Example 2 — Payment Processing State

```mermaid
stateDiagram-v2

[*] --> Pending

Pending --> Processing

Processing --> Success
Processing --> Failed
Processing --> Timeout

Failed --> Retry

Retry --> Processing

Success --> [*]
Timeout --> [*]