# 🚨 HUGGING FACE SPACE HARDWARE RULE (PRIORITY -7 — ABSOLUT, KEINE AUSNAHMEN) 🚨

**ABSOLUTES VERBOT: KEINE GPU/ZeroGPU SPACES FÜR A2A AGENT RUNTIMES!**

- HF Free Tier erlaubt **UNBEGRENZT CPU-Basic Spaces** gleichzeitig — komplett kostenlos
- GPU/ZeroGPU Spaces haben Quota-Limits (8x pro Account) und benötigen Payment
- **ALLE** A2A Agent Spaces MÜSSEN auf `cpu-basic` Hardware konfiguriert sein
- **NIEMALS** `gpu`, `zerogpu`, oder paid Hardware für Agent Runtimes verwenden
- **IMMER** Keep-Alive-Ping alle 5 Minuten implementieren (verhindert 48h Sleep)

### KOSTEN

| Hardware | Kosten | Max gleichzeitig |
|----------|--------|-----------------|
| `cpu-basic` | **$0 (FREE)** | **UNBEGRENZT** |
| `zerogpu` | FREE | 8 pro Account |
| `gpu (T4)` | $288/Mo | Unbegrenzt (Payment) |

**FAZIT: CPU-Basic = $0, UNBEGRENZT Spaces, KEIN Payment nötig!**

Siehe auch: [Global Dev Docs HF Space Hardware Standard](https://github.com/OpenSIN-AI/Global-Dev-Docs-Standard/blob/main/standards/hf-space-hardware.md)

---


# 🚨 HUGGING FACE SPACE HARDWARE RULE (PRIORITY -7 — ABSOLUT, KEINE AUSNAHMEN) 🚨

**ABSOLUTES VERBOT: KEINE GPU/ZeroGPU SPACES FÜR A2A AGENT RUNTIMES!**

- HF Free Tier erlaubt **UNBEGRENZT CPU-Basic Spaces** gleichzeitig — komplett kostenlos
- GPU/ZeroGPU Spaces haben Quota-Limits (8x pro Account) und benötigen Payment
- **ALLE** A2A Agent Spaces MÜSSEN auf `cpu-basic` Hardware konfiguriert sein
- **NIEMALS** `gpu`, `zerogpu`, oder paid Hardware für Agent Runtimes verwenden
- **IMMER** Keep-Alive-Ping alle 5 Minuten implementieren (verhindert 48h Sleep)

### KORREKTE SPACE ERSTELLUNG

```bash
curl -X POST https://huggingface.co/api/repos/create \
  -H "Authorization: Bearer $HF_TOKEN" \
  -H "Content-Type: application/json" \
  -d "{\"name\": \"sin-my-agent\", \"type\": \"space\", \"sdk\": \"docker\"}"

curl -X POST https://huggingface.co/api/spaces/{owner}/{space}/hardware \
  -H "Authorization: Bearer $HF_TOKEN" \
  -H "Content-Type: application/json" \
  -d "{\"flavor\": \"cpu-basic\"}"
```

### KOSTEN

| Hardware | Kosten | Max gleichzeitig |
|----------|--------|-----------------|
| `cpu-basic` | **$0 (FREE)** | **UNBEGRENZT** |
| `zerogpu` | FREE | 8 pro Account |
| `gpu (T4)` | $288/Mo | Unbegrenzt (Payment) |

**FAZIT: CPU-Basic = $0, UNBEGRENZT Spaces, KEIN Payment nötig!**

Siehe auch: [Global Dev Docs HF Space Hardware Standard](https://github.com/OpenSIN-AI/Global-Dev-Docs-Standard/blob/main/standards/hf-space-hardware.md)

---

# Agent: Template-A2A-SIN-Team

**Team:** Team Management  
**Protocol:** A2A (Agent-to-Agent)  
**Status:** Active  
**Repository:** https://github.com/OpenSIN-AI/Template-A2A-SIN-Team

## Capabilities

Team management and coordination agent.

## Communication

- **Input:** A2A messages from orchestrator
- **Output:** A2A messages to other agents
- **MCP:** Standard OpenSIN MCP servers

## Security

- All operations logged to OpenSIN-Ledger
- Requires authorization token
- Guardrails enforced on all inputs/outputs

## Setup

```bash
git clone https://github.com/OpenSIN-AI/Template-A2A-SIN-Team.git
cd Template-A2A-SIN-Team
npm install
npm start
```

## License

MIT

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

