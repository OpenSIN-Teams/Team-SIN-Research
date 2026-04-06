# Template-A2A-SIN-Team

> A2A agent for team management and coordination with full browser & computer-use capabilities.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Stars](https://img.shields.io/github/stars/OpenSIN-AI/Template-A2A-SIN-Team)](https://github.com/OpenSIN-AI/Template-A2A-SIN-Team)

## Overview

An A2A (Agent-to-Agent) protocol agent for team management and coordination within the OpenSIN ecosystem. **Now with integrated browser automation (sinInChrome) and macOS GUI automation (sin-computer-use).**

## Quick Start

```bash
git clone https://github.com/OpenSIN-AI/Template-A2A-SIN-Team.git
cd Template-A2A-SIN-Team
npm install
npm start
```

## Features

- A2A protocol communication
- Team management and coordination
- OpenSIN MCP server integration
- Secure input/output guardrails
- **Browser automation via sinInChrome** (13 actions, 7 browsers)
- **macOS GUI automation via sin-computer-use** (screen capture, input, app management)
- **API gateway integration** for free-tier access
- **Health monitoring** with 3-check system

## Capabilities

### Browser Automation (sinInChrome)
- Navigate, click, type, screenshot, read pages
- Console access and network monitoring
- Tab management and tracking
- Form automation and JavaScript execution
- Multi-browser: Chrome, Brave, Arc, Chromium, Edge, Vivaldi, Opera

### Computer Use (sin-computer-use)
- Full macOS screen capture via SCContentFilter
- System-wide mouse and keyboard input
- App management (open, close, hide, enumerate)
- Clipboard operations with round-trip verification
- Mouse animation (ease-out-cubic at 60fps)
- ESC abort mechanism via CGEventTap
- Multi-display support

## Architecture

This agent communicates via the A2A protocol with other OpenSIN agents and coordinates team management tasks. It can optionally integrate with:

- **sinInChrome** for browser automation
- **sin-computer-use** for macOS GUI automation
- **OpenSIN-backend API** for free-tier browser access

## API Reference

### Functions

```typescript
export function handleMessage(input: A2AMessage): Promise<A2AMessage>
```

### Endpoints

| Method | Path | Description |
|---|---|---|
| GET | /api/health | Health check |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT — See [LICENSE](LICENSE).

---

## 📚 Documentation

Full documentation: **[docs.opensin.ai](https://docs.opensin.ai)**

| Section | Link |
|---------|------|
| Getting Started | [Guide](https://docs.opensin.ai/guide/getting-started) |
| API Reference | [API](https://docs.opensin.ai/api/overview) |
| Tutorials | [Tutorials](https://docs.opensin.ai/tutorials/agent-basics) |
| Integrations | [Integrations](https://docs.opensin.ai/integrations/telegram) |
| Architecture | [Architecture](https://docs.opensin.ai/architecture/overview) |
| Community | [Discord](https://discord.gg/opensin) |


## 📚 Documentation

This repository follows the [Global Dev Docs Standard](https://github.com/OpenSIN-AI/Global-Dev-Docs-Standard).

For contribution guidelines, see [CONTRIBUTING.md](CONTRIBUTING.md).
For security policy, see [SECURITY.md](SECURITY.md).
For the complete OpenSIN ecosystem, see [OpenSIN-AI Organization](https://github.com/OpenSIN-AI).

## 🔗 See Also

- [OpenSIN Core](https://github.com/OpenSIN-AI/OpenSIN) — Main platform
- [OpenSIN-Code](https://github.com/OpenSIN-AI/OpenSIN-Code) — CLI
- [OpenSIN-backend](https://github.com/OpenSIN-AI/OpenSIN-backend) — Backend
- [OpenSIN-Infrastructure](https://github.com/OpenSIN-AI/OpenSIN-Infrastructure) — Deploy
- [Global Dev Docs Standard](https://github.com/OpenSIN-AI/Global-Dev-Docs-Standard) — Docs
