# تاریخچه تصمیم‌ها

1. مدل اولیه سه ابزار روی یک صفحه بود: مداد، خودکار نازک و ماژیک.
2. به سه صفحه‌ی پیشرونده تغییر کرد.
3. مشخص شد هر واحد P1 به P2 اختصاصی نیاز دارد.
4. صفحه‌ی ecosystem و سپس R1 افزوده شد.
5. بسته‌ی نمونه به E0، P1، R1، چهار P2 و P3 رسید.
6. مداد/ماژیک از مراحل زمانی به نقش‌های معنایی تغییر کردند.
7. P3 طولانی و بیش‌ازحد low-level کنار گذاشته و یک‌صفحه‌ای شد.

## بصری

- ASCII رد شد.
- تصویر، HTML و PDF به عنوان تحویل اصلی رد شدند.
- Mermaid Flowchart از نظر ظاهر مناسب ولی از نظر نسبت متغیر بود.
- Block Diagram/Grid 12×17 برای قاب صفحه انتخاب شد.
- Grid کم‌رنگ، سه یا چهار ستون، focus boundary در P2 و اتصال حداقلی P3 الزامی شدند.
- E0 به یک سیستم و تعامل مستقیم با محیط محدود شد.
- سایز قابل تنظیم است؛ اگر کاربر ابعاد نگوید، پیش‌فرض **A4 Portrait** (210×297، عمودی) است.

## محتوایی

- معماری سرویس‌محور است، نه فهرست ویژگی محصول.
- مسئولیت پیش از فناوری می‌آید.
- صفحات فرزند فقط والد را توسعه می‌دهند.
- R1 روش قابل فهم را می‌گوید، نه نام روش‌ها یا chain-of-thought.
- عنوان باید صادقانه و اعتمادساز باشد.

## SnappStore

- منشأ POS/QR است؛ Platform مالک transaction truth.
- Forecasting داده‌ی normalized را مصرف می‌کند.
- hybrid weighted ensemble و hybrid serving انتخاب شدند.
- Forecast از procurement decision جداست.
- Snapp Supply تعامل بالقوه و اختیاری است.

## نام و انتشار (قطعیشده ۲۰۲۶-۰۷-۲۳)

| بستر | نوشتار |
|---|---|
| برند / عنوان انسانی | Dream Print |
| نام فنی Skill / پوشه / `name` در frontmatter | `dreamprint` |
| پوشه‌ی کاری محلی / workspace shorthand | `_dreamprint` |

- هدف: open source روی GitHub؛ دانلود آزاد، استفاده آزاد، contribution پذیرفته.
- نصب‌پذیر به‌عنوان Skill در Cursor، Claude، Codex، VS Code، Windsurf، Antigravity و هر ابزار سازگار با استاندارد Agent Skills (`SKILL.md`).
- بسته حول یک `SKILL.md` استاندارد ساخته می‌شود؛ README مسیرهای نصب چندابزاری را پوشش می‌دهد.
- `agents/openai.yaml` برای سازگاری Codex اختیاری ولی توصیه‌شده است.

## انتشار

- GitHub: https://github.com/kvmmn/dreamprint
- **v0.1.3** — پروتکل نوبت سخت؛ ⚠️ در عمق شمرده می‌شود؛ بدون proceed صریح هیچ Mermaid
- **v0.1.2** — gate inline؛ نصب global با copy؛ INSTALL + sync script
- **v0.1.1** — Readiness Gate اجباری

## مصاحبه

- doc کامل ≠ ✅؛ استنباط از سند = ⚠️
- هر نوبت یک فاز: scan | سؤال | readiness | صفحات
- حداقل ۱–۳ نوبت پاسخ‌داده‌شده قبل از Readiness (بسته به عمق)
- سیستم‌های creative/presence → حداقل Standard
- بدون پیام proceed کاربر → ممنوعیت کامل E0–P3

## نصب

- **copy** → `~/.cursor/skills/` و بقیه (استفاده در پروژه‌های دیگر)
- **symlink** → فقط `.cursor/skills/` داخل repo (توسعه)

## باز

- fallback برای ابزارهای بدون Mermaid Block هنوز جزئیات اجرایی ندارد (Flowchart عمودی به‌عنوان fallback ثبت شده).
- تضمین چاپ فیزیکی A4 به ابزار چاپ آینده موکول است؛ فعلاً قرارداد layout است.
