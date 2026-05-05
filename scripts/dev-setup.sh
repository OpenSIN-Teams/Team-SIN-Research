#!/bin/bash
set -euo pipefail
TEAM="${1#--team=}"
if [ -z "$TEAM" ]; then
    echo "Usage: ./scripts/dev-setup.sh --team=social"
    exit 1
fi
echo "🚀 Setting up Team-$TEAM development environment..."
npm install
npx nx connect 2>/dev/null || true
echo ""
echo "✅ Team-$TEAM ready!"
echo "   Agents: $(find agents -name 'module.json' | wc -l)"
echo "   Run: nx graph"
