# Insurance Domain Rules

## RULE: BR-INS-001
### RULE NAME
Claim Submission Window
### RULE STATEMENT
IF treatment completion date exceeds 30 days
THEN claim submission must be rejected.

---

## RULE: BR-INS-002
### RULE NAME
Policy Eligibility
### RULE STATEMENT
IF policy status is not active on service date
THEN claim cannot proceed.

---

## RULE: BR-INS-003
### RULE NAME
High-Value Claim Approval
### RULE STATEMENT
IF claim amount exceeds configured threshold
THEN supervisor approval is required before submission.
