# Team-Monorepo — AGENTS.md

## Structure
- `agents/` — All agents (1 dir per agent)
- `tools/generators/` — Nx generators
- `scripts/` — dev-setup.sh, migrate-agent.sh

## Development
```bash
./scripts/dev-setup.sh --team=social
nx graph
nx test agents/name
nx generate @sin/monorepo:agent agents/name --team social
```

## CI
- Parent CI detects changed agents
- Child CI per team runs affected tests
- Merge Queue ensures main is always green
