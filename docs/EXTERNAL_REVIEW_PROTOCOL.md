# External Review Protocol (Reviewer Loop)

## Objective
تبدیل DOCSET_07 (یا DOCSET_14) به نسخه قابل داوری خارجی و سپس قفل v0.1.

## Loop
1) انتخاب Docset (07 یا 14)
2) تولید RC0 (Markdown/PDF)
3) ارسال به داور خارجی
4) دریافت feedback (متن/ویس/اسکرین)
5) ثبت feedback در DOC14 + ساخت Issues
6) اعمال اصلاحات → RC1
7) تکرار تا APPROVED_EXT
8) Freeze → LOCKED_v0.1

## Evidence
- هر بار ارسال/دریافت: یک رکورد در DOC14
- هر RC: یک Release با نام `RC0`, `RC1` ...
- بعد از تایید: Release `v0.1`
