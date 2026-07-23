# Readiness gate — interview before output

**Never skip.** Long docs and rich repos still hide boundary, ownership, and product-logic gaps.

## Absolute bans (before explicit proceed)

- No Mermaid
- No E0 / P1 / R1 / P2 / P3 pages
- No “enough is confirmed / delivering the package / locking architecture”

Proceed = user message **after** Readiness summary: yes / proceed / go / OK / تأیید / بله / draw it / skip to pages.

## Turn protocol

1. **Scan only** — 10-dimension table + depth + **one** question. Stop.
2. **Interview turns** — one question each; wait for answers (min turns by depth).
3. **Readiness summary** — alone; ask to proceed. Stop.
4. **Pages** — only after proceed.

Never bundle scan + proceed + pages. Never put an unanswered question and “Proceed?” together.

## Marking honesty

| Mark | Meaning |
|---|---|
| ✅ | User stated in this chat, or user confirmed your reading |
| ⚠️ | Inferred from docs/repo/code — **not** confirmed |
| ❌ | Needed and absent |
| ⚡ | Conflicting sources |

Doc prose alone must not produce a wall of ✅. Reclassify over-confident ✅ → ⚠️.

## Depth (dims 1–8)

Count ❌ + ⚠️ (and any ⚡):

| Depth | When | Min answered turns before Readiness |
|---|---|---|
| Deep | any ⚡, or ≥3 (❌+⚠️), or creative/presence/“no goal” briefs | ≥3; include options once |
| Standard | 2 (❌+⚠️) | ≥2 |
| Light | ≤1 (❌+⚠️), no ⚡, user already engaged | ≥1 |

⚠️ **counts**. “Strong spec doc” ≠ Light if marks are mostly inferred.

## Question priority

⚡ → boundary → data truth → decision vs insight → feedback → ownership → largest ⚠️.

One question per turn. Prefer 2–4 ranked architectural options.

## Anti-patterns

- Jumping to Mermaid because docs look complete
- Treating repo layout as service boundaries
- Silent filling of gaps (always label design defaults)
- Light depth after marking everything ✅ from documents
- Creative systems (living presence, art, open-ended growth) on Light
- Same-message interview question + “Proceed to E0?”
