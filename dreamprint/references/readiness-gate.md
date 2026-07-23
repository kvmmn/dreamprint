# Readiness gate — interview before output

**Never skip this.** Even when the user provides long docs, a repo, or a detailed brief, run the gate first. Complete-looking input often hides boundary, ownership, or feedback gaps that break architecture later.

## Rule

Do **not** produce E0, P1, R1, P2, or P3 until:

1. Intake scan is done,
2. Required gaps are closed **or** explicitly recorded as design defaults the user accepted,
3. You show a **Readiness summary** and the user confirms (or explicitly skips — see below).

If the user says *"just draw it"* / *"skip interview"* / *"I accept your assumptions"* — still show the Readiness summary once, list assumptions, then proceed.

---

## Phase 0 — Intake scan (always, silently first)

Split everything provided (message, files, repo skim) into:

| Bucket | Content |
|---|---|
| **Confirmed** | Stated by user or authoritative doc |
| **Inferred** | Reasonable but not verified — becomes design default |
| **Missing** | Needed for correct service/product/implementation design |
| **Conflicting** | Two sources disagree — must resolve before P1 |

Scan these **10 dimensions**. Mark each: ✅ confirmed · ⚠️ inferred · ❌ missing · ⚡ conflict

| # | Dimension | What you need |
|---|---|---|
| 1 | **Problem & success** | Real problem, stakeholder, success measure |
| 2 | **System boundary** | What is inside the system vs environment |
| 3 | **Actors & ownership** | Who operates, consumes, owns each part |
| 4 | **Data origin** | Where truth comes from; who validates |
| 5 | **Data grain & contracts** | Unit of data, payloads on edges |
| 6 | **Core flow** | End-to-end happy path, no broken hops |
| 7 | **Decisions & outputs** | What the system decides or produces |
| 8 | **Feedback loops** | How outcomes return and close the loop |
| 9 | **Constraints** | Scale, latency, compliance, cost, timeline |
| 10 | **Implementation surface** | API/batch/event, deploy shape, critical NFRs |

---

## Phase 1 — Choose interview depth

Count ❌ and ⚡ on **P1-critical** dimensions (1–8):

| Depth | When | Action |
|---|---|---|
| **Light** | 0–1 missing, no conflicts; docs are strong | 1–2 targeted confirm questions, then Readiness summary |
| **Standard** | 2–4 missing or several inferred on critical dims | One high-leverage question per turn until gate passes |
| **Deep** | 5+ missing, vague input, or any ⚡ conflict | Options reconstruction (2–4 architectures) + focused questions |

**P1-critical** = dimensions 1–8. Dimension 9–10 can often stay as design defaults if labeled.

Do not ask about things already ✅. Do not ask low-impact trivia when ❌ remain on critical dims.

---

## Phase 2 — Question selection

Pick the **single highest-leverage** question that closes the biggest architectural gap.

Priority order when choosing:

1. ⚡ **Conflict** — two stories can't both be true
2. ❌ **Boundary** — what's in vs out (wrong boundary = wrong P1)
3. ❌ **Data truth** — who owns source of truth
4. ❌ **Decision vs insight** — forecast ≠ purchase order
5. ❌ **Feedback loop** — outcomes don't return
6. ❌ **Actor/ownership** — nobody owns a node
7. ⚠️ **Inferred P1-critical** — confirm before building on it

### Question shape

- One main question per turn (max one short follow-up if tightly coupled).
- If ambiguity is architectural, offer **2–4 ranked options** — not yes/no.
- Record answers verbatim as confirmed or preference.

### Stop asking when

All of the following hold:

- No ⚡ conflicts remain (or user picked a resolution).
- Every P1 unit can name: purpose, input, output, owner.
- Every main edge has a payload.
- At least one feedback path exists (or user confirms none is needed).
- Remaining ❌ are explicitly listed as **open** with a design default in P3.

---

## Phase 3 — Readiness summary (required before pages)

Show this block. Wait for user OK unless they already said skip.

```markdown
## Dream Print — Readiness summary

**Interview depth used:** light | standard | deep

| Dimension | Status | Note |
|---|---|---|
| Problem & success | ✅ / ⚠️ / ❌ | … |
| System boundary | … | … |
| … (all 10) | … | … |

**Confirmed:** …
**Design defaults (please correct if wrong):** …
**Open (will appear in P3):** …

**Proposed title:** …

Ready to produce E0 → P1 → R1 → P2 → P3. Proceed?
```

User may: confirm · correct defaults · answer one more gap · or skip to output.

---

## Phase 4 — Output (only after Phase 3)

Now follow output-contract and visual-layout. First pages: **E0**, then **P1**. Continue through the package.

If mid-output you discover a ⚡ conflict, **stop**, state the conflict, ask one question, update Readiness summary, then continue.

---

## Anti-patterns (never do)

- Jumping to Mermaid because docs look long or technical.
- Assuming repo structure = service boundaries.
- Filling gaps silently without labeling design defaults.
- Asking five low-value questions while boundary is still ❌.
- Producing P2/P3 before P1 units are validated.
