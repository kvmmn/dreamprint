# همگام‌سازی منابع

## منبع حقیقت (single source of truth)

```
_dreamprint/
├── dreamprint/          ← SKILL و references — همیشه اینجا ویرایش شود
├── docs/                ← تاریخچه طراحی (فارسی)
├── assets/              ← اتودها و تصاویر README
└── README.md            ← معرفی GitHub
```

**هر تغییری فقط در `_dreamprint/` اعمال شود.** سپس commit + push به GitHub.

## نصب محلی

| روش | کاربرد |
|---|---|
| **symlink** | توسعه skill در `_dreamprint/` — ویرایش زنده |
| **copy** | استفاده در پروژه‌های دیگر — agent فقط `~/.*/skills/dreamprint/` را می‌خواند |

⚠️ symlink باعث می‌شود Cursor مسیر واقعی `_dreamprint/dreamprint/references/` را بخواند.

| مسیر | نوع |
|---|---|
| `~/.cursor/skills/dreamprint` | **copy** (استفاده روزمره) |
| `~/.claude/skills/dreamprint` | **copy** |
| `~/.codex/skills/dreamprint` | **copy** |
| `~/.gemini/config/skills/dreamprint` | symlink → `dreamprint/` (Antigravity global) |
| `~/.gemini/antigravity/skills/dreamprint` | symlink → `dreamprint/` (Antigravity fallback) |
| `~/.codeium/windsurf/skills/dreamprint` | symlink → `dreamprint/` (Windsurf global) |
| `.agents/skills/dreamprint` (در repo) | symlink → `dreamprint/` (Antigravity/Windsurf project) |
| `.cursor/skills/dreamprint` (در repo) | symlink → `dreamprint/` (توسعه) |
| `.claude/skills/dreamprint` (در repo) | symlink → `dreamprint/` |
| `.codex/skills/dreamprint` (در repo) | symlink → `dreamprint/` |

Symlink یعنی ویرایش در `dreamprint/` بلافاصله در همه‌ی نصب‌ها دیده می‌شود — copy جدا لازم نیست.

## چک‌لیست بعد از هر تغییر

1. `dreamprint/SKILL.md` — frontmatter `metadata.version` را بالا ببر
2. `dreamprint/references/` — referenceهای مرتبط
3. `dreamprint/README.md` — نسخه و layout
4. `README.md` (root) — نسخه و ویژگی‌های کلیدی
5. `docs/07-decision-log.md` — تصمیم یا تغییر مهم
6. `docs/index.md` — وضعیت نسخه
7. `git add` → `commit` → `push origin main`
8. چت جدید در agent برای reload skill

## نسخه‌گذاری

- **Patch** (0.1.x): اصلاح رفتار skill، reference، README
- **Minor** (0.x.0): قابلیت جدید (مثلاً fallback چاپ، reference جدید)
- همیشه `metadata.version` در SKILL.md با tag/commit هم‌خوان باشد

## GitHub

Repo: https://github.com/kvmmn/dreamprint  
Branch: `main`
