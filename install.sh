#!/bin/bash
# Installs context-bar.sh as a Claude Code statusLine script.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.claude/scripts
cp "$SCRIPT_DIR/context-bar.sh" ~/.claude/scripts/
chmod +x ~/.claude/scripts/context-bar.sh

echo "Installed ~/.claude/scripts/context-bar.sh"
echo 'Add this to ~/.claude/settings.json to enable it:'
echo '  {'
echo '    "statusLine": {'
echo '      "type": "command",'
echo '      "command": "~/.claude/scripts/context-bar.sh"'
echo '    }'
echo '  }'
