# Dream Print

**Vague idea, project memory, or technical problem → coherent architecture on paper**

Open-source Agent Skill · v0.1.0 · [MIT](dreamprint/LICENSE)

---

## Why?

You often have an idea that *feels right* but has no shape yet. Or a project you built before and want to reconstruct — without rethinking every step from scratch.

Dream Print helps you take what is scattered in your head and write it down **on large blank pages** — step by step, and **ready to implement**.

### The marker-and-pencil method on a blank page

Instead of filling one long document, each page has one job:

```mermaid
flowchart LR
  subgraph page["Blank A4 page"]
    M["🖊 Marker\nboundaries · main flows · nodes"]
    P["✏️ Pencil\nnotes · tech · assumptions"]
  end
  M --> P
```

| Tool | Role | Why it matters |
|---|---|---|
| **Marker** | Architecture, system boundaries, main flows | Frees your mind from details — first answer *what talks to what* |
| **Pencil** | Grid, stack, assumptions, secondary flows | Adds detail without breaking the whole map |

This split means:
- **Boundaries become clear early** — before picking technology
- **Each page does one job** — not everything on one crowded diagram
- **Child pages never break the parent** — they only expand it
- **Output is printable and reviewable** — like a real design notebook

### From the notebook

Real etudes from the author's design notebook — marker for the backbone, pencil for opening one unit.

<table>
  <tr>
    <td align="center" width="50%">
      <img src="assets/etude-1.png" alt="Notebook etude — P1 backbone architecture" width="100%" />
      <br /><sub><strong>P1</strong> — POS/QR → Platform → Forecasting → Procurement</sub>
    </td>
    <td align="center" width="50%">
      <img src="assets/etude-2.png" alt="Notebook etude — P2 forecasting service detail" width="100%" />
      <br /><sub><strong>P2</strong> — Inside the forecasting service (C1–C8, focus boundary)</sub>
    </td>
  </tr>
</table>

---

## Methodology — from dream to blueprint

Input can be anything: a sudden idea, a work observation, a forgotten project, or a technical problem.

```mermaid
flowchart TB
  IN["💭 Free-form input\nidea · memory · observation · problem"]
  IN --> Q["🗣 Short interview\nfewest questions · highest impact"]
  Q --> E0["E0 · System in environment"]
  E0 --> P1["P1 · High-level architecture"]
  P1 --> R1["R1 · Why this structure"]
  P1 --> P2["P2 · Open each unit"]
  P2 --> P3["P3 · Blueprint + decisions"]
  P3 --> OUT["✅ Ready to implement"]

  style IN fill:#f9f9f9
  style OUT fill:#e8f5e9
```

| Page | In one sentence |
|---|---|
| **E0** | One system + its environment — no internal details |
| **P1** | Backbone: A, B, C, D and data flow |
| **R1** | Why these boundaries — no raw chain-of-thought |
| **P2** | Each P1 unit on one page with a focus boundary |
| **P3** | One-page blueprint + confirmed / default / open |

Output: **Mermaid directly in chat** — no file, HTML, or PDF required.

---

## Install

```bash
git clone https://github.com/kvmmn/dreamprint.git
cp -R dreamprint/dreamprint ~/.cursor/skills/dreamprint
```

| Tool | Install path |
|---|---|
| Cursor | `~/.cursor/skills/dreamprint/` |
| Claude Code | `~/.claude/skills/dreamprint/` |
| Codex | `~/.codex/skills/dreamprint/` |
| Windsurf / Antigravity / … | Any compatible Agent Skills discovery path |

After installing, open a **new chat** so the skill is discovered.

---

## Use

Say it in natural language:

```
Use Dream Print on this idea: a service that ...
```

```
Reconstruct this past project with Dream Print: ...
```

```
/dreamprint
```

Default page size: **A4 Portrait**. Say another size if you want one.

---

## Repo layout

```text
dreamprint/          ← Installable skill (SKILL.md + references)
docs/                ← Design docs and decision history
assets/              ← Notebook etudes and visuals
README.md            ← This file
```

---

## Contribute

Issues and PRs welcome. v0.1.0 is for real use and feedback — later versions will be shaped by what users report.

[Design docs](docs/index.md) · [MIT License](dreamprint/LICENSE)
