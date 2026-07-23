---
name: dreamprint
description: >-
  Turns vague ideas, past projects, observations, or technical problems into a
  coherent progressive service architecture (E0, P1, R1, P2, P3) with Mermaid
  pages. Always runs an adaptive interview and readiness gate before drawing —
  even when docs look complete. Use for Dream Print, idea reconstruction,
  forgotten projects, service design from briefs, or A4 architecture diagrams.
license: MIT
metadata:
  version: "0.1.1"
  brand: "Dream Print"
---

# Dream Print

Turn a rough idea, memory, observation, or technical problem into a coherent progressive architecture package. Deliver pages directly in Markdown + Mermaid inside the chat.

## When activated — read first

1. **Always** read [references/readiness-gate.md](references/readiness-gate.md) — mandatory before any page.
2. **Always** read [references/interview-and-recovery.md](references/interview-and-recovery.md).
3. Read [references/output-contract.md](references/output-contract.md) before producing pages.
4. Read [references/visual-layout.md](references/visual-layout.md) before drawing diagrams.
5. Optionally read [references/snappstore-example.md](references/snappstore-example.md) as the quality fixture.

## Workflow

### A. Intake & readiness (mandatory — no pages before this)

1. Accept free-form input (text, docs, repo). Do not force a template.
2. Run the **10-dimension intake scan** from readiness-gate.md.
3. Choose interview depth: **light** · **standard** · **deep**.
4. Ask questions adaptively — one high-leverage question per turn until the gate passes.
5. On architectural ambiguity, offer 2–4 ranked options; record user preference.
6. Show the **Readiness summary** block; wait for user confirm (unless they explicitly skip).
7. **Do not produce E0 or any page until step 6 is done.**

### B. Architecture output (after readiness)

8. Fix boundaries and responsibilities before technology.
9. Choose an honest, confidence-building title.
10. Page size: ask once; default **A4 Portrait** (210×297).
11. Produce and validate **E0** then **P1**.
12. Produce one **P2** per P1 unit, each with a focus boundary.
13. Produce **R1** and **P3**, each on a single page.
14. Validate lineage, no contradictions, decision status, and page frame.
15. Show every page as Markdown + Mermaid. No HTML/PNG/PDF unless asked.

If a ⚡ conflict appears mid-output, stop, ask one question, update Readiness summary, continue.

## Page package

| Page | Role |
|---|---|
| E0 | One system in its environment; direct interactions only |
| P1 | High-level architecture backbone (A, B, C, D…) |
| R1 | Recoverable process + justification; no private chain-of-thought |
| P2-A…N | One page per P1 unit; thick focus boundary |
| P3 | One-page connected blueprint + decision register |

## Hard rules

- **Interview before output** — completeness of docs does not bypass the gate.
- Service architecture, not product UI feature lists.
- Responsibility before technology; stack as secondary line under nodes.
- Children may add detail; they must not contradict parents.
- Continuous = primary/confirmed; dashed = optional/control/potential; `?` = open.
- Every node: purpose, input, action, output, boundary/owner, success/failure signal.
- Every edge: direction + payload.
- Marker = architecture/contracts; pencil = notes, tech, assumptions.
- Never display raw chain-of-thought; R1 stays user-facing.
- Label knowledge as **confirmed**, **design default**, or **open**.

## Delivery shape

```markdown
## <ID> — <title>
Frame: <size, default A4 Portrait>

```mermaid
...
```

<one short note: stack, states, or decision register>
```

Show pages one group at a time if the conversation is long; keep lineage intact.

## Versioning

**v0.1.1** — adds mandatory readiness gate and adaptive interview depth. Report gaps in real use for v0.2.
