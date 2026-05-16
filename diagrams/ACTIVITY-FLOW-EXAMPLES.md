# Activity Flow Examples

---

# Example 1 — ETL Job Flow

## Description

Nightly ETL process cho BI system.

---

## Activity Diagram

```mermaid
flowchart TD

A[Start Scheduler]
--> B[Extract Data]

B --> C{Extraction Success}

C -->|No| D[Retry Extract]

D --> E{Retry Limit Exceeded}

E -->|Yes| F[Send Failure Alert]

E -->|No| B

C -->|Yes| G[Transform Data]

G --> H[Validate Data]

H --> I{Validation Success}

I -->|No| J[Reject Batch]

I -->|Yes| K[Load Data Warehouse]

K --> L[Generate ETL Report]

L --> M[Finish]
````

---

# Example 2 — Notification Retry Workflow

```mermaid
flowchart TD

A[Receive Notification Request]
--> B[Send SMS]

B --> C{SMS Success}

C -->|Yes| D[Update Success Status]

C -->|No| E[Increase Retry Counter]

E --> F{Retry < 3}

F -->|Yes| G[Wait Retry Delay]

G --> B

F -->|No| H[Send Failure Alert]

H --> I[Move Dead Letter Queue]