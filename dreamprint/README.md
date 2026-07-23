# Dream Print

**Dream Print** (`dreamprint`) turns vague ideas, past projects, observations, or technical problems into a coherent progressive service architecture — delivered as Mermaid pages in chat.

**Version: 0.1.3** — strict turn protocol; no Mermaid before explicit proceed.

**Repo:** https://github.com/kvmmn/dreamprint

## Install (beginner)

In **Warp**, Terminal, iTerm, Cursor terminal, WSL, or Git Bash:

```bash
curl -fsSL https://raw.githubusercontent.com/kvmmn/dreamprint/main/dreamprint/scripts/install.sh | bash
```

Or clone first:

```bash
git clone https://github.com/kvmmn/dreamprint.git
cd dreamprint
bash dreamprint/scripts/install.sh
```

Pick one tool:

```bash
bash dreamprint/scripts/install.sh --warp
bash dreamprint/scripts/install.sh --cursor
```

**→ [INSTALL.md](INSTALL.md)** — Warp, Windows, shells, all tool paths, troubleshooting.

Open a **new chat** after install.

## Use

```
Use Dream Print on this idea: …
```

```
/dreamprint
```

Interview first → Readiness summary → reply **proceed** → pages (E0→P3).  
Default page size: **A4 Portrait**.

## Package layout

```text
dreamprint/
├── SKILL.md
├── INSTALL.md
├── scripts/install.sh
├── scripts/sync-install.sh
├── LICENSE · README.md
├── agents/openai.yaml
└── references/ …
```

## Sync local installs

```bash
bash dreamprint/scripts/sync-install.sh
```

## Contribute

Issues and PRs welcome. Bump `metadata.version` in SKILL.md with each release.

## License

MIT — see [LICENSE](LICENSE).
