# Install Dream Print

Install the inner **`dreamprint/`** folder (the one with `SKILL.md`) — not the GitHub repo root.

After install: open a **new agent chat** so the skill is discovered.

---

## Pick your level

| Level | Who | What to do |
|---|---|---|
| **Beginner** | First time, just want it to work | [One-line install](#beginner--one-line-install) |
| **Intermediate** | Choose which tools | [Choose your tools](#intermediate--choose-your-tools) |
| **Advanced** | Paths, Warp scopes, terminals, sync | Rest of this guide |

---

## Beginner — one-line install

Needs: **git** + a terminal (Terminal.app, Warp, iTerm, Cursor terminal, WSL, …).

### macOS / Linux / WSL / Git Bash

Paste **one** of these:

```bash
curl -fsSL https://raw.githubusercontent.com/kvmmn/dreamprint/main/dreamprint/scripts/install.sh | bash
```

If `curl` is blocked:

```bash
git clone https://github.com/kvmmn/dreamprint.git
cd dreamprint
bash dreamprint/scripts/install.sh
```

This **copies** Dream Print into the common global skill folders (Cursor, Warp, Claude, Codex, Antigravity, Windsurf).

### Windows (PowerShell)

```powershell
git clone https://github.com/kvmmn/dreamprint.git
cd dreamprint
bash dreamprint/scripts/install.sh
```

If `bash` is missing, install [Git for Windows](https://git-scm.com/download/win) (includes Git Bash), then run the same commands inside **Git Bash**.

### Check it worked

```bash
test -f ~/.cursor/skills/dreamprint/SKILL.md && echo "Cursor: OK"
test -f ~/.warp/skills/dreamprint/SKILL.md && echo "Warp: OK"
```

Then open a **new** agent chat and say:

```text
Use Dream Print on this idea: …
```

---

## Intermediate — choose your tools

From a clone:

```bash
git clone https://github.com/kvmmn/dreamprint.git && cd dreamprint

bash dreamprint/scripts/install.sh --cursor
bash dreamprint/scripts/install.sh --warp
bash dreamprint/scripts/install.sh --claude
bash dreamprint/scripts/install.sh --codex
bash dreamprint/scripts/install.sh --antigravity
bash dreamprint/scripts/install.sh --windsurf
```

Or several at once:

```bash
bash dreamprint/scripts/install.sh --cursor --warp --claude
```

---

## Which terminal am I in?

Same install commands work in all of these — open the app, paste, press Enter.

| App | How to open a shell |
|---|---|
| **Warp** | Open Warp → new tab (`⌘T` / `Ctrl+T`) → paste install |
| **Terminal.app** (macOS) | Spotlight → Terminal |
| **iTerm2** | Open iTerm → paste |
| **Cursor / VS Code** | `` Ctrl+` `` or **Terminal → New Terminal** |
| **Windows Terminal** | Open → PowerShell or Git Bash profile |
| **WSL** | `wsl` then run the bash install |
| **Linux console** | Any terminal emulator |

### Shell notes

| Shell | Tip |
|---|---|
| **zsh** (macOS default) | Commands below work as-is |
| **bash** | Works as-is |
| **fish** | Run via `bash dreamprint/scripts/install.sh` (script is bash) |
| **PowerShell** | Prefer Git Bash for the installer, or copy paths manually below |

`~` means your home folder (`$HOME` / `%USERPROFILE%`).

---

## Warp (app + Agent Skills)

[Warp](https://www.warp.dev/) discovers Agent Skills from several folders. Dream Print installs to both Warp-native and cross-tool paths:

| Scope | Path |
|---|---|
| **Global (Warp)** | `~/.warp/skills/dreamprint/` |
| **Global (cross-tool)** | `~/.agents/skills/dreamprint/` |
| **Project** | `.warp/skills/dreamprint/` or `.agents/skills/dreamprint/` |

### Easiest (recommended)

In **Warp**, paste:

```bash
curl -fsSL https://raw.githubusercontent.com/kvmmn/dreamprint/main/dreamprint/scripts/install.sh | bash -s -- --warp
```

Or from a clone:

```bash
bash dreamprint/scripts/install.sh --warp
```

### Manual copy

```bash
git clone https://github.com/kvmmn/dreamprint.git
mkdir -p ~/.warp/skills ~/.agents/skills
cp -R dreamprint/dreamprint ~/.warp/skills/dreamprint
cp -R dreamprint/dreamprint ~/.agents/skills/dreamprint
```

### Project-only (share with teammates)

```bash
cd your-project
mkdir -p .agents/skills .warp/skills
cp -R /path/to/dreamprint/dreamprint .agents/skills/dreamprint
# optional Warp-specific mirror:
cp -R /path/to/dreamprint/dreamprint .warp/skills/dreamprint
```

**Use in Warp:** open Agent, then:

```text
/dreamprint
```

or:

```text
Use Dream Print — interview first, then pages.
```

Docs: [Warp Skills](https://docs.warp.dev/agent-platform/capabilities/skills/)

---

## Symlink vs copy

| Method | Best for | Side effect |
|---|---|---|
| **`cp -R` / installer** | Daily use in other projects | Agent stays inside `~/.…/skills/dreamprint/` |
| **`ln -s`** | Developing the skill source | May resolve to the real repo path and trigger permission prompts |

**Default for everyone: copy.** Use symlink only while editing Dream Print itself.

---

## Tool paths (reference)

| Tool | Global | Project |
|---|---|---|
| **Cursor** | `~/.cursor/skills/dreamprint/` | `.cursor/skills/dreamprint/` |
| **Warp** | `~/.warp/skills/dreamprint/` + `~/.agents/skills/dreamprint/` | `.warp/skills/` or `.agents/skills/` |
| **Claude Code** | `~/.claude/skills/dreamprint/` | `.claude/skills/dreamprint/` |
| **Codex** | `~/.codex/skills/dreamprint/` | `.codex/skills/dreamprint/` |
| **Antigravity** | `~/.gemini/config/skills/dreamprint/` | `.agents/skills/dreamprint/` |
| **Windsurf** | `~/.codeium/windsurf/skills/dreamprint/` | `.windsurf/skills/dreamprint/` |
| **Copilot / VS Code** | — | `.github/skills/dreamprint/` |

### Cursor (manual)

```bash
mkdir -p ~/.cursor/skills
cp -R "$SKILL_SRC" ~/.cursor/skills/dreamprint
```

`$SKILL_SRC` = path to the folder that contains `SKILL.md`.

### Claude Code

```bash
mkdir -p ~/.claude/skills
cp -R "$SKILL_SRC" ~/.claude/skills/dreamprint
```

### Codex

```bash
mkdir -p ~/.codex/skills
cp -R "$SKILL_SRC" ~/.codex/skills/dreamprint
```

### Antigravity

```bash
mkdir -p ~/.gemini/config/skills ~/.gemini/antigravity/skills
cp -R "$SKILL_SRC" ~/.gemini/config/skills/dreamprint
cp -R "$SKILL_SRC" ~/.gemini/antigravity/skills/dreamprint
# project:
mkdir -p .agents/skills && cp -R "$SKILL_SRC" .agents/skills/dreamprint
```

Legacy workspace path also works: `.agent/skills/dreamprint/`.  
Docs: [Antigravity Skills](https://antigravity.google/docs/skills)

### Windsurf

```bash
mkdir -p ~/.codeium/windsurf/skills
cp -R "$SKILL_SRC" ~/.codeium/windsurf/skills/dreamprint
```

### Copilot / VS Code

```bash
mkdir -p .github/skills
cp -R "$SKILL_SRC" .github/skills/dreamprint
```

---

## Update

```bash
# If you used the installer or sync script (copy installs):
cd /path/to/dreamprint   # your clone
git pull
bash dreamprint/scripts/sync-install.sh

# Or re-run the one-liner:
curl -fsSL https://raw.githubusercontent.com/kvmmn/dreamprint/main/dreamprint/scripts/install.sh | bash
```

`sync-install.sh` refreshes global **copies** for Cursor, Claude, Codex, Antigravity, Windsurf, Warp, and `~/.agents/skills`.

---

## Verify

```bash
test -f ~/.cursor/skills/dreamprint/SKILL.md && echo "Cursor OK"
test -f ~/.warp/skills/dreamprint/SKILL.md && echo "Warp OK"
test -f ~/.agents/skills/dreamprint/SKILL.md && echo "Agents OK"
test -f ~/.claude/skills/dreamprint/SKILL.md && echo "Claude OK"
test -f ~/.gemini/config/skills/dreamprint/SKILL.md && echo "Antigravity OK"
```

Each install must contain:

```text
dreamprint/SKILL.md
dreamprint/references/readiness-gate.md
```

---

## Troubleshooting

| Problem | Fix |
|---|---|
| Skill not found | New chat / reload workspace; confirm path with `test -f …/SKILL.md` |
| Permission prompt for `_dreamprint` | You used a symlink — reinstall with `cp` / `install.sh` |
| `curl` fails | Use `git clone` then `bash dreamprint/scripts/install.sh` |
| `bash: command not found` (Windows) | Install Git for Windows → open **Git Bash** |
| fish shell errors | Run `bash dreamprint/scripts/install.sh` explicitly |
| Agent skips interview | Need **v0.1.3+**; reinstall and open a new chat |
