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
  version: "0.1.2"
  brand: "Dream Print"
---

# Dream Print

Turn a rough idea, memory, observation, or technical problem into a coherent progressive architecture package. Deliver pages directly in Markdown + Mermaid inside the chat.

## Skill scope — where to read

- **Skill root** = the folder that contains this `SKILL.md` (e.g. `~/.cursor/skills/dreamprint/`).
- Follow the **inline instructions below** — they are complete enough to run the gate and produce pages.
- Read `references/*.md` **only if** you need extra detail, and **only** from `{skill-root}/references/`.
- **Never** read `docs/`, `_dreamprint/`, or any path outside the installed skill folder unless the user's **active workspace** is the Dream Print development repo.

## Readiness gate (inline — mandatory)

**Never skip.** Even with long docs or a repo, run the gate first.

Do **not** produce E0, P1, R1, P2, or P3 until intake is done, gaps are closed or accepted as design defaults, and the user confirms the **Readiness summary** (unless they explicitly skip).

### 10-dimension scan

Mark each: ✅ confirmed · ⚠️ inferred · ❌ missing · ⚡ conflict

| # | Dimension | What you need |
|---|---|---|
| 1 | Problem & success | Real problem, stakeholder, success measure |
| 2 | System boundary | Inside system vs environment |
| 3 | Actors & ownership | Who operates, consumes, owns each part |
| 4 | Data origin | Source of truth; who validates |
| 5 | Data grain & contracts | Unit of data, payloads on edges |
| 6 | Core flow | End-to-end happy path |
| 7 | Decisions & outputs | What the system decides or produces |
| 8 | Feedback loops | How outcomes return |
| 9 | Constraints | Scale, latency, compliance, cost |
| 10 | Implementation surface | API/batch/event, deploy, NFRs |

### Interview depth

Count ❌ and ⚡ on dimensions 1–8:

| Depth | When | Action |
|---|---|---|
| **Light** | 0–1 missing, no conflicts | 1–2 confirm questions → Readiness summary |
| **Standard** | 2–4 missing | One high-leverage question per turn |
| **Deep** | 5+ missing or any conflict | 2–4 architectural options + questions |

Question priority: conflict → boundary → data truth → decision vs insight → feedback → ownership.

### Readiness summary (show before pages)

```markdown
## Dream Print — Readiness summary
**Depth:** light | standard | deep
| Dimension | Status | Note |
(confirmed / defaults / open)
**Proposed title:** …
Proceed to E0 → P3?
```

## Workflow

### A. Intake & readiness (mandatory)

1. Accept free-form input. Do not force a template.
2. Run the 10-dimension scan above.
3. Choose depth; ask adaptively — one main question per turn.
4. On ambiguity, offer 2–4 ranked architectural options.
5. Show Readiness summary; wait for confirm (unless user explicitly skips).
6. **No E0 or pages until step 5.**

### B. Architecture output (after readiness)

7. Boundaries and responsibilities before technology.
8. Honest, confidence-building title.
9. Page size: ask once; default **A4 Portrait**.
10. **E0** → **P1** → **P2** (one per P1 unit, focus boundary) → **R1** → **P3**.
11. Validate lineage, no contradictions, page frame.
12. Deliver Markdown + Mermaid in chat.

Optional deep reference (same skill folder only): `references/readiness-gate.md`, `output-contract.md`, `visual-layout.md`.

## Page package

| Page | Role |
|---|---|
| E0 | One system in environment; direct interactions only |
| P1 | High-level backbone (A, B, C, D…) |
| R1 | Process + justification; no raw chain-of-thought |
| P2-A…N | One P1 unit per page; thick focus boundary |
| P3 | One-page blueprint + confirmed / default / open |

## Hard rules

- Interview before output — complete docs do not bypass the gate.
- Service architecture, not UI feature lists.
- Responsibility before technology.
- Children expand parents; never contradict.
- Solid = primary; dashed = optional; `?` = open.
- Every node: purpose, input, action, output, owner, success/failure signal.
- Every edge: direction + payload.
- Label: **confirmed**, **design default**, **open**.

## Delivery shape

```markdown
## <ID> — <title>
Frame: A4 Portrait (or user size)

```mermaid
...
```
```

## Versioning

**v0.1.2** — inline gate (fewer external file reads); clear skill-root scope.
