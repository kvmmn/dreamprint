# همگام‌سازی منابع

## منبع حقیقت

```
_dreamprint/dreamprint/   ← SKILL + references — فقط اینجا ویرایش
```

سپس: `bash dreamprint/scripts/sync-install.sh` → `git commit` → `git push`

## نصب: copy vs symlink

| روش | کجا | چرا |
|---|---|---|
| **copy** | `~/.cursor/skills/` و همه global paths | agent در پروژه‌های دیگر dev repo را نمی‌خواند |
| **symlink** | `.cursor/skills/` **داخل repo** | توسعه زنده skill |

## مسیرهای global (همه copy)

```
~/.cursor/skills/dreamprint
~/.claude/skills/dreamprint
~/.codex/skills/dreamprint
~/.gemini/config/skills/dreamprint
~/.gemini/antigravity/skills/dreamprint
~/.codeium/windsurf/skills/dreamprint
```

## مسیرهای dev (symlink در repo)

```
.cursor/skills/dreamprint  → ../../dreamprint
.claude/skills/dreamprint  → ../../dreamprint
.codex/skills/dreamprint   → ../../dreamprint
.agents/skills/dreamprint  → ../../dreamprint
```

## چک‌لیست بعد از هر تغییر

1. `dreamprint/SKILL.md` — `metadata.version`
2. references · README · INSTALL · sync script
3. `README.md` · `docs/index.md` · `docs/07-decision-log.md`
4. `bash dreamprint/scripts/sync-install.sh`
5. `git push origin main`
6. چت جدید agent

## GitHub

https://github.com/kvmmn/dreamprint · branch `main`
