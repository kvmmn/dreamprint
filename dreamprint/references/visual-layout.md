# Visual layout

## Frame

If the user specifies page size, use it. Otherwise default to **A4 Portrait** (210×297).

Layout contract (not physical print guarantee in Mermaid):

- Base grid: 12 columns × 17 horizontal bands
- Fixed zones: title, diagram body, outcome/decision register, footer (legend/stack/page id)
- Three columns: `4+4+4` · Four columns: `3+3+3+3`
- Grid lines very light; dominant direction top → bottom; paths aligned to grid when possible

```text
┌──────────────────── PAGE FRAME ─────────────────────┐
│ Title / id / goal                                   │
├───────────┬───────────┬───────────┬────────────────┤
│           │        Diagram on grid                  │
├───────────┴───────────┴───────────┴────────────────┤
│ Outcome or decision register                        │
├─────────────────────────────────────────────────────┤
│ Legend, stack, page number                          │
└─────────────────────────────────────────────────────┘
```

## Mermaid

Prefer block/grid diagrams with explicit columns when the renderer supports them. Fallback: vertical flowchart with limited nesting.

- Short responsibility-first node labels
- Technology on a second line when needed
- Edge text = payload only

## Focus boundary

On every P2, put subsystem elements inside a thick boundary:

`Focus: <parent id> — <name>`

Keep inbound/outbound parent contracts and external services outside the boundary.

## Delivery

Default delivery is Markdown + Mermaid visible in chat. Do not depend on HTML, PNG, PDF, or downloads unless the user explicitly requests them.

Mermaid does not guarantee exact printable units; treat the grid as a layout contract for a future print tool.
