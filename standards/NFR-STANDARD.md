# NON-FUNCTIONAL REQUIREMENTS STANDARD

## Purpose
Standardize how NFRs are captured, measured, and reviewed in BA artifacts.

---

# NFR Categories (Mandatory Review)

- Performance
- Availability
- Reliability
- Security
- Scalability
- Maintainability
- Observability
- Compliance
- Accessibility (if UI impacted)

---

# NFR Writing Rules

NFR statements must be:

- measurable
- testable
- environment-aware
- tied to business criticality

Avoid vague wording:

- "fast enough"
- "secure"
- "highly available"

---

# Required NFR Template

| NFR ID | Category | Requirement | Metric/Target | Measurement Method | Priority | Owner |
|---|---|---|---|---|---|---|

Example:

| NFR-CLAIM-001 | Performance | Claim submit API response time | p95 < 2.5s | APM dashboard | High | Engineering |

---

# Minimum NFR Baseline

Each feature should define at least:

- 1 performance target
- 1 availability target
- 1 security requirement
- 1 observability requirement (logs/metrics/traces)

---

# Validation Gate

NFR section is PASS only when:

- every critical NFR has a measurable target
- every target has a measurement method
- every target has owner + priority
