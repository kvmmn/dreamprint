# Output contract

## Standard package

| Page | Role |
|---|---|
| E0 | One system in environment; direct actor/service interactions |
| P1 | Macro architecture and flow backbone |
| R1 | Process summary + architecture justification on one page |
| P2-A…N | One page opening each P1 unit |
| P3 | Precise connected one-page blueprint + decision register |

## Page rules

### E0

Only one central system and its direct environment. No internal components, models, or databases. Potential links are dashed.

### P1

Break the system into the highest useful units (A, B, C, D…). Technology is a secondary line under responsibility. Include business outcome and feedback.

### R1

One page. Honest confidence-building title. Usable process and key boundary reasons. No private chain-of-thought.

### P2

Exactly one P1 unit per page. Elements inside a thick focus boundary titled `Focus: <parent id> — <name>`. Parent inputs/outputs and external services stay outside. New detail allowed; semantic change or contradiction forbidden.

### P3

Must fit one page. Connections only enough to clarify dependencies. Record three sections: confirmed, defaults, open.

## Lineage

```text
P1:A -> P2-A:A1..An
P1:B -> P2-B:B1..Bn
P1:C -> P2-C:C1..Cn
P1:D -> P2-D:D1..Dn
All P2 -> P3
```

Children complete the parent contract. Changing P1 forces review of all P2s and P3. Changing a P2 forces review of P3 and its interfaces.

## Line language

- Solid: primary or confirmed flow
- Dashed: optional, control, or potential
- `?`: open decision
- Thick box: system/subsystem boundary
- Pencil: notes, tech, assumptions, context
- Marker: architecture and main contracts
