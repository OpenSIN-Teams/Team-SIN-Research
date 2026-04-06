# TEAM COMMUNICATION MANDATE (PRIORITY -1)

**THE HIERARCHY RULE:**
To prevent N^2 communication chaos across 100+ agents, the OpenSIN A2A network operates on a strict **Hub & Spoke** hierarchy.

1. **The Team Manager (This Template):**
   - The Team Manager is the **ONLY** entity allowed to receive inbound requests from global routers (like Hermes) or other Team Managers.
   - The Team Manager possesses the `TELEGRAM_BOT_TOKEN` to communicate with the human operator.
   - Its primary job is NOT to execute tasks directly, but to **Accept, Plan, Delegate, and Aggregate**.

2. **The Worker Agents:**
   - Worker agents (built from `Template-A2A-SIN-Agent`) are isolated.
   - They **NEVER** communicate with workers from other teams.
   - They **ONLY** accept tasks from their designated Team Manager.

**ARCHITECTURAL FLOW:**
`Hermes (Global Router) -> A2A-SIN-Team-Manager -> [Delegation] -> Worker-A & Worker-B -> [Aggregation] -> A2A-SIN-Team-Manager -> Hermes`

Violation of this mandate results in infinite loops and is strictly forbidden.
