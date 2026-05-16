# SEQUENCE-EXAMPLES.md

```markdown
# Sequence Diagram Examples

---

# Example 1 — Login API Flow

## Components

- Frontend
- API Gateway
- Auth Service
- Redis
- Database

---

## Sequence Diagram

```mermaid
sequenceDiagram

actor User

participant FE as Frontend
participant GW as API Gateway
participant AUTH as Auth Service
participant REDIS as Redis
participant DB as Database

User->>FE: Input username/password

FE->>GW: POST /login

GW->>AUTH: Forward request

AUTH->>DB: Verify credential

DB-->>AUTH: User info

AUTH->>REDIS: Store session/token

REDIS-->>AUTH: Success

AUTH-->>GW: JWT Token

GW-->>FE: Response Token

FE-->>User: Login Success
````

---

# Example 2 — Async Notification Flow

```mermaid
sequenceDiagram

participant OrderService
participant Kafka
participant NotificationService
participant SMSService

OrderService->>Kafka: Publish OrderCreated Event

Kafka-->>NotificationService: Consume Event

NotificationService->>SMSService: Send SMS

SMSService-->>NotificationService: SMS Result

NotificationService->>Kafka: Publish NotificationResult