# مشخصات ساخت Skill — Dream Print

این سند قرارداد ساخت است. پس از تأیید بصری صفحات مرجع، به `SKILL.md` نهایی تبدیل می‌شود.

## نام‌گذاری

| بستر | نوشتار |
|---|---|
| برند / README / عنوان | Dream Print |
| `name` در frontmatter و نام پوشه | `dreamprint` |
| workspace محلی | `_dreamprint` |

## هدف

تبدیل شرح مبهم، مشاهده، خاطره‌ی پروژه یا مسئله‌ی فنی به بسته‌ی معماری منسجم و پیشرونده با مصاحبه‌ی کم‌اصطکاک.

## Triggerها

- منسجم‌کردن ایده‌ی خام؛
- بازسازی پروژه‌ی قبلی؛
- تبدیل تجربه/مشاهده به سیستم؛
- استخراج معماری سرویس از شرح ناقص؛
- شکستن مسئله‌ی فنی و آماده‌سازی اجرا؛
- تولید نمودارهای پیشرونده (پیش‌فرض A4 Portrait).

## سازگاری چندابزاری (open source)

بسته روی استاندارد **Agent Skills** (`SKILL.md` + YAML frontmatter) ساخته می‌شود تا بدون تغییر محتوا در ابزارهای سازگار کار کند:

| ابزار | مسیر نصب پیشنهادی |
|---|---|
| Cursor | `.cursor/skills/dreamprint/` یا `~/.cursor/skills/dreamprint/` |
| Claude Code | `.claude/skills/dreamprint/` یا `~/.claude/skills/dreamprint/` |
| Codex | `.codex/skills/dreamprint/` یا `~/.codex/skills/dreamprint/` |
| VS Code / Copilot | مسیر skills پروژه‌ای ابزار (معمولاً `.github/skills/` یا docs ابزار) |
| Windsurf / Antigravity / سایر | هر مسیر discovery که Agent Skills را می‌خواند؛ یا symlink به همان پوشه |

Cursor مهارت‌های Claude/Codex را هم از `.claude/skills/` و `.codex/skills/` بارگذاری می‌کند؛ برای حداکثر سازگاری، README نصب با clone یا copy یک پوشه‌ی واحد را آموزش می‌دهد.

### قواعد فرانت‌متر قابل حمل

```yaml
---
name: dreamprint
description: >-
  Turns vague ideas, past projects, observations, or technical problems into a
  coherent progressive service architecture (E0/P1/R1/P2/P3) with Mermaid pages.
  Use when the user wants to reconstruct an idea, recover a forgotten project,
  design a system from a rough brief, or produce A4 architecture diagrams.
license: MIT
---
```

- فقط فیلدهای استاندارد مشترک (`name`, `description`, اختیاری `license` / `metadata`).
- بدون وابستگی به extension اختصاصی یک IDE.
- بدنه‌ی `SKILL.md` زیر ۵۰۰ خط؛ جزئیات در `references/`.
- progressive disclosure: agent فقط در صورت نیاز referenceها را می‌خواند.

## ساختار بسته‌ی انتشار

```text
dreamprint/
├── SKILL.md
├── LICENSE
├── README.md                 # نصب چندابزاری + contribution
├── agents/
│   └── openai.yaml           # سازگاری Codex
└── references/
    ├── interview-and-recovery.md
    ├── output-contract.md
    ├── visual-layout.md
    └── snappstore-example.md
```

ریپوی GitHub می‌تواند همین پوشه باشد یا monorepo با `skills/dreamprint/`.

## Workflow اجباری

1. ورودی را آزاد دریافت کن.
2. هدف، شواهد، بازیگر، داده، تصمیم و ابهام را استخراج کن.
3. سؤال‌های کم و پربازده بپرس.
4. در ابهام، ۲ تا ۴ گزینه‌ی قابل رتبه‌بندی بده.
5. مرز و مسئولیت را پیش از فناوری تعیین کن.
6. عنوان صادقانه و اعتمادساز انتخاب کن.
7. ابعاد صفحه را از کاربر بگیر؛ اگر نگفت → A4 Portrait.
8. E0/P1 را بساز و کنترل کن.
9. برای هر واحد P1 یک P2 با focus boundary بساز.
10. R1 و P3 را هرکدام در یک صفحه تولید کن.
11. lineage، عدم تضاد، وضعیت تصمیم و قاب صفحه را اعتبارسنجی کن.
12. همه صفحات را مستقیم در Markdown/Mermaid نمایش بده.

## الزامات

- reasoning پایه‌ای و آزمون ضرورت در کل فرایند انجام شود.
- chain-of-thought خام نمایش داده نشود.
- سؤال تکراری، گره بی‌قرارداد و یال بی‌payload وجود نداشته باشد.
- E0 فاقد جزئیات داخلی، P2 دارای مرز تمرکز و P3 متصل و یک‌صفحه‌ای باشد.
- قاب صفحه یکسان؛ پیش‌فرض A4 Portrait.
- صفحات بعدی توسعه‌ی سازگار قبلی باشند.
- تحویل اصلی Markdown + Mermaid داخل گفتگو؛ بدون وابستگی به فایل خارجی مگر درخواست صریح.

## آزمون پذیرش

چهار مورد آزمایش شود: ایده‌ی بسیار مبهم، مشاهده‌ی کاری/دانشگاهی، پروژه‌ی قدیمی با حافظه ناقص، و مسئله فنی جدید. کیفیت سؤال، صداقت فرض‌ها، پوشش P1، lineage، قاب صفحه، عنوان اعتمادساز و مشاهده‌پذیری بدون فایل خارجی بررسی شود.

## مراحل ساخت

1. ~~نام تجاری و فنی~~ — Dream Print / `dreamprint`.
2. ~~بسته‌ی `dreamprint/`~~ — v0.1.0 آماده.
3. ~~اسناد → `references/`~~ — انجام شد؛ `docs/` فقط تاریخچه طراحی است.
4. ~~`agents/openai.yaml` + README + LICENSE~~ — انجام شد.
5. ~~تأیید ویژوال صفحات مرجع~~ — انجام شد.
6. **بعدی:** فیدبک استفاده‌ی واقعی → v0.2+ → انتشار GitHub.
