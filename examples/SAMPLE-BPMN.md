# BPMN Example

# Appointment Booking Process

---

# Participants

- Patient
- Appointment Service
- Doctor Service
- Notification Service

---

# BPMN Flow

```text
(Start)
   ↓
Patient Selects Doctor
   ↓
Check Doctor Availability
   ↓
[Gateway]
 ├── Available → Continue
 └── Not Available → Show Error
   ↓
Select Time Slot
   ↓
Validate Booking Rules
   ↓
[Gateway]
 ├── Valid → Create Appointment
 └── Invalid → Reject Booking
   ↓
Send Notification
   ↓
(End)
```

---

# BPMN Elements Used

| Element | Usage |
|---|---|
| Start Event | Start booking process |
| Task | User/system actions |
| Gateway | Validation branching |
| End Event | Booking completed |

---

# Example Gateway Rules

## Exclusive Gateway

Used when:

- slot available/unavailable
- insurance valid/invalid

## Parallel Gateway

Used when:

- send SMS
- send Email
- write audit log

simultaneously

---

# Async Event Example

```text
Appointment Created
    ↓
Publish Event
    ↓
Notification Service Consumes Event
```

---

# Compensation Example

```text
Payment Success
    ↓
Appointment Create Failed
    ↓
Trigger Refund Compensation
```