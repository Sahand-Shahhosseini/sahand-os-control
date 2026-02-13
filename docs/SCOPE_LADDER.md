# Scope Ladder (v0 → v0.1 → v1)

## Definitions
- **v0 Scope (MVP)**: حداقل محتوای لازم که قابل داوری باشد (نه کامل، اما بی‌نقص از نظر ساختار)
- **RC0**: اولین نسخه قابل ارسال به داور خارجی
- **RC1/RC2...**: نسخه‌های اصلاح‌شده بر اساس feedback
- **APPROVED_EXT**: تایید خارجی دریافت شد (با متن/اسکرین/ایمیل ثبت‌شده)
- **LOCKED_v0.1**: بعد از تایید خارجی + اعمال اصلاحات + Freeze

## Rules (Hard)
1) هیچ سندی v0.1 نمی‌شود مگر با **APPROVED_EXT**.
2) هر feedback خارجی باید در `DOC14` ثبت شود و به Issue لینک شود.
3) Scope creep ممنوع: تغییر Scope فقط با یک Issue “SCOPE_CHANGE” و دلیل.

## Minimal Check for RC0
- عنوان/هدف/DoD دارد
- Claims روشن هستند
- boundaries روشن: چه چیزی داخل/خارج scope است
- هیچ بخش “خالی” باقیمانده ندارد (حتی اگر کوتاه باشد)

## Stage0 Lock Conditions (for this repo)
Stage0 is considered **closed** only if all are true:
1) `docs/P0_DAILY_LOOP_v0.md` exists on `main`.
2) At least 4 core docs in `docs/14DOC_INDEX.md` have status DRAFT and link to real files.
3) At least 2 real RUN artifacts exist (file-based runs under `docs/RUNS/`), each with Steps 001–030 filled.
4) No placeholder-only issue remains open without a replacement link.
