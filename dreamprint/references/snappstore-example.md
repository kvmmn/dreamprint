# SnappStore fixture (quality reference)

Proven forecasting project ready to be reconstructed. Use this as the acceptance shape, not as forced content for other projects.

## Context

- Role: Data Scientist (part-time), Nov 2023–Sep 2024
- Hybrid ARIMA + LSTM demand forecasting for procurement/inventory
- ~12% lower stock-outs
- Stack: Python · SQL · Statsmodels · TensorFlow · FastAPI · Docker · Kubernetes · Git
- SnappStore = B2B restaurant / omnichannel commerce platform
- Physical origin: restaurant POS + table QR; Platform owns transaction truth
- Forecasting never reads raw POS/QR; consumes normalized history/context/actuals
- Forecast ≠ purchase decision; Snapp Supply is optional/potential

## Pages (semantic models)

### E0

```mermaid
flowchart TB
  P["SnappStore transaction platform"] -->|"history & actuals"| S["Demand forecasting system"]
  S -->|"forecast"| D["Procurement & inventory planning"]
  D -->|"decision outcomes"| S
  O["Model & business operators"] -->|"operate & review"| S
  S -.->|"aggregated demand opportunity"| SS["Potential Snapp Supply"]
  G["Other Snapp Group services"] -.->|"possible exchange"| S
  X["Optional contextual signals"] -.-> S
```

### P1

```mermaid
flowchart TB
  I["POS/QR events · price/calendar/promotion · inventory"] --> A["A · Transaction sources"]
  A -->|"orders, payments, item events"| B["B · SnappStore platform"]
  B -->|"normalized demand & context"| C["C · Forecasting service"]
  C -->|"7–14 day forecast"| D["D · Procurement planning"]
  D --> O["Outcome · ~12% lower stock-outs"]
  D -.->|"inventory & stock-out outcomes"| B
```

### R1

Title: **A proven forecasting project ready to be reconstructed**

```mermaid
flowchart TB
  R1["Recover original purpose"] --> R2["Identify observed outcome"]
  R2 --> R3["Separate evidence, assumptions & gaps"]
  R3 --> R4["Clarify what must be solved"]
  R4 --> R5["Trace actors, events & constraints"]
  R5 --> R6["Follow data origin → decision"]
  R6 --> R7["Separate responsibilities"]
  R7 --> R8["Define input/output contracts"]
  R8 --> R9["Compare viable structures"]
  R9 --> R10["Remove unnecessary components"]
  R10 --> R11["Add feedback & quality checks"]
  R11 --> R12["Expand without contradiction"]
  R12 --> X["Coherent architecture ready to implement"]
```

### P2-A

```mermaid
flowchart TB
  CFG["B · Menu/branch/channel config"]
  subgraph A["FOCUS · A — Transaction sources"]
    A1["A1 · POS operator"] --> A3["A3 · POS order capture"]
    A2["A2 · Customer QR session"] --> A4["A4 · QR menu/order capture"]
    A3 --> A6["A6 · Item-level order events"]
    A4 --> A6
    A4 --> A5["A5 · Payment outcome capture"] --> A7["A7 · Payment status events"]
    A6 --> A8["A8 · Source event handoff"]
    A7 --> A8
  end
  CFG -.-> A3
  CFG -.-> A4
  A8 --> B["B · orders, payments & item events"]
```

### P2-B

```mermaid
flowchart TB
  IN["A · Source events"]
  subgraph B["FOCUS · B — SnappStore platform"]
    B1["B1 · Channel intake"] --> B2["B2 · Validation & dedup"] --> B3["B3 · Entity reconciliation"]
    B5["B5 · Menu/item/branch reference"] -.-> B3
    B3 --> B4["B4 · Unified transaction ledger"]
    B4 --> B6["B6 · Demand history"] --> B7["B7 · Forecast interface"]
    B4 --> B8["B8 · Actuals & corrections"]
    B9["B9 · Source configuration"] -.-> B1
  end
  IN --> B1
  B7 --> C1["C1 · Normalized forecast intake"]
  B8 --> C8["C8 · Monitoring & refresh"]
```

### P2-C

Grain: item × branch × day. Target columns: `3+3+3+3`.

```mermaid
flowchart TB
  IN["B · Normalized demand/context/actuals"]
  subgraph C["FOCUS · C — Demand forecasting service"]
    C1["C1 · Transaction intake"] --> C2["C2 · Signal preparation"] --> C3["C3 · Classical + neural forecasts"]
    C3 --> C4["C4 · Weighted consolidation"] --> C5["C5 · Forecast repository"] --> C6["C6 · Precomputed + fresh access"]
    C7["C7 · Orchestration"] --> C1
    C6 -.-> C7
    C5 --> C8["C8 · Error/bias/drift monitoring"]
    C8 -.->|"refresh"| C2
    C8 -.->|"update weights"| C4
  end
  IN --> C1
  IN -->|"actuals"| C8
  C6 --> OUT["D · 7–14 day forecast"]
```

### P2-D

Net need ≈ forecast + safety stock − available. Forecast ≠ PO.

```mermaid
flowchart TB
  F["C · Forecast"]
  I["Inventory state"]
  K["Lead time · pack · shelf life · budget"]
  subgraph D["FOCUS · D — Procurement & inventory planning"]
    D1["D1 · Forecast intake"] --> D4["D4 · Net requirement"]
    D2["D2 · Inventory intake"] --> D4
    D3["D3 · Constraints"] --> D4
    D4 --> D5["D5 · Replenishment recommendation"] --> D6["D6 · Risk & priority"] --> D7["D7 · Decision delivery"]
    D7 --> D8["D8 · Outcome feedback"]
  end
  F --> D1
  I --> D2
  K --> D3
  D7 --> R["Restaurant/procurement team"]
  D7 -.-> S["Supplier / potential Snapp Supply"]
  D8 --> A["Actual demand & stock-out outcomes"]
```

### P3

```mermaid
flowchart TB
  P31["Source event contract"] --> P32["Validation & dedup"] --> P33["Canonical transaction history"]
  P33 --> P35["Lag/rolling/context features"]
  P34["Actual demand & corrections"] --> P35
  P35 --> P36["ARIMA + LSTM forecasts"] --> P37["Weighted ensemble"] --> P38["Rolling temporal evaluation"]
  P38 --> P39["Forecast repository"] --> P310["REST access"] --> P311["Inventory planning input"]
  P39 --> P312["Monitoring & refresh"]
  P34 --> P312
  P312 -.->|"refresh signals/models"| P35
```

- Confirmed: sources, grain, horizon, hybrid serving
- Defaults: daily scoring, temporal backtesting
- Open: inventory source, stock-out label, supplier integration

## Lineage check

| Parent | Page | In | Out |
|---|---|---|---|
| A | P2-A | POS/QR interactions | orders/payments/item events |
| B | P2-B | source events | normalized demand/context/actuals |
| C | P2-C | normalized history/context | 7–14 day forecast |
| D | P2-D | forecast/inventory/constraints | recommendation/outcomes |
