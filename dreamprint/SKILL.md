---
name: dreamprint
description: >-
  Turns vague ideas, past projects, observations, or technical problems into a
  coherent progressive service architecture (E0, P1, R1, P2, P3) with Mermaid
  pages. MUST interview first: never emit Mermaid pages until the user answers
  at least one architectural question and explicitly confirms the Readiness
  summary — even when docs look complete. Use for Dream Print, idea
  reconstruction, forgotten projects, service design, or A4 architecture diagrams.
license: MIT
metadata:
  version: "0.1.3"
  brand: "Dream Print"
---

# Dream Print

Turn a rough idea, memory, observation, or technical problem into a coherent progressive architecture package. Deliver pages as Markdown + Mermaid **only after** a real interview and an explicit user proceed.

## Skill scope — where to read

- **Skill root** = folder containing this `SKILL.md`.
- Follow the **inline rules below** — they are mandatory and complete for the gate.
- Read `references/*.md` only for extra detail, and only from `{skill-root}/references/`.
- Never read `_dreamprint/`, `docs/`, or paths outside the skill install unless the active workspace *is* the Dream Print repo.

---

## Hard stop — no pages until proceed

**Forbidden in any response before the user explicitly confirms the Readiness summary:**

- Any Mermaid block
- Any `## E0` / `## P1` / `## R1` / `## P2` / `## P3` page
- Phrases like: “enough is confirmed”, “delivering the full package”, “locking the architecture”, “proceeding to pages”

**Explicit proceed** = the user’s *next* message after Readiness summary contains yes / proceed / go / OK / تأیید / بله / “draw it” / “skip to pages”.  
Silence, partial answers to other questions, or “looks good so far” on the *scan* do **not** count.

If the user says skip interview: still show Readiness summary with all defaults listed → wait one turn → then pages.

---

## Turn protocol (strict — one phase per turn)

| Turn | You may show | You must NOT |
|---|---|---|
| **1 — Scan only** | 10-dimension table + chosen depth + **one** interview question | Mermaid, Readiness “Proceed?”, full page package |
| **2…N — Interview** | Exactly **one** high-leverage question (options if architectural) | Mermaid, bundling “Proceed?” |
| **N+1 — Readiness** | Readiness summary + “Proceed to E0→P3?” | Mermaid, unanswered new interview topics |
| **After user proceed** | E0 → P1 → P2… → R1 → P3 | Skipping lineage validation |

**Never** put scan + readiness + proceed + pages in one message.  
**Never** put an unanswered interview question and “Proceed?” in the same message.

---

## Phase 0 — Intake scan (turn 1)

Mark each dimension: ✅ confirmed · ⚠️ inferred · ❌ missing · ⚡ conflict

| # | Dimension | Need |
|---|---|---|
| 1 | Problem & success | Real problem, stakeholder, success measure |
| 2 | System boundary | Inside vs environment |
| 3 | Actors & ownership | Who operates / consumes / owns |
| 4 | Data origin | Source of truth; who validates |
| 5 | Data grain & contracts | Unit of data; edge payloads |
| 6 | Core flow | End-to-end happy path |
| 7 | Decisions & outputs | What is decided / produced |
| 8 | Feedback loops | How outcomes return |
| 9 | Constraints | Scale, latency, cost, compliance |
| 10 | Implementation surface | API/batch/event, deploy, NFRs |

**Honesty rules for marks:**

- Doc text ≠ ✅. Only **user-stated in this chat** or **user-confirmed** is ✅.
- Anything you deduced from docs/repo/code is **⚠️ inferred**, not ✅.
- If two sources disagree → ⚡, even if both look detailed.

End turn 1 with **one** question (see depth below). Stop. Wait.

---

## Interview depth (count on dimensions 1–8)

| Count | Depth | Minimum before Readiness |
|---|---|---|
| Any ⚡ **or** ≥3 of (❌+⚠️) **or** creative/vague/living-system brief | **Deep** | ≥3 answered turns; offer 2–4 architectural options at least once |
| 2 of (❌+⚠️), no ⚡ | **Standard** | ≥2 answered turns |
| ≤1 of (❌+⚠️), no ⚡, and user already answered ≥1 Q in chat | **Light** | ≥1 answered turn (confirm the biggest ⚠️ or scope cut) |

**⚠️ counts toward depth** — do not treat “all ✅ from a long doc” as Light. If you marked mostly ✅ from docs alone, **reclassify inferred items to ⚠️** and raise depth.

**Creative / presence / art / “no goal” systems** (e.g. living digital presence): default to **Deep** or at least **Standard**. Never Light from artifacts alone.

---

## Question selection

One main question per turn. Prefer options (2–4 ranks) over yes/no when architecture branches.

Priority: ⚡ conflict → boundary → data truth → decision vs insight → feedback → ownership → confirm largest ⚠️.

Do not re-ask ✅. Do not ask trivia while critical ❌/⚠️ remain.

### Stop interviewing when

- User answered the required minimum turns for the depth, **and**
- No unresolved ⚡, **and**
- Every planned P1 unit has purpose / in / out / owner from ✅ + user-accepted defaults, **and**
- Remaining gaps are listed as open with proposed defaults

Then — **next turn only** — Readiness summary. Wait for proceed.

---

## Readiness summary (template)

```markdown
## Dream Print — Readiness summary
**Depth used:** light | standard | deep
**Questions answered this run:** N

| Dimension | Status | Note |
|---|---|---|
| … all 10 … | ✅/⚠️/❌/⚡ | … |

**Confirmed (user-backed):** …
**Design defaults (correct me):** …
**Open (→ P3):** …
**Proposed title:** …

Reply **proceed** (or correct defaults) to generate E0 → P3.
```

---

## After proceed — output

1. Boundaries before technology; honest title.
2. Page size: default **A4 Portrait** unless user set one.
3. **E0** → **P1** → **P2** (one per P1 unit, focus boundary) → **R1** → **P3**.
4. Lineage table; no parent/child contradiction.
5. Markdown + Mermaid in chat only.

Optional refs (skill folder only): `references/readiness-gate.md`, `output-contract.md`, `visual-layout.md`.

## Page package

| Page | Role |
|---|---|
| E0 | One system + environment |
| P1 | Backbone A, B, C, D… |
| R1 | Justification; no raw CoT |
| P2-A…N | One P1 unit; thick focus boundary |
| P3 | One-page blueprint + confirmed / default / open |

## Hard rules

- Interview before Mermaid — long docs do not bypass.
- Service / system architecture, not UI feature lists.
- Responsibility before technology.
- Children expand parents; never contradict.
- Solid = primary; dashed = optional; `?` = open.
- Every node: purpose, input, action, output, owner, success/failure.
- Every edge: direction + payload.
- Label: **confirmed**, **design default**, **open**.

## Versioning

**v0.1.3** — strict turn protocol; ⚠️ counts for depth; no Mermaid before explicit proceed.
