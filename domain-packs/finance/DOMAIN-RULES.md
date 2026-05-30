# Finance Domain Rules

## RULE: BR-FIN-001
### RULE NAME
Dual Approval for High-Value Payment
### RULE STATEMENT
IF payment amount exceeds limit
THEN two distinct approvers are required.

---

## RULE: BR-FIN-002
### RULE NAME
Posting Integrity
### RULE STATEMENT
IF journal posting fails in one ledger component
THEN transaction must be rolled back and flagged for reconciliation.

---

## RULE: BR-FIN-003
### RULE NAME
Period Lock Enforcement
### RULE STATEMENT
IF fiscal period is locked
THEN manual transaction update must be blocked.
