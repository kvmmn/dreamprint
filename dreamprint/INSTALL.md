# Install Dream Print

Install the **`dreamprint/`** folder (the one that contains `SKILL.md`) — not the repo root.

```bash
git clone https://github.com/kvmmn/dreamprint.git
cd dreamprint
SKILL_SRC="$(pwd)/dreamprint"   # folder with SKILL.md inside
```

After install: **open a new chat / reload the agent** so skills are discovered.

---

## Cursor

| Scope | Path |
|---|---|
| Global (all projects) | `~/.cursor/skills/dreamprint/` |
| Project (this repo only) | `.cursor/skills/dreamprint/` |

Cursor also loads skills from `.claude/skills/` and `.codex/skills/` in the same project.

```bash
# Global — symlink (stays in sync when you edit the clone)
ln -sfn "$SKILL_SRC" ~/.cursor/skills/dreamprint

# Or copy once
cp -R "$SKILL_SRC" ~/.cursor/skills/dreamprint
```

**Use:** `"Use Dream Print on …"` or invoke `/dreamprint` if your build supports skill commands.

Docs: [Cursor Agent Skills](https://cursor.com/docs/skills)

---

## Claude Code

| Scope | Path |
|---|---|
| Global | `~/.claude/skills/dreamprint/` |
| Project | `.claude/skills/dreamprint/` |

```bash
ln -sfn "$SKILL_SRC" ~/.claude/skills/dreamprint
# project-only:
mkdir -p .claude/skills && ln -sfn "$SKILL_SRC" .claude/skills/dreamprint
```

**Use:** Mention *Dream Print* in your prompt; Claude loads skills by description match.

---

## OpenAI Codex

| Scope | Path |
|---|---|
| Global | `~/.codex/skills/dreamprint/` |
| Project | `.codex/skills/dreamprint/` |

```bash
ln -sfn "$SKILL_SRC" ~/.codex/skills/dreamprint
```

**Use:** `"Use Dream Print — readiness gate first, then pages."`

Includes `agents/openai.yaml` for Codex skill UI metadata.

---

## Google Antigravity

| Scope | Path | Notes |
|---|---|---|
| **Workspace** (recommended) | `.agents/skills/dreamprint/` | Default in current Antigravity docs |
| Workspace (legacy) | `.agent/skills/dreamprint/` | Still supported |
| **Global** (all workspaces) | `~/.gemini/config/skills/dreamprint/` | Cross-variant path per Google docs |

Some Antigravity builds also scan `~/.gemini/antigravity/skills/` — if global install is not picked up, symlink there as well:

```bash
# Project — commit this symlink so teammates get the skill
mkdir -p .agents/skills
ln -sfn "$SKILL_SRC" .agents/skills/dreamprint

# Global — primary
mkdir -p ~/.gemini/config/skills
ln -sfn "$SKILL_SRC" ~/.gemini/config/skills/dreamprint

# Global — fallback for some IDE builds
mkdir -p ~/.gemini/antigravity/skills
ln -sfn "$SKILL_SRC" ~/.gemini/antigravity/skills/dreamprint
```

**Use:** Start a new agent conversation; mention *Dream Print* or ask for the readiness gate. Antigravity discovers skills from name + description in `SKILL.md` frontmatter.

Docs: [Antigravity Skills](https://antigravity.google/docs/skills)

---

## Windsurf (Cascade)

| Scope | Path |
|---|---|
| Global | `~/.codeium/windsurf/skills/dreamprint/` |
| Project | `.windsurf/skills/dreamprint/` |
| Cross-tool (Devin Desktop) | `.agents/skills/dreamprint/` |

```bash
# Global
mkdir -p ~/.codeium/windsurf/skills
ln -sfn "$SKILL_SRC" ~/.codeium/windsurf/skills/dreamprint

# Project
mkdir -p .windsurf/skills
ln -sfn "$SKILL_SRC" .windsurf/skills/dreamprint
```

Reload the Windsurf workspace after install. **Use:** `@dreamprint` or ask Cascade to *use Dream Print*.

Docs: [Cascade Skills](https://docs.devin.ai/windsurf/cascade/skills)

---

## VS Code / GitHub Copilot

Copilot skill support varies by version. Common project paths:

| Path |
|---|
| `.github/skills/dreamprint/` |
| `.copilot/skills/dreamprint/` |

```bash
mkdir -p .github/skills
ln -sfn "$SKILL_SRC" .github/skills/dreamprint
```

If your Copilot build uses Agent Skills, the same `SKILL.md` format applies. Check your Copilot docs for the active discovery path.

---

## Install everywhere (symlink script)

From the repo root after clone:

```bash
SKILL_SRC="$(pwd)/dreamprint"
mkdir -p ~/.cursor/skills ~/.claude/skills ~/.codex/skills \
         ~/.gemini/config/skills ~/.gemini/antigravity/skills \
         ~/.codeium/windsurf/skills .agents/skills .cursor/skills .claude/skills .codex/skills

ln -sfn "$SKILL_SRC" ~/.cursor/skills/dreamprint
ln -sfn "$SKILL_SRC" ~/.claude/skills/dreamprint
ln -sfn "$SKILL_SRC" ~/.codex/skills/dreamprint
ln -sfn "$SKILL_SRC" ~/.gemini/config/skills/dreamprint
ln -sfn "$SKILL_SRC" ~/.gemini/antigravity/skills/dreamprint
ln -sfn "$SKILL_SRC" ~/.codeium/windsurf/skills/dreamprint
ln -sfn "$SKILL_SRC" .agents/skills/dreamprint
ln -sfn "$SKILL_SRC" .cursor/skills/dreamprint
ln -sfn "$SKILL_SRC" .claude/skills/dreamprint
ln -sfn "$SKILL_SRC" .codex/skills/dreamprint

echo "Done. Open a new agent chat in each tool."
```

---

## Verify

Each install path must contain:

```text
dreamprint/SKILL.md
dreamprint/references/readiness-gate.md
```

Quick check:

```bash
test -f ~/.cursor/skills/dreamprint/SKILL.md && echo "Cursor OK"
test -f ~/.gemini/config/skills/dreamprint/SKILL.md && echo "Antigravity OK"
```

---

## Update

If you used symlinks, `git pull` in the clone updates every install. If you copied folders, re-copy or switch to symlinks.
