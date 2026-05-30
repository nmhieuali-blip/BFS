# BA QUALITY SCORE STANDARD

## Purpose
Provide an objective scoring model to evaluate BA artifact quality and track improvement over time.

---

# Scoring Model

Score each dimension from 0 to 2:

- 0 = Missing / Poor
- 1 = Partial / Inconsistent
- 2 = Complete / High Quality

Total score = sum of all dimensions.

Maximum score = 20.

---

# Dimensions

## 1. Business Clarity
- Problem statement and business goal are explicit and measurable.

## 2. Scope Definition
- In scope / out of scope are clearly defined.

## 3. Actor and Permission Clarity
- Actors are complete and RBAC boundaries are explicit.

## 4. Flow Completeness
- Main, alternative, and exception flows are complete and coherent.

## 5. Acceptance Criteria Quality
- AC are testable, measurable, and implementation-independent.

## 6. Business Rule Coverage
- Rules are explicit, uniquely identified, and linked to AC.

## 7. Edge-Case and Failure Coverage
- Timeouts, retries, duplicates, concurrency, and integration failures are covered.

## 8. Data and Contract Definition
- Required data fields, validation, and contract expectations are defined.

## 9. Traceability Completeness
- Requirement-to-test mapping is complete and non-orphaned.

## 10. Diagram Quality
- Diagrams reflect written flow and include decision/exception branches.

---

# Quality Bands

| Score | Rating | Decision |
|---|---|---|
| 18-20 | Excellent | Ready for implementation |
| 15-17 | Good | Minor refinement required |
| 11-14 | Fair | Significant refinement required |
| 0-10 | Poor | Rework required before grooming |

---

# Release Gate Recommendation

Minimum quality target by stage:

- Draft review: >= 12
- Grooming ready: >= 15
- Implementation ready: >= 17

---

# Review Output Format

## Quality Score Summary
- Total: `X/20`
- Rating: `Excellent/Good/Fair/Poor`
- Decision: `PASS/NEED_IMPROVEMENT/FAIL`

## Dimension Breakdown
| Dimension | Score (0-2) | Notes |
|---|---|---|

## Improvement Actions
- Action 1
- Action 2
