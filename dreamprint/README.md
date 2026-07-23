# Dream Print

**Dream Print** (`dreamprint`) turns vague ideas, past projects, observations, or technical problems into a coherent progressive service architecture — delivered as Mermaid pages in chat.

Version: **0.1.0** (first practical release for feedback)

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
cp -R dreamprint/dreamprint ~/.cursor/skills/dreamprint

# or symlink for live edits
ln -s "$(pwd)/dreamprint" ~/.cursor/skills/dreamprint
```

Restart or reload the agent session so the skill is discovered.

## Use

Ask in natural language, for example:

- "Use Dream Print on this idea: …"
- "Reconstruct this past project as an architecture package"
- "/dreamprint" (if your tool supports explicit skill invocation)

Default page size is **A4 Portrait** unless you specify another size.

## Package layout

```text
dreamprint/
├── SKILL.md
├── LICENSE
├── README.md
├── agents/openai.yaml
└── references/
    ├── interview-and-recovery.md
    ├── output-contract.md
    ├── visual-layout.md
    └── snappstore-example.md
```

## Contribute

Issues and PRs welcome. Keep `SKILL.md` under 500 lines; put detail in `references/`. Design history lives in `../docs/` and is not required for runtime.

## License

MIT — see [LICENSE](LICENSE).
