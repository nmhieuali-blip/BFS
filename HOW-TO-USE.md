# How to Use the BA AI Framework

This guide explains how to use the framework effectively — from opening an AI chat to producing artifacts ready for grooming or engineering handoff.

---

## Framework goal

Turn the BA process into a repeatable pipeline:

```
Fill requirement  →  AI generate  →  Review  →  Validate  →  Done
```

AI works best when you provide **clear structure, explicit output, and explicit constraints** — not long conversational prompts.

---

## Before you start

### Tools

- Cursor (or another IDE/AI chat that supports file attachments)
- Bash shell (to run the validation script)

### Information to prepare

Before generating, gather:

| Information | Example |
|---|---|
| Project / domain name | Healthcare Platform |
| Feature to analyze | Insurance Claim Approval |
| Actors | Staff, Supervisor, System services |
| Requirements | Main flow, business rules |
| Technical constraints | Microservice, RBAC, audit log, Mermaid only |

If critical information is missing, AI will return `NEED_CLARIFICATION` — this is expected behavior, not an error.

---

## 3-level workflow

The framework is designed around 3 prompt levels. See [`CASE-STUDY.md`](CASE-STUDY.md) for more examples.

### Level 1 — Bootstrap (start of every chat)

**Goal:** set role, standards, and architecture constraints.

**Attach:**

1. [`prompts/AI-BA-BOOTSTRAP.md`](prompts/AI-BA-BOOTSTRAP.md)
2. Relevant standards (at minimum USER-STORY + AC)
3. [`glossary/BUSINESS-GLOSSARY.md`](glossary/BUSINESS-GLOSSARY.md)
4. Domain pack (if applicable)
5. Cross-cutting business rules (auth, notification, etc.) if the feature is related

**Sample prompt:**

```txt
You are a Senior Business Analyst working on a Healthcare Platform.

Follow the attached BA AI Framework standards and templates.

Project Constraints:
- Microservice architecture
- RBAC required
- Audit logging required
- Mermaid diagrams only

When generating outputs:
- Use markdown with structured sections
- Use concise and testable AC
- Include validation, permission, error, and edge cases

Always follow:
- USER-STORY-STANDARD.md
- AC-STANDARD.md
- BUSINESS-GLOSSARY.md
```

The bootstrap prompt stays **nearly unchanged** across features — set it up once per chat.

---

### Level 2 — Task / Feature (generate artifacts)

**Goal:** generate specific artifacts for a feature.

Choose the appropriate generate prompt:

| Artifact | Prompt |
|---|---|
| User Story | [`prompts/GENERATE-USER-STORY.md`](prompts/GENERATE-USER-STORY.md) |
| Acceptance Criteria | [`prompts/GENERATE-AC.md`](prompts/GENERATE-AC.md) |
| BPMN / flow diagram | [`prompts/GENERATE-BPMN.md`](prompts/GENERATE-BPMN.md) |

**Recommended prompt format:**

```txt
# Context
<domain / project>

# Task
<what to generate>

# Actors
- ...

# Requirements
- ...

# Rules
- Use Mermaid
- Follow RBAC
- Include audit logging

# Expected Output
- User Story
- AC
- BPMN
- Sequence Diagram
- Edge Cases
```

**Short example:**

```txt
Generate:
- User Story
- AC
- BPMN

Feature:
Patient Registration

Requirements:
- Create patient profile
- Validate insurance number
- Prevent duplicate identity
```

---

### Level 3 — Review / Refinement

**Goal:** improve quality before finalizing.

| Review type | Prompt |
|---|---|
| Flow completeness, traceability, quality score | [`prompts/REVIEW-BUSINESS-FLOW.md`](prompts/REVIEW-BUSINESS-FLOW.md) |
| Edge cases, concurrency, integration risks | [`prompts/REVIEW-EDGE-CASE.md`](prompts/REVIEW-EDGE-CASE.md) |

**Sample prompt:**

```txt
Review the generated output for:

- missing edge cases
- missing validation rules
- permission gaps
- unclear acceptance criteria
- missing audit logging
- inconsistent terminology

Improve the documentation quality while keeping the same structure.
```

Record review results in [`templates/REVIEW-REPORT-TEMPLATE.md`](templates/REVIEW-REPORT-TEMPLATE.md).

---

## Choosing files to attach by feature type

You do not need to attach the entire repo. Select based on need:

### Required (every feature)

| File | Why |
|---|---|
| `prompts/AI-BA-BOOTSTRAP.md` | AI operating rules |
| `standards/USER-STORY-STANDARD.md` | Story structure |
| `standards/AC-STANDARD.md` | Given/When/Then format |
| `glossary/BUSINESS-GLOSSARY.md` | Consistent terminology |

### By artifact to generate

| Artifact | Add these standards |
|---|---|
| BPMN | `standards/BPMN-STANDARD.md` |
| Sequence diagram | `standards/SEQUENCE-STANDARD.md` |
| State diagram | `standards/STATE-DIAGRAM-STANDARD.md` |
| Business rules | `standards/BUSINESS-RULE-STANDARD.md` |
| Data/API contract | `standards/DATA-CONTRACT-STANDARD.md` |
| Security / RBAC | `standards/SECURITY-RBAC-STANDARD.md` |
| NFR | `standards/NFR-STANDARD.md` |
| Traceability matrix | `standards/TRACEABILITY-STANDARD.md` |

### By business pattern

| Pattern | Template |
|---|---|
| Basic CRUD | [`templates/CRUD-FLOW.md`](templates/CRUD-FLOW.md) |
| Approval workflow | [`templates/APPROVAL-FLOW.md`](templates/APPROVAL-FLOW.md) |
| External system integration | [`templates/INTEGRATION-FLOW.md`](templates/INTEGRATION-FLOW.md) |
| Notification | [`templates/NOTIFICATION-FLOW.md`](templates/NOTIFICATION-FLOW.md) |
| Reporting | [`templates/REPORTING-FLOW.md`](templates/REPORTING-FLOW.md) |

### Cross-cutting business rules

Attach when the feature is related:

| File | When to use |
|---|---|
| [`business-rules/AUTH-RULES.md`](business-rules/AUTH-RULES.md) | Login, permission, token |
| [`business-rules/NOTIFICATION-RULES.md`](business-rules/NOTIFICATION-RULES.md) | Email, SMS, in-app notify |
| [`business-rules/PAYMENT-RULES.md`](business-rules/PAYMENT-RULES.md) | Payment, refund |
| [`business-rules/INSURANCE-RULES.md`](business-rules/INSURANCE-RULES.md) | Claim, policy, coverage |

### Domain packs

When working in a specific industry, attach all 3 files in the pack:

```
domain-packs/<domain>/
├── DOMAIN-GLOSSARY.md
├── DOMAIN-RULES.md
└── SAMPLE-REQUIREMENT.md
```

Available domains: `healthcare`, `insurance`, `finance`.

---

## Step-by-step process (checklist)

### Step 1 — Setup chat

- [ ] Attach bootstrap + standards + glossary
- [ ] Attach domain pack (if applicable)
- [ ] Attach related business rules
- [ ] Attach appropriate flow template
- [ ] Send bootstrap prompt

### Step 2 — Generate

- [ ] Fill prompt using Context / Task / Actors / Requirements / Rules / Expected Output format
- [ ] Include `requirement_id` if available (e.g. `REQ-CLAIM-001`)
- [ ] Request markdown-only output
- [ ] Save output to a `.md` file in the project or wiki

### Step 3 — Review

- [ ] Run REVIEW-BUSINESS-FLOW prompt
- [ ] Run REVIEW-EDGE-CASE prompt
- [ ] Score using QUALITY-SCORE-STANDARD (target ≥ 15 for grooming)
- [ ] Resolve HIGH/CRITICAL findings before proceeding

### Step 4 — Validate

```bash
./scripts/validate-ba-artifact.sh path/to/your-artifact.md
```

The script checks:

- Required sections: Business Context, User Story, Actors, Preconditions, Main Flow, Acceptance Criteria, Business Rules
- ID format: `US-`, `AC-`, `BR-`
- Given/When/Then blocks
- Traceability reference (warning if missing)

### Step 5 — Finalize

- [ ] Complete traceability matrix ([`standards/TRACEABILITY-STANDARD.md`](standards/TRACEABILITY-STANDARD.md))
- [ ] Pass DoR/DoD ([`standards/DOR-DOD-STANDARD.md`](standards/DOR-DOD-STANDARD.md))
- [ ] Resolve open questions or label them `NEED_CLARIFICATION`
- [ ] Update status: `DRAFT` → `READY_FOR_GROOMING` → `READY_FOR_IMPLEMENTATION`
- [ ] Fill REVIEW-REPORT-TEMPLATE if sign-off is required

---

## Expected output structure

A complete BA artifact should include (see [`examples/SAMPLE-BA-DOCUMENT.md`](examples/SAMPLE-BA-DOCUMENT.md)):

```
Story Information (metadata table)
Business Context (problem, goal, metrics)
User Story (As a / I want / So that)
Actors
Preconditions
Trigger
Main Flow
Alternative Flow
Exception Flow
Postconditions
Acceptance Criteria (AC-xxx, Given/When/Then)
Business Rules (BR-xxx)
Validation Rules
Permissions (RBAC)
Dependencies
Assumptions / Out of Scope
BPMN (Mermaid)
Sequence Diagram (Mermaid)
State Diagram (Mermaid) — if state machine applies
Edge Case Review
Open Questions
Traceability Matrix
```

---

## ID conventions and labels

### ID conventions

| Type | Format | Example |
|---|---|---|
| Requirement | `REQ-{DOMAIN}-{NUMBER}` | REQ-CLAIM-001 |
| User Story | `US-{MODULE}-{NUMBER}` | US-CLAIM-001 |
| Business Rule | `BR-{MODULE}-{NUMBER}` | BR-CLAIM-003 |
| Acceptance Criteria | `AC-{MODULE}-{NUMBER}` | AC-CLAIM-007 |
| Test Case | `TC-{MODULE}-{NUMBER}` | TC-CLAIM-021 |
| API Contract | `API-{MODULE}-{NUMBER}` | API-CLAIM-001 |

### Required labels in output

AI must use these labels when applicable:

- `PRECONDITION:`
- `EXCEPTION:`
- `VALIDATION:`
- `BUSINESS_RULE:`
- `NEED_CLARIFICATION:`

### Status labels

Use only: `DRAFT`, `READY_FOR_GROOMING`, `READY_FOR_IMPLEMENTATION`, `NEEDS_REWORK`, `DONE`.

---

## Coverage checklist

Every artifact must be reviewed for (from AI-BA-BOOTSTRAP):

- [ ] Happy path
- [ ] Alternative and exception flows
- [ ] Permission validation (RBAC)
- [ ] Data validation
- [ ] Timeout / retry behavior
- [ ] Duplicate action prevention
- [ ] Concurrency / race condition risk
- [ ] Audit and notification impacts

---

## Quality score and release gates

Score across 10 dimensions, 0–2 points each, maximum 20 total.

| Score | Rating | Decision |
|---|---|---|
| 18–20 | Excellent | Ready for implementation |
| 15–17 | Good | Minor refinement |
| 11–14 | Fair | Significant refinement |
| 0–10 | Poor | Rework required |

Targets by stage:

| Stage | Minimum score |
|---|---|
| Draft review | ≥ 12 |
| Grooming ready | ≥ 15 |
| Implementation ready | ≥ 17 |

Dimension details: [`standards/QUALITY-SCORE-STANDARD.md`](standards/QUALITY-SCORE-STANDARD.md).

---

## Tips for effective use

### 1. Bootstrap once, task many times

In the same chat, after bootstrap you only need to send short feature prompts for each new feature.

### 2. Generate artifacts incrementally if output is too long

Instead of requesting everything at once:

1. Generate User Story first
2. Generate AC from the existing story
3. Generate BPMN from the existing flow
4. Review edge cases last

This helps AI stay focused and reduces hallucination.

### 3. Always attach a requirement_id

Even without a formal requirement, use a temporary ID (`REQ-MODULE-001`) to maintain traceability.

### 4. Use samples as few-shot references

Attach [`examples/SAMPLE-BA-DOCUMENT.md`](examples/SAMPLE-BA-DOCUMENT.md) when onboarding a new team — AI will follow the format more closely.

### 5. Use Mermaid for all diagrams

The framework standardizes Mermaid for BPMN, sequence, and state diagrams. Syntax examples: [`diagrams/`](diagrams/).

---

## Anti-patterns to avoid

| Anti-pattern | Consequence | Fix |
|---|---|---|
| Long unstructured prompts | Messy output, missing sections | Use Context/Task/Actors/Requirements/Rules/Output format |
| Not attaching standards | AI invents its own format | Always attach bootstrap + standards |
| AC not linked to BR | Lost traceability | Require AC → BR mapping summary |
| Skipping exception flows | Production bugs | Always run REVIEW-EDGE-CASE |
| Inventing business rules | Incorrect specs | AI must return NEED_CLARIFICATION when info is missing |
| No validation before grooming | Unready stories | Run validate script + quality score |

---

## Handling NEED_CLARIFICATION

When AI returns `NEED_CLARIFICATION: <reason>`:

1. Read the reason — identify missing information
2. Add it to the prompt (business rule, threshold, SLA, actor permission, etc.)
3. Re-generate the missing section
4. Do not finalize the artifact while open questions remain unlabeled

---

## Integrating into team workflow

### For BAs

- One feature = one markdown artifact file
- Version control artifacts alongside the codebase or in a wiki
- Store review reports alongside artifacts

### For PO / Scrum

- Run DoR check before grooming ([`standards/DOR-DOD-STANDARD.md`](standards/DOR-DOD-STANDARD.md))
- Only bring stories into sprint when quality score ≥ 15

### For QA

- Map AC → Test Case per TRACEABILITY-STANDARD
- Edge case review feeds into test plan

### For Engineering

- Sequence diagram + data contract = input for API design
- State diagram = input for state machine implementation

---

## Quick reference — most important files

| Purpose | File |
|---|---|
| Start every chat | `prompts/AI-BA-BOOTSTRAP.md` |
| Generate story | `prompts/GENERATE-USER-STORY.md` |
| Generate AC | `prompts/GENERATE-AC.md` |
| Generate BPMN | `prompts/GENERATE-BPMN.md` |
| Review flow | `prompts/REVIEW-BUSINESS-FLOW.md` |
| Review edge cases | `prompts/REVIEW-EDGE-CASE.md` |
| Full sample artifact | `examples/SAMPLE-BA-DOCUMENT.md` |
| Empty story template | `templates/USER-STORY-TEMPLATE.md` |
| Validate output | `scripts/validate-ba-artifact.sh` |
| Workflow examples | `CASE-STUDY.md` |

---

## FAQ

**Q: How many files should I attach?**  
A: Minimum 4 (bootstrap + 2 standards + glossary). Add templates, domain packs, and business rules based on the feature.

**Q: Can I use this framework outside Cursor?**  
A: Yes. Copy file contents into a system prompt or attach via your AI tool's context mechanism.

**Q: What language should artifacts use?**  
A: English throughout — IDs, AC, diagram labels, and business context should all follow the glossary terminology.

**Q: How do I know an artifact is good enough?**  
A: PASS the validation script + quality score ≥ 15 + no remaining HIGH/CRITICAL findings from review prompts.

**Q: How do I add a new domain?**  
A: Create a folder under `domain-packs/` with 3 files: DOMAIN-GLOSSARY.md, DOMAIN-RULES.md, SAMPLE-REQUIREMENT.md. Follow the structure of the existing healthcare/insurance/finance packs.
