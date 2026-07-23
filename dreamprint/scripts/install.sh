#!/usr/bin/env bash
# Dream Print — one-step installer (macOS / Linux / WSL / Git Bash)
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/kvmmn/dreamprint/main/dreamprint/scripts/install.sh | bash
#   OR from a clone:  bash dreamprint/scripts/install.sh
#   OR pick tools:    bash dreamprint/scripts/install.sh --cursor --warp --claude

set -euo pipefail

REPO_URL="${DREAMPRINT_REPO_URL:-https://github.com/kvmmn/dreamprint.git}"
TMP_DIR=""
CLEANUP=0

usage() {
  cat <<'EOF'
Dream Print installer

  bash install.sh                 Install for all common tools (copy)
  bash install.sh --cursor        Cursor only
  bash install.sh --warp          Warp only
  bash install.sh --claude        Claude Code only
  bash install.sh --codex         Codex only
  bash install.sh --antigravity   Antigravity only
  bash install.sh --windsurf      Windsurf only
  bash install.sh --help          This help

Works in: Terminal.app, iTerm2, Warp, VS Code/Cursor terminal, bash, zsh, fish (run via bash), WSL, Git Bash.
EOF
}

TARGETS=()
while [[ $# -gt 0 ]]; do
  case "$1" in
    --help|-h) usage; exit 0 ;;
    --cursor) TARGETS+=(cursor) ;;
    --warp) TARGETS+=(warp) ;;
    --claude) TARGETS+=(claude) ;;
    --codex) TARGETS+=(codex) ;;
    --antigravity) TARGETS+=(antigravity) ;;
    --windsurf) TARGETS+=(windsurf) ;;
    --all) TARGETS=(cursor warp claude codex antigravity windsurf) ;;
    *) echo "Unknown option: $1" >&2; usage; exit 1 ;;
  esac
  shift
done

if [[ ${#TARGETS[@]} -eq 0 ]]; then
  TARGETS=(cursor warp claude codex antigravity windsurf)
fi

# Resolve skill source: local package or fresh clone
if [[ -f "$(dirname "$0")/../SKILL.md" ]]; then
  SKILL_SRC="$(cd "$(dirname "$0")/.." && pwd)"
elif [[ -f "./dreamprint/SKILL.md" ]]; then
  SKILL_SRC="$(cd ./dreamprint && pwd)"
elif [[ -f "./SKILL.md" ]]; then
  SKILL_SRC="$(pwd)"
else
  command -v git >/dev/null || { echo "git is required. Install git, then retry." >&2; exit 1; }
  TMP_DIR="$(mktemp -d)"
  CLEANUP=1
  echo "Cloning Dream Print…"
  git clone --depth 1 "$REPO_URL" "$TMP_DIR/dreamprint"
  SKILL_SRC="$TMP_DIR/dreamprint/dreamprint"
fi

if [[ ! -f "$SKILL_SRC/SKILL.md" ]]; then
  echo "Error: SKILL.md not found at $SKILL_SRC" >&2
  exit 1
fi

VERSION="$(grep -E '^\s+version:' "$SKILL_SRC/SKILL.md" | head -1 | tr -d ' "')"
echo "Installing Dream Print ${VERSION:-?} from $SKILL_SRC"
echo

install_copy() {
  local dest="$1"
  mkdir -p "$(dirname "$dest")"
  rm -rf "$dest"
  cp -R "$SKILL_SRC" "$dest"
  echo "  ✓ $dest"
}

for t in "${TARGETS[@]}"; do
  case "$t" in
    cursor)
      install_copy "${HOME}/.cursor/skills/dreamprint"
      ;;
    warp)
      install_copy "${HOME}/.warp/skills/dreamprint"
      install_copy "${HOME}/.agents/skills/dreamprint"
      ;;
    claude)
      install_copy "${HOME}/.claude/skills/dreamprint"
      ;;
    codex)
      install_copy "${HOME}/.codex/skills/dreamprint"
      ;;
    antigravity)
      install_copy "${HOME}/.gemini/config/skills/dreamprint"
      install_copy "${HOME}/.gemini/antigravity/skills/dreamprint"
      ;;
    windsurf)
      install_copy "${HOME}/.codeium/windsurf/skills/dreamprint"
      ;;
  esac
done

if [[ "$CLEANUP" -eq 1 && -n "$TMP_DIR" ]]; then
  rm -rf "$TMP_DIR"
fi

echo
echo "Done. Next steps:"
echo "  1. Open a NEW agent chat in your tool (Cursor / Warp / Claude / …)."
echo "  2. Say: Use Dream Print on this idea: …"
echo "  3. Answer interview questions, then reply: proceed"
echo
echo "Docs: https://github.com/kvmmn/dreamprint/blob/main/dreamprint/INSTALL.md"
