#!/usr/bin/env bash
# Sync dreamprint skill copies to global install paths.
# Run from repo root after git pull:  bash dreamprint/scripts/sync-install.sh

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
SKILL_SRC="$REPO_ROOT/dreamprint"

if [[ ! -f "$SKILL_SRC/SKILL.md" ]]; then
  echo "Error: SKILL.md not found at $SKILL_SRC" >&2
  exit 1
fi

VERSION="$(grep -E '^\s+version:' "$SKILL_SRC/SKILL.md" | head -1 | tr -d ' "')"
echo "Syncing Dream Print $VERSION from $SKILL_SRC"

install_copy() {
  local dest="$1"
  mkdir -p "$(dirname "$dest")"
  rm -rf "$dest"
  cp -R "$SKILL_SRC" "$dest"
  echo "  copy  $dest"
}

# Global installs — always copy (avoids reading dev repo path in other projects)
install_copy "$HOME/.cursor/skills/dreamprint"
install_copy "$HOME/.claude/skills/dreamprint"
install_copy "$HOME/.codex/skills/dreamprint"
install_copy "$HOME/.gemini/config/skills/dreamprint"
install_copy "$HOME/.gemini/antigravity/skills/dreamprint"
install_copy "$HOME/.codeium/windsurf/skills/dreamprint"

echo "Done. Open a new agent chat to reload the skill."
