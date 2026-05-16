# Full BA Flow Example

# Insurance Claim Submission

---

# Business Context

Patient submits insurance claim after treatment.

System validates insurance policy and submits claim to insurance provider.

---

# Actors

- Patient
- Hospital Staff
- Insurance Service
- Claim Processor

---

# User Story

As a hospital staff,
I want to submit insurance claims,
So that patient treatment costs can be reimbursed.

---

# Preconditions

- Patient has valid insurance
- Treatment completed
- Invoice generated

---

# Main Flow

1. Staff opens claim submission screen
2. System loads patient treatment data
3. Staff verifies information
4. System validates insurance policy
5. Staff submits claim
6. System generates claim record
7. System sends claim to insurance provider
8. Claim status updated

---

# Alternative Flow

## AF-01 — Manual Review Required

- Claim amount exceeds threshold
- Route to supervisor review

---

# Exception Flow

## EX-01 — Insurance Expired

- Reject claim submission

## EX-02 — Missing Required Documents

- Display validation errors

---

# Business Rules

| Rule ID | Description |
|---|---|
| BR-001 | Claim must be submitted within 30 days |
| BR-002 | Claim requires treatment invoice |
| BR-003 | High-value claims require approval |

---

# Acceptance Criteria

## AC-01

Given valid insurance
When staff submits claim
Then system creates claim successfully

## AC-02

Given expired insurance
When claim submitted
Then system rejects request

---

# BPMN Example

```text
(Start)
   ↓
Load Treatment Data
   ↓
Validate Insurance
   ↓
[Gateway]
 ├── Valid → Submit Claim
 └── Invalid → Reject
   ↓
Approval Required?
   ↓
[Gateway]
 ├── Yes → Supervisor Approval
 └── No → Continue
   ↓
Send Claim Provider
   ↓
(End)
```

---

# Sequence Example

```text
Staff → Frontend:
Submit claim

Frontend → Claim Service:
POST /claims

Claim Service → Insurance Service:
Validate policy

Insurance Service → Claim Service:
Validation result

Claim Service → Database:
Save claim

Claim Service → External Insurance API:
Submit claim

External API → Claim Service:
Response
```

---

# API Contract Example

## POST /claims

### Request

```json
{
  "patientId": "P001",
  "invoiceId": "INV001",
  "insuranceId": "INS001"
}
```

### Response

```json
{
  "claimId": "CLM001",
  "status": "SUBMITTED"
}
```

---

# Notification Rules

| Event | Notification |
|---|---|
| Claim Submitted | SMS + Email |
| Claim Rejected | Email |
| Approval Required | Internal Notification |

---

# Audit Rules

| Action | Audit Required |
|---|---|
| Create Claim | Yes |
| Update Claim | Yes |
| Approve Claim | Yes |

---

# Edge Cases

- External insurance API timeout
- Duplicate claim submission
- Partial treatment invoice
- Concurrent approval updates

---

# Non-Functional Requirements

| Type | Requirement |
|---|---|
| Performance | < 5 seconds |
| Availability | 99.9% |
| Security | Role-based access |
| Audit | Full trace logging |

---

# Future Enhancements

- AI fraud detection
- Real-time insurance verification
- Auto-approval engine
- Multi-provider integration