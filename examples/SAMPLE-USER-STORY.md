# User Story Example

## Epic

Patient Appointment Management

---

# User Story

## Story ID

HIS-APPOINTMENT-001

## Title

Patient books appointment with doctor

## Description

As a patient,
I want to book an appointment with a doctor,
So that I can receive medical consultation at a preferred time.

---

# Actors

- Patient
- Receptionist
- Doctor
- Notification Service

---

# Preconditions

- Patient account already exists
- Doctor schedule is published
- Appointment slot is available

---

# Main Flow

1. Patient opens appointment booking screen
2. System displays available doctors
3. Patient selects doctor
4. System displays available schedule
5. Patient selects time slot
6. Patient confirms booking
7. System creates appointment
8. System sends confirmation notification

---

# Alternative Flow

## AF-01 — Walk-in Booking

- Receptionist books appointment on behalf of patient

## AF-02 — Insurance Validation Required

- System validates insurance eligibility before confirmation

---

# Exception Flow

## EX-01 — Slot Already Taken

- System displays error message
- Patient selects another slot

## EX-02 — Doctor Schedule Closed

- System prevents booking

---

# Business Rules

| Rule ID | Description |
|---|---|
| BR-001 | Appointment slot cannot exceed max capacity |
| BR-002 | Patient cannot book overlapping appointments |
| BR-003 | Booking cutoff time is 30 minutes before slot |

---

# Acceptance Criteria

## AC-01

Given available slot
When patient confirms booking
Then system creates appointment successfully

## AC-02

Given slot already booked
When patient submits booking
Then system displays unavailable message

## AC-03

Given overlapping appointment
When patient books new slot
Then system rejects booking

---

# Non-Functional Requirements

| Type | Requirement |
|---|---|
| Performance | Response < 3 seconds |
| Security | JWT authentication required |
| Audit | All booking actions logged |

---

# Edge Cases

- Doctor suddenly unavailable
- Double-click booking submission
- Network timeout during confirmation
- Notification service unavailable

---

# Notes

- Future enhancement:
  - recurring appointments
  - telemedicine support