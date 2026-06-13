# Research Team

> **Deep research, summarisation, and distributed-cognition experiments.**

**Price:** €19/mo (addon on top of My.OpenSIN Pro)

**Status:** `beta`
**Tier:** `marketplace`
**Slug (marketplace URL):** `my.opensin.ai/marketplace/research`

## What it does

A research squad for people whose job is thinking. Runs multi-source deep research, produces high-quality summaries, and experiments with distributed-cognition (Mindrift) workflows for teams that want their research done collaboratively across agents.

## Highlights

- Multi-source deep research with citation discipline
- Executive-grade summaries with verification trail
- Distributed cognition across multiple agents (Mindrift)
- Topic tracking with daily/weekly digests
- Exports to Google Docs, Notion, or plain markdown

## Agents

- **A2A-SIN-Research** — primary: Multi-source deep research.
- **A2A-SIN-Summary** — primary: Summarisation with verification.
- **A2A-SIN-Mindrift** — supporting: Distributed-cognition experimentation.

## How this repo works

This is a **marketplace manifest repo**, not a code package. The source of truth for `team.json` lives in [`OpenSIN-AI/OpenSIN-overview/templates/teams/Team-SIN-Research.json`](https://github.com/OpenSIN-AI/OpenSIN-overview/blob/main/templates/teams/Team-SIN-Research.json).

To change this team:
1. PR against [`OpenSIN-AI/OpenSIN-overview`](https://github.com/OpenSIN-AI/OpenSIN-overview) editing `templates/teams/Team-SIN-Research.json`.
2. After merge, a maintainer runs `scripts/push-team-manifests.js` which updates the `team.json` in this repo.

Do **not** edit `team.json` directly in this repo — it will be overwritten on the next sync.

## Tooling

Research agents in this team use the unified `sin-websearch` stack (`OpenSIN-Code/web_search_bundle`). The predecessor websearch skills (`SIN-Code-Websearch-Skill`, `SIN-Websearch-SerpAPI-Bundle`) are archived.

## See also

- [OpenSIN-overview START-HERE.md](https://github.com/OpenSIN-AI/OpenSIN-overview/blob/main/START-HERE.md)
- [PRODUCT-VISION.md](https://github.com/OpenSIN-AI/OpenSIN-overview/blob/main/PRODUCT-VISION.md)
- [schemas/team.schema.json](https://github.com/OpenSIN-AI/OpenSIN-overview/blob/main/schemas/team.schema.json)
