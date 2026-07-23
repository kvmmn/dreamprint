# Dream Print

**Dream Print** (`dreamprint`) turns vague ideas, past projects, observations, or technical problems into a coherent progressive service architecture — delivered as Mermaid pages in chat.

**Version: 0.1.1** — adaptive interview + mandatory readiness gate before any page.

**Repo:** https://github.com/kvmmn/dreamprint

## Install

Copy or symlink the `dreamprint/` folder into your agent's skills directory:

| Tool | Path |
|---|---|
| Cursor | `~/.cursor/skills/dreamprint/` or `.cursor/skills/dreamprint/` |
| Claude Code | `~/.claude/skills/dreamprint/` or `.claude/skills/dreamprint/` |
| Codex | `~/.codex/skills/dreamprint/` or `.codex/skills/dreamprint/` |
| Other Agent Skills tools | Any discovery path that loads `SKILL.md` |

```bash
git clone https://github.com/kvmmn/dreamprint.git
ln -s "$(pwd)/dreamprint/dreamprint" ~/.cursor/skills/dreamprint
```

Restart or open a **new chat** so the skill is discovered.

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
