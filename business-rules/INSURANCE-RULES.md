# Insurance Business Rules

## RULE: BR-INSURANCE-001

### RULE NAME
Insurance Validity Check

### DESCRIPTION
Insurance policy must be active before claim submission.

### RULE STATEMENT
IF insurance expiry date < current date
THEN reject insurance claim.

### CONDITIONS
- Claim submitted
- Insurance attached

### OUTPUT
- Claim rejected

### PRIORITY
CRITICAL

---

## RULE: BR-INSURANCE-002

### RULE NAME
Coverage Validation

### DESCRIPTION
Treatment must belong to insurance coverage list.

### RULE STATEMENT
IF treatment not covered
THEN insurance payment denied.

### CONDITIONS
- Insurance policy active

### OUTPUT
- Coverage validation result

### PRIORITY
HIGH

---

## RULE: BR-INSURANCE-003

### RULE NAME
Claim Submission Window

### DESCRIPTION
Claims must be submitted within allowed timeframe.

### RULE STATEMENT
IF claim submitted > 30 days after treatment
THEN reject claim.

### CONDITIONS
- Treatment completed

### EXCEPTIONS
- Emergency case
- Regulatory override

### OUTPUT
- Claim rejected

### PRIORITY
HIGH

---

## RULE: BR-INSURANCE-004

### RULE NAME
Pre-Approval Requirement

### DESCRIPTION
High-cost treatments require insurance pre-approval.

### RULE STATEMENT
IF treatment cost > configured threshold
THEN require pre-approval before treatment.

### CONDITIONS
- Insurance applicable

### OUTPUT
- Pre-approval workflow

### PRIORITY
CRITICAL