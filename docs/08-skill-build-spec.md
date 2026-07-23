# مشخصات ساخت Skill — Dream Print

پیاده‌سازی: [`../dreamprint/`](../dreamprint/) · **نسخه: 0.1.2**

## ساختار بسته

```text
dreamprint/
├── SKILL.md              ← gate inline (v0.1.2)
├── INSTALL.md
├── README.md · LICENSE
├── agents/openai.yaml
├── scripts/sync-install.sh
└── references/
    ├── readiness-gate.md
    ├── interview-and-recovery.md
    ├── output-contract.md
    ├── visual-layout.md
    └── snappstore-example.md
```

## Workflow

**A — Readiness:** اسکن ۱۰ بعد → عمق light/standard/deep → Readiness summary → تأیید  
**B — خروجی:** E0 → P1 → P2… → R1 → P3

## نصب

راهنمای کامل: [`../dreamprint/INSTALL.md`](../dreamprint/INSTALL.md)  
همگام‌سازی محلی: `bash dreamprint/scripts/sync-install.sh`

| # | وضعیت |
|---|---|
| 1–4 | نام، بسته، GitHub، assets |
| 5 | v0.1.1 readiness gate |
| 6 | v0.1.2 inline gate + copy install + INSTALL.md |
| 7 | **بعدی:** فیدبک → v0.2 |
