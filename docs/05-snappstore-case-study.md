# پرونده نمونه: SnappStore Forecasting

## شواهد اولیه

- Data Scientist (part-time)، Nov 2023 تا Sep 2024.
- مدل hybrid ARIMA + LSTM برای demand forecasting و procurement/inventory planning.
- کاهش stock-out حدود ۱۲٪.
- مالکیت چرخه کامل ML: EDA، feature engineering، evaluation، deployment و monitoring.
- REST API production-ready و همکاری با engineering.
- Stack: Python، SQL، Statsmodels، TensorFlow، FastAPI، Docker، Kubernetes و Git.

## زمینه

SnappStore پلتفرم B2B مدیریت رستوران و omnichannel commerce است، نه SnappShop یا SnappMarket. منشأ فیزیکی داده، POS رستوران/کافه و QR روی میز است که مشتری از آن برای دیدن منو، سفارش و پرداخت استفاده می‌کند.

تصمیم مرزی: Forecasting مستقیماً POS یا session خام QR را نمی‌خواند. SnappStore Platform ابتدا رویدادها را اعتبارسنجی و به تاریخچه‌ی تراکنش یکپارچه تبدیل می‌کند.

## تصمیم‌های بازیابی‌شده

### ترکیب مدل

1. ARIMA و LSTM موازی با ترکیب وزن‌دار؛
2. residual؛
3. زنجیره متوالی؛
4. تقسیم سری‌ها میان مدل‌ها.

گزینه‌ی اول منتخب شد.

### Grain و horizon

`item/SKU × restaurant/branch × day` با افق اصلی ۷ تا ۱۴ روز.

### Serving

1. precomputed + fresh/on-demand API؛
2. فقط on-demand؛
3. فقط scheduled batch.

گزینه‌ی اول منتخب شد.

### اولویت ورودی

1. فروش و سفارش؛ 2. قیمت/تقویم/promotion؛ 3. inventory/stock-out؛ 4. عوامل خارجی اختیاری.

## مرزها

- A — Transaction sources: تولید event از POS و QR.
- B — SnappStore platform: مالک حقیقت تراکنش.
- C — Forecasting service: signal preparation، forecasting، ensemble، serving و monitoring.
- D — Procurement planning: تبدیل forecast و inventory به replenishment recommendation.

اصل کلیدی: Forecast با Purchase Order برابر نیست. D محدودیت‌هایی مثل lead time، pack size، shelf life و budget را اعمال می‌کند.

## اکوسیستم

Forecast تجمیعی می‌تواند فرصت همکاری بالقوه با Snapp Supply و سرویس‌های گروه Snapp ایجاد کند؛ این تعامل در هسته اجباری نیست و به مجوز، aggregation و سیاست داده نیاز دارد.

## وضعیت تصمیم‌ها

- تأییدشده: POS/QR، هدف inventory، hybrid model، API، Stack و نتیجه‌ی ~12٪.
- پیش‌فرض: daily scoring، rolling temporal backtest و refresh وزن ensemble.
- باز: منبع دقیق inventory، stock-out label، سیاست Snapp Supply و میزان خودکاربودن سفارش.
