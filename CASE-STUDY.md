# Recommended AI Workflow

## Level 1 — Bootstrap Context

Mục tiêu:

* set role
* set standards
* set architecture constraints

Đây là prompt mở đầu của mọi chat.

---

# 1. BOOTSTRAP PROMPT

Ví dụ:

```txt id="7b4h0y"
You are a Senior Business Analyst working on a Healthcare Platform.

Follow the attached BA AI Framework standards and templates.

Focus on:
- structured business analysis
- reusable documentation
- AI-friendly markdown output

Project Constraints:
- Microservice architecture
- RBAC required
- Audit logging required
- Multi-HIS support
- Mermaid diagrams only

When generating outputs:
- Use markdown
- Use structured sections
- Use concise and testable AC
- Include validation cases
- Include permission cases
- Include error cases
- Include edge cases

Always follow:
- USER-STORY-STANDARD.md
- AC-STANDARD.md
- BUSINESS-GLOSSARY.md
```

---

# Level 2 — Task Prompt

Đây mới là prompt theo feature.

---

# 2. FEATURE PROMPT

Ví dụ:

```txt id="jlwm81"
Generate:

1. User Story
2. Acceptance Criteria
3. BPMN
4. Sequence Diagram
5. Edge Cases

Feature:
Insurance Claim Approval

Actors:
- Staff
- Supervisor

Requirements:
- Staff submits claim
- Supervisor approves/rejects
- System logs audit trail
- Notification sent after approval

Rules:
- Use Mermaid syntax
- Follow RBAC
- Include validation scenarios
```

---

# Level 3 — Review / Refinement Prompt

Sau khi AI generate xong.

---

# 3. REVIEW PROMPT

Ví dụ:

```txt id="jlwm82"
Review the generated output for:

- missing edge cases
- missing validation rules
- permission gaps
- unclear acceptance criteria
- missing audit logging
- inconsistent terminology

Improve the documentation quality while keeping the same structure.
```

---

# Thực tế workflow sẽ là

```txt id="jlwm83"
Bootstrap Prompt
    ↓
Feature Prompt
    ↓
Review Prompt
    ↓
Finalize
```

---

# Và thật ra…

Sau vài tuần bạn sẽ thấy:

## Bootstrap Prompt

gần như không đổi.

---

# Nên tôi khuyên:

## 1 file cực kỳ quan trọng

```txt id="jlwm84"
AI-BA-BOOTSTRAP.md
```

---

# Sau đó mỗi chat chỉ cần:

## Bước 1

Attach:

* bootstrap
* standards
* glossary

---

## Bước 2

Paste feature prompt.

---

# Ví dụ thực tế siêu ngắn

## Chat mở đầu

```txt id="jlwm85"
Use attached BA AI Framework standards.

Generate business analysis documents following the framework rules.
```

---

## Sau đó task thật

```txt id="jlwm86"
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

# Đây là điều QUAN TRỌNG NHẤT

Đừng:

* prompt dài lan man
* conversational quá
* over explain

AI làm BA tốt nhất khi:

* structure rõ
* explicit output
* explicit constraints

---

# Prompt format tốt nhất

Tôi khuyên chuẩn hóa mọi prompt thành:

```txt id="jlwm87"
Context
Task
Actors
Requirements
Rules
Expected Output
```

---

# Ví dụ ultimate reusable format

```txt id="jlwm88"
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

---

# Cái hay nhất của framework bạn

Sau này BA gần như chỉ cần:

```txt id="jlwm89"
Fill requirement
↓
AI generate structured docs
↓
Review
↓
Done
```

Tức là bạn đang:

> productize BA workflow bằng AI 😄
