---
name: dreamprint
description: >-
  Turns vague ideas, past projects, observations, or technical problems into a
  coherent progressive service architecture (E0, P1, R1, P2, P3) with Mermaid
  pages. Use when the user wants Dream Print, to reconstruct an idea, recover a
  forgotten project, design a system from a rough brief, produce A4 architecture
  diagrams, or turn a messy description into implementable service boundaries.
license: MIT
metadata:
  version: "0.1.0"
  brand: "Dream Print"
---

# Dream Print

Turn a rough idea, memory, observation, or technical problem into a coherent progressive architecture package. Deliver pages directly in Markdown + Mermaid inside the chat.

## When activated

1. Read [references/interview-and-recovery.md](references/interview-and-recovery.md) if the input is vague or incomplete.
2. Read [references/output-contract.md](references/output-contract.md) before producing pages.
3. Read [references/visual-layout.md](references/visual-layout.md) before drawing diagrams.
4. Optionally read [references/snappstore-example.md](references/snappstore-example.md) as the quality fixture.

## Workflow

1. Accept free-form input. Do not force a template on the user.
2. Extract: goal, evidence, actors, data, decisions, gaps.
3. Ask the fewest high-leverage questions — usually one main question per turn.
4. On ambiguity, offer 2–4 architecturally different ranked options; record the user's ranking as preference.
5. Fix boundaries and responsibilities before technology.
6. Choose an honest, confidence-building title for the project.
7. Ask for page size; if unspecified, use **A4 Portrait** (210×297).
8. Produce and validate **E0** then **P1**.
9. Produce one **P2** per P1 unit, each with a focus boundary.
10. Produce **R1** and **P3**, each on a single page.
11. Validate lineage, no contradictions, decision status, and page frame.
12. Show every page directly as Markdown + Mermaid. Do not require HTML, PNG, PDF, or downloads unless the user asks.

## Page package

| Page | Role |
|---|---|
| E0 | One system in its environment; direct interactions only |
| P1 | High-level architecture backbone (A, B, C, D…) |
| R1 | Recoverable process + justification; no private chain-of-thought |
| P2-A…N | One page per P1 unit; thick focus boundary |
| P3 | One-page connected blueprint + decision register |

## Hard rules

- Service architecture, not product UI feature lists.
- Responsibility before technology; put stack as a secondary line under nodes when needed.
- Children may add detail; they must not contradict parents.
- Continuous lines = primary/confirmed; dashed = optional/control/potential; `?` = open decision.
- Every node needs purpose, input, action, output, boundary/owner, success/failure signal.
- Every edge needs direction and payload.
- Marker = architecture/contracts; pencil = notes, tech, assumptions, secondary flows.
- Never display raw chain-of-thought; R1 stays user-facing and usable.
- Label knowledge as **confirmed**, **design default**, or **open**.

## Delivery shape

For each page, render:

```markdown
## <ID> — <title>
Frame: <size, default A4 Portrait>

```mermaid
...
```

<one short note: stack, states, or decision register>
```

Show pages one group at a time if the conversation is long; always keep lineage intact.

## Versioning

This is **v0.1.0** — first practical release for feedback. Prefer clarity over completeness. After real use, tighten references from user feedback.
