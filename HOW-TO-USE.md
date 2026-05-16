# HOW TO USE — BA AI Framework

---

# Step 1 — Prepare Context

Before asking AI to generate anything:

Attach:
- relevant standards
- glossary
- business rules
- templates

Recommended minimum:

```txt
- USER-STORY-STANDARD.md
- AC-STANDARD.md
- BUSINESS-GLOSSARY.md
```

---

# Step 2 — Bootstrap AI Context

Use:

```txt
prompts/AI-BA-BOOTSTRAP.md
```

This file establishes:
- project context
- AI behavior
- output rules
- architecture constraints

---

# Step 3 — Generate User Story

Use:

```txt
prompts/GENERATE-USER-STORY.md
```

Recommended input:
- business requirement
- module name
- actor
- expected outcome

Expected output:
- User Story
- Acceptance Criteria
- Validation Cases
- Permission Cases
- Error Cases

---

# Step 4 — Generate BPMN / Diagrams

Use:
- GENERATE-BPMN.md
- diagram examples

Preferred syntax:
- Mermaid

Expected outputs:
- BPMN
- Sequence Diagram
- State Diagram
- Activity Flow

---

# Step 5 — Review Edge Cases

Use:

```txt
prompts/REVIEW-EDGE-CASE.md
```

Purpose:
- identify missing validations
- identify permission gaps
- identify exception scenarios

---

# Step 6 — Final Refinement

Validate:
- terminology consistency
- AC completeness
- business flow accuracy
- diagram readability

---

# Recommended AI Workflow

## Simple Flow

```txt
Requirement
↓
Generate User Story
↓
Generate AC
↓
Generate BPMN
↓
Review Edge Cases
↓
Finalize
```

---

# Recommended Prompting Style

## Good Prompt

```txt
Generate:
- User Story
- Acceptance Criteria
- BPMN

Rules:
- Must support RBAC
- Must support audit logging
- Use Mermaid syntax
```

---

## Bad Prompt

```txt
Analyze this requirement
```

---

# AI Best Practices

## Keep prompts structured

Use:
- bullet points
- sections
- explicit instructions

---

## Reuse standards

Do not rewrite standards every time.

Reuse:
- standard files
- templates
- bootstrap prompts

---

## Prefer iterative refinement

Better:
- generate
- review
- refine

instead of:
- generating everything at once

---

# Diagram Guidelines

Preferred:
- Mermaid
- markdown-friendly syntax

Avoid:
- image-based diagrams
- proprietary formats

---

# Example Workflow

## Requirement

```txt
User submits insurance claim
```

---

## AI Generation

Generate:
- User Story
- AC
- BPMN
- Sequence Diagram
- State Diagram

Rules:
- Must support approval workflow
- Must support RBAC
- Must support audit logging

---

# Recommended Team Usage

## BA

- Requirement analysis
- User Story generation
- BPMN generation

---

## QA

- Generate test scenarios
- Validate AC completeness

---

## Developer

- Understand business flow
- Understand sequence flow
- Identify API impacts

---

## PM

- Grooming
- Scope clarification
- Flow validation

---

# Recommended Repository Usage

Keep:
- all docs in markdown
- all diagrams in Mermaid
- all standards reusable

Version control everything using Git.

---

# Maintenance Guidelines

Update framework when:
- repeated BA issues appear
- new business patterns emerge
- AI output quality decreases
- new architecture constraints are introduced

---

# Important Mindset

This framework is NOT:
- traditional documentation storage
- enterprise governance system

This framework IS:
- AI-assisted BA operating system
- reusable knowledge structure
- standardized analysis workflow