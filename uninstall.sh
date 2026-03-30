#!/bin/bash
# IPL Score Predictor - Uninstaller

SKILL_DIR="$HOME/.claude/skills/ipl-score-predictor"

if [ -d "$SKILL_DIR" ]; then
  rm -rf "$SKILL_DIR"
  echo "IPL Score Predictor skill removed."
else
  echo "Skill not found. Nothing to remove."
fi
