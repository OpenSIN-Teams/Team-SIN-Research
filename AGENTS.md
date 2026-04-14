# Team-SIN-Research — AGENTS.md

## Purpose

Autonomous Team Manager operating within the OpenSIN-AI ecosystem.

## Rules

- NEVER ask user for manual help — find your own way
- ALWAYS use opencode CLI for LLM calls — never direct API calls
- ALWAYS log errors to GitLab LogCenter — never leave logs locally

## LLM Call Architecture

```python
import subprocess, json

def call_llm(prompt, timeout=120):
    result = subprocess.run(
        ["opencode", "run", prompt, "--format", "json"],
        capture_output=True, text=True, timeout=timeout,
    )
    parts = []
    for line in result.stdout.splitlines():
        try:
            ev = json.loads(line)
            if ev.get("type") == "text":
                parts.append(ev.get("part", {}).get("text", ""))
        except json.JSONDecodeError:
            pass
    return "".join(parts).strip()
```

**Model:** `opencode/qwen3.6-plus-free` + `--fallback opencode/minimax-m2.5-free`

## PARALLEL-EXPLORATION MANDATE (PRIORITY -4.5)

Bei grossen Codebases MUESSEN Agenten **5-10 parallele explore + 5-10 librarian-Agenten** starten.

## Subagenten-Modelle

| Subagent | Modell | Fallback-Kette |
|:---|:---|:---|
| **explore** | `nvidia-nim/stepfun-ai/step-3.5-flash` | gemini-3-flash → gpt-5.4 → gemini-3.1-pro → claude-sonnet → qwen |
| **librarian** | `nvidia-nim/stepfun-ai/step-3.5-flash` | gemini-3-flash → gpt-5.4 → gemini-3.1-pro → claude-sonnet → qwen |

## Agent Config System v5

→ [Full Documentation](https://github.com/OpenSIN-AI/OpenSIN-documentation/blob/main/docs/guide/agent-configuration.md)
