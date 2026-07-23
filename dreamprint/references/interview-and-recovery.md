# Interview and recovery

Works with [readiness-gate.md](readiness-gate.md). The gate decides *when* to ask; this file decides *how* to recover and deepen.

## Cycle

1. Split free-form input into evidence, goal, actors, data, outcomes, gaps.
2. Recover the real problem, stakeholder, and success measure.
3. Bound system vs environment vs adjacent services.
4. Trace data: origin → processing → model → decision → feedback.
5. Define parts by responsibility first, technology second.
6. Test necessity; remove or merge redundant parts.
7. Lock each part's input, output, ownership, and boundary.
8. Expand to subsystem pages without contradiction.
9. Check incomplete flows, conflicts, open feedback loops, hidden assumptions.
10. Record confirmed decisions, defaults, and open items for implementation.

## Question policy

- **Always scan first** — even rich docs/repos may leave boundary, ownership, or feedback gaps.
- Fewest questions with highest effect; usually **one main question per turn**.
- Never re-ask ✅ confirmed facts.
- Focus on: goal, actors, data origin, grain, horizon, serving, feedback, constraints.
- Ranked user answers become preferences as stated.
- Reasonable assumptions become **design defaults** — show in Readiness summary, never silent.
- Assumptions must not block progress, but user must be able to correct them before pages.

## Adaptive depth (summary)

| Depth | Typical input | Behavior |
|---|---|---|
| Light | Strong brief, specs, or repo | 1–2 confirm questions on inferred P1-critical items |
| Standard | Partial brief or mixed certainty | One question per turn until gate passes |
| Deep | Vague, memory-only, or conflicting | Option reconstruction + targeted questions |

Full criteria: readiness-gate.md.

## Option reconstruction

When memory or docs are incomplete or conflicting, offer 2–4 **architecturally different** reconstructions — not wording variants. User ranks, blends, or rejects.

## Knowledge status

- **Confirmed:** user or authoritative source.
- **Design default:** current choice, revisable; must appear in Readiness summary.
- **Open:** needs decision; propose default; record in P3.

## Node and edge criteria

Each node: purpose, input, action, output, boundary/owner, success/failure signal.  
Each edge: direction + payload.

If you cannot fill these for a P1 unit from confirmed + accepted defaults, the gate has not passed — ask.

## R1 content

One page: recovery, analysis, problem split, solution shaping, validation, readiness to implement. No internal method names or raw chain-of-thought.
