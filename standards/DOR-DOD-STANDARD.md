# DEFINITION OF READY / DEFINITION OF DONE STANDARD

## Purpose
Define mandatory entry and exit criteria for BA artifacts to reduce ambiguity during planning, grooming, and handoff.

---

# Definition of Ready (DoR)

A user story is READY only when all checks below are satisfied.

## Mandatory Ready Criteria

1. Story ID and title follow naming standard.
2. Business goal is measurable.
3. Actors and permission boundaries are identified.
4. Preconditions and trigger are defined.
5. Main flow is complete.
6. Alternative and exception flows are listed.
7. Business rules are identified with BR IDs.
8. Acceptance criteria exist and are testable.
9. Dependencies and assumptions are explicit.
10. Open questions are either resolved or labeled `NEED_CLARIFICATION`.

---

# Definition of Done (DoD)

A BA artifact is DONE only when all checks below are satisfied.

## Mandatory Done Criteria

1. DoR criteria remain valid after review.
2. Traceability matrix is complete.
3. Review findings are resolved or accepted with owner + rationale.
4. Edge-case review completed (validation, permission, integration, concurrency).
5. Diagram(s) match the latest text flow.
6. Data/contract expectations are documented.
7. NFR and security requirements are documented or explicitly out of scope.
8. Quality score meets stage target.
9. Terminology matches glossary.
10. Artifact version/date/reviewer metadata are updated.

---

# Status Labels

Use only:

- `DRAFT`
- `READY_FOR_GROOMING`
- `READY_FOR_IMPLEMENTATION`
- `NEEDS_REWORK`
- `DONE`

---

# Review Ownership

Minimum approvers:

- Business Analyst
- QA Representative
- Engineering Representative

Optional:

- Product Manager
- Security Reviewer

---

# Escalation Rule

If critical gaps remain unresolved for two review cycles:

- set status `NEEDS_REWORK`
- escalate to BA lead and product owner
