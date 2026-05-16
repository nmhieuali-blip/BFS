# Sequence Diagram Example

# Appointment Booking Sequence

---

# Participants

- Patient
- Frontend App
- API Gateway
- Appointment Service
- Doctor Service
- Database
- Notification Service

---

# Main Sequence

```text
Patient
   ↓
Frontend App
   ↓
API Gateway
   ↓
Appointment Service
   ↓
Doctor Service
   ↓
Database
```

---

# Detailed Flow

```text
Patient → Frontend:
Select doctor and slot

Frontend → API Gateway:
POST /appointments

API Gateway → Appointment Service:
Forward request

Appointment Service → Doctor Service:
Validate availability

Doctor Service → Appointment Service:
Available

Appointment Service → Database:
Save appointment

Database → Appointment Service:
Success

Appointment Service → Notification Service:
Send confirmation

Notification Service → Patient:
SMS/Email notification
```

---

# Exception Sequence

## Slot Already Taken

```text
Doctor Service → Appointment Service:
Slot unavailable

Appointment Service → Frontend:
Return validation error
```

---

# Retry Example

```text
Notification Service Failure
    ↓
Retry 3 times
    ↓
Move to Dead Letter Queue
```

---

# Async Event Example

```text
Appointment Service
    ↓
Publish AppointmentCreated Event
    ↓
Notification Service Consumes Event
```