#!/bin/bash
# IPL Score Predictor - Claude Code Skill Installer

set -e

SKILL_DIR="$HOME/.claude/skills/ipl-score-predictor"

echo "Installing IPL Score Predictor skill for Claude Code..."

mkdir -p "$SKILL_DIR"

# Detect if running from local clone or via curl
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -f "$SCRIPT_DIR/skills/ipl-score-predictor/SKILL.md" ]; then
  # Local install from cloned repo
  cp "$SCRIPT_DIR/skills/ipl-score-predictor/SKILL.md" "$SKILL_DIR/SKILL.md"
else
  # Remote install via curl
  curl -fsSL https://raw.githubusercontent.com/nikkhildev/cc-ipl-score-predictor/main/skills/ipl-score-predictor/SKILL.md \
    -o "$SKILL_DIR/SKILL.md"
fi

echo ""
echo "Installed successfully!"
echo "Location: $SKILL_DIR/SKILL.md"
echo ""
echo "Usage: Open Claude Code and type:"
echo "  /ipl-score-predictor"
echo "  or ask: 'Predict today's IPL match scores'"
