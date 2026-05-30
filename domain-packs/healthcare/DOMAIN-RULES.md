# Healthcare Domain Rules

## RULE: BR-HLTH-001
### RULE NAME
Patient Identity Verification
### RULE STATEMENT
IF patient demographic mismatch is detected
THEN encounter registration must be blocked until verification is completed.

---

## RULE: BR-HLTH-002
### RULE NAME
Critical Allergy Alert
### RULE STATEMENT
IF prescribed medication conflicts with known severe allergy
THEN require override reason and supervisor confirmation.

---

## RULE: BR-HLTH-003
### RULE NAME
Clinical Audit Requirement
### RULE STATEMENT
IF diagnosis or treatment plan is updated
THEN write immutable clinical audit log with actor and timestamp.
