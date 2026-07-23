# مشخصات ساخت Skill — Dream Print

قرارداد ساخت. پیاده‌سازی زنده در [`../dreamprint/`](../dreamprint/).  
**نسخه فعلی: 0.1.1**

## نام‌گذاری

| بستر | نوشتار |
|---|---|
| برند / README / عنوان | Dream Print |
| `name` در frontmatter و نام پوشه | `dreamprint` |
| workspace محلی | `_dreamprint` |
| GitHub | https://github.com/kvmmn/dreamprint |

## هدف

تبدیل شرح مبهم، مشاهده، خاطره‌ی پروژه یا مسئله‌ی فنی به بسته‌ی معماری منسجم و پیشرونده — با **مصاحبه‌ی تطبیقی و Readiness Gate** قبل از هر صفحه.

## Triggerها

- منسجم‌کردن ایده‌ی خام
- بازسازی پروژه‌ی قبلی
- تبدیل تجربه/مشاهده به سیستم
- استخراج معماری سرویس از شرح ناقص
- شکستن مسئله‌ی فنی و آماده‌سازی اجرا
- تولید نمودارهای پیشرونده (پیش‌فرض A4 Portrait)

## سازگاری چندابزاری

استاندارد Agent Skills — نصب در Cursor، Claude، Codex، VS Code، Windsurf، Antigravity و هر ابزار سازگار.  
همگام‌سازی: [09-sync-policy.md](09-sync-policy.md)

## ساختار بسته

```text
dreamprint/
├── SKILL.md
├── LICENSE · README.md
├── agents/openai.yaml
└── references/
    ├── readiness-gate.md      ← اجباری قبل از خروجی
    ├── interview-and-recovery.md
    ├── output-contract.md
    ├── visual-layout.md
    └── snappstore-example.md
```

## Workflow (خلاصه)

### A — Readiness (اجباری)

1. ورودی آزاد
2. اسکن ۱۰ بعدی
3. عمق light / standard / deep
4. سؤالات تطبیقی
5. Readiness summary + تأیید کاربر
6. **بدون تأیید → بدون E0**

### B — خروجی

7. E0 → P1 → P2… → R1 → P3
8. اعتبارسنجی lineage و قاب صفحه
9. Mermaid در گفتگو

## مراحل

| # | وضعیت |
|---|---|
| 1 | نام — Dream Print / `dreamprint` |
| 2 | بسته `dreamprint/` |
| 3 | references + readiness-gate |
| 4 | GitHub + assets |
| 5 | v0.1.1 readiness gate |
| 6 | **بعدی:** فیدبک → v0.2 |
