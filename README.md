# BA AI Framework (BFS)

A markdown-first framework that helps Business Analysts and product teams use AI to produce **consistent, traceable, implementation-ready** business analysis artifacts.

Instead of ad-hoc prompts every time, the framework standardizes:

- **Prompts** — bootstrap, generate, review
- **Standards** — User Story, AC, BPMN, traceability, NFR, security
- **Templates** — CRUD, approval, integration, notification, reporting
- **Domain packs** — domain-specific glossaries and business rules (healthcare, insurance, finance)
- **Quality gates** — DoR/DoD, quality score, validation script

---

## Who is this for?

- **Business Analyst** — write stories, AC, and flow diagrams quickly and consistently
- **Product Owner / PM** — review artifact quality before grooming
- **QA** — trace requirement → AC → test case
- **Engineering** — receive specs with clear flows, rules, permissions, and integrations

---

## Quick start (5 minutes)

### 1. Attach context to your AI chat

In Cursor or another AI chat tool, attach these files:

| File | Purpose |
|---|---|
| [`prompts/AI-BA-BOOTSTRAP.md`](prompts/AI-BA-BOOTSTRAP.md) | Set role and operating rules |
| [`standards/USER-STORY-STANDARD.md`](standards/USER-STORY-STANDARD.md) | User story standard |
| [`standards/AC-STANDARD.md`](standards/AC-STANDARD.md) | Acceptance criteria standard |
| [`glossary/BUSINESS-GLOSSARY.md`](glossary/BUSINESS-GLOSSARY.md) | Shared terminology |
| Domain pack (optional) | Example: [`domain-packs/healthcare/`](domain-packs/healthcare/) |

### 2. Run the bootstrap prompt

```txt
Use attached BA AI Framework standards.

Generate business analysis documents following the framework rules.
```

### 3. Send a task prompt for your feature

```txt
# Context
Healthcare Platform

# Task
Generate business analysis documentation

# Actors
- Admin
- Staff

# Requirements
- Create invoice
- Validate payment
- Support approval workflow

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

### 4. Review and validate

- Use [`prompts/REVIEW-BUSINESS-FLOW.md`](prompts/REVIEW-BUSINESS-FLOW.md) and [`prompts/REVIEW-EDGE-CASE.md`](prompts/REVIEW-EDGE-CASE.md)
- Run validation: `./scripts/validate-ba-artifact.sh path/to/artifact.md`

Step-by-step details: see [`HOW-TO-USE.md`](HOW-TO-USE.md).

---

## Workflow overview

```
Bootstrap Prompt  →  Feature Prompt  →  Review Prompt  →  Validate  →  Finalize
     ↑                      ↑                  ↑
 AI-BA-BOOTSTRAP      GENERATE-*.md       REVIEW-*.md
 + standards           + templates         + quality score
 + glossary            + domain pack
```

Practical examples and prompt tips: [`CASE-STUDY.md`](CASE-STUDY.md).

---

## Repository structure

```
BFS/
├── prompts/           # Prompt playbook (bootstrap, generate, review)
├── standards/         # Quality standards and ID conventions
├── templates/         # Flow templates by business pattern
├── domain-packs/      # Glossary + rules + samples by domain
├── business-rules/    # Shared rules (auth, payment, notification...)
├── glossary/          # Global business glossary
├── examples/          # Complete sample artifacts
├── diagrams/          # Mermaid examples (BPMN, sequence, state)
├── scripts/           # Artifact validation tools
├── HOW-TO-USE.md      # Detailed usage guide
└── CASE-STUDY.md      # Workflow and practical prompt examples
```

---

## Sample artifacts

| File | Content |
|---|---|
| [`examples/SAMPLE-BA-DOCUMENT.md`](examples/SAMPLE-BA-DOCUMENT.md) | Full BA document (story, AC, BPMN, sequence, state, edge cases) |
| [`examples/SAMPLE-FULL-FLOW.md`](examples/SAMPLE-FULL-FLOW.md) | End-to-end flow |
| [`examples/SAMPLE-USER-STORY.md`](examples/SAMPLE-USER-STORY.md) | Sample user story |
| [`examples/SAMPLE-BPMN.md`](examples/SAMPLE-BPMN.md) | Sample BPMN |
| [`examples/SAMPLE-SEQUENCE.md`](examples/SAMPLE-SEQUENCE.md) | Sample sequence diagram |

---

## Mandatory traceability chain

Every feature must map through:

```
Requirement → User Story → Business Rule → AC → Test Case → API/Event Contract
```

ID conventions: `REQ-`, `US-`, `BR-`, `AC-`, `TC-`, `API-`, `EVT-` — see [`standards/TRACEABILITY-STANDARD.md`](standards/TRACEABILITY-STANDARD.md).

---

## Quality gates

| Stage | Minimum score | Reference |
|---|---|---|
| Draft review | ≥ 12/20 | [`standards/QUALITY-SCORE-STANDARD.md`](standards/QUALITY-SCORE-STANDARD.md) |
| Grooming ready | ≥ 15/20 | [`standards/DOR-DOD-STANDARD.md`](standards/DOR-DOD-STANDARD.md) |
| Implementation ready | ≥ 17/20 | [`templates/REVIEW-REPORT-TEMPLATE.md`](templates/REVIEW-REPORT-TEMPLATE.md) |

---

## Domain packs

Attach a domain pack when working in a specific industry:

| Domain | Glossary | Rules | Sample |
|---|---|---|---|
| Healthcare | [`DOMAIN-GLOSSARY.md`](domain-packs/healthcare/DOMAIN-GLOSSARY.md) | [`DOMAIN-RULES.md`](domain-packs/healthcare/DOMAIN-RULES.md) | [`SAMPLE-REQUIREMENT.md`](domain-packs/healthcare/SAMPLE-REQUIREMENT.md) |
| Insurance | [`DOMAIN-GLOSSARY.md`](domain-packs/insurance/DOMAIN-GLOSSARY.md) | [`DOMAIN-RULES.md`](domain-packs/insurance/DOMAIN-RULES.md) | [`SAMPLE-REQUIREMENT.md`](domain-packs/insurance/SAMPLE-REQUIREMENT.md) |
| Finance | [`DOMAIN-GLOSSARY.md`](domain-packs/finance/DOMAIN-GLOSSARY.md) | [`DOMAIN-RULES.md`](domain-packs/finance/DOMAIN-RULES.md) | [`SAMPLE-REQUIREMENT.md`](domain-packs/finance/SAMPLE-REQUIREMENT.md) |

---

## Operating principles

1. **Do not invent business logic** — if information is missing, output `NEED_CLARIFICATION`
2. **Markdown-first** — structured output that is easy to review and version control
3. **Traceability** — every AC links to a BR, every story links to a requirement
4. **Full coverage** — happy path, exceptions, permissions, validation, timeout/retry, concurrency
5. **Consistent terminology** — use the glossary; do not introduce new terms without reason

---

## Related documentation

- [HOW-TO-USE.md](HOW-TO-USE.md) — detailed step-by-step guide
- [CASE-STUDY.md](CASE-STUDY.md) — 3-level workflow and standard prompt format
- [domain-packs/README.md](domain-packs/README.md) — how to use domain packs
