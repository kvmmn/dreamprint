# Dream Print

**Dream Print** (`dreamprint`) turns vague ideas, past projects, observations, or technical problems into a coherent progressive service architecture — delivered as Mermaid pages in chat.

**Version: 0.1.2** — inline readiness gate; copy install avoids dev-folder reads.

**Repo:** https://github.com/kvmmn/dreamprint

## Install

The installable package is **this folder** (`SKILL.md` lives here).

```bash
git clone https://github.com/kvmmn/dreamprint.git
cd dreamprint
export SKILL_SRC="$(pwd)/dreamprint"
```

**→ [INSTALL.md](INSTALL.md)** — full per-tool guide (Cursor, Claude, Codex, **Antigravity**, Windsurf, Copilot).

| Tool | Global | Project |
|---|---|---|
| Cursor | `~/.cursor/skills/dreamprint/` | `.cursor/skills/dreamprint/` |
| Claude Code | `~/.claude/skills/dreamprint/` | `.claude/skills/dreamprint/` |
| Codex | `~/.codex/skills/dreamprint/` | `.codex/skills/dreamprint/` |
| **Antigravity** | `~/.gemini/config/skills/dreamprint/` | `.agents/skills/dreamprint/` |
| Windsurf | `~/.codeium/windsurf/skills/dreamprint/` | `.windsurf/skills/dreamprint/` |

```bash
# Quick: Cursor + Antigravity global
ln -sfn "$SKILL_SRC" ~/.cursor/skills/dreamprint
mkdir -p ~/.gemini/config/skills && ln -sfn "$SKILL_SRC" ~/.gemini/config/skills/dreamprint
```

Open a **new chat** after install.

## Use

```
Use Dream Print on this idea: …
```

```
Reconstruct this past project with Dream Print — interview first, then pages.
```

The skill **always** runs a readiness gate first (even with full docs). It asks adaptive questions, shows a Readiness summary, and only then produces E0 → P3.

Default page size: **A4 Portrait**.

## Package layout

```text
dreamprint/
├── SKILL.md
├── INSTALL.md
├── LICENSE · README.md
├── agents/openai.yaml
└── references/
    ├── readiness-gate.md
    ├── interview-and-recovery.md
    ├── output-contract.md
    ├── visual-layout.md
    └── snappstore-example.md
```

## Sync

Single source of truth: this folder. Local installs should symlink here. See [../docs/09-sync-policy.md](../docs/09-sync-policy.md).

## Contribute

Issues and PRs welcome. Bump `metadata.version` in SKILL.md with each release.

## License

MIT — see [LICENSE](LICENSE).
