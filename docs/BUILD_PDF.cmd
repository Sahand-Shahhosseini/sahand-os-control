@echo off
setlocal
title BUILD PDF - DOC_PROTO_7+14 MAINSTREAM
echo ============================================================
echo Building PDF from DOC_PROTO_7_PLUS_14_MAINSTREAM_v0_3_INTEGRATED_RC2.tex
echo ============================================================

REM Try latexmk first (preferred)
where latexmk >nul 2>nul
if %errorlevel%==0 (
  latexmk -pdf -interaction=nonstopmode -halt-on-error "DOC_PROTO_7_PLUS_14_MAINSTREAM_v0_3_INTEGRATED_RC2.tex"
  if errorlevel 1 goto :FAIL
  goto :OK
)

REM Fallback to pdflatex (2 passes)
where pdflatex >nul 2>nul
if not %errorlevel%==0 goto :FAIL_NO_TEX

pdflatex -interaction=nonstopmode -halt-on-error "DOC_PROTO_7_PLUS_14_MAINSTREAM_v0_3_INTEGRATED_RC2.tex"
if errorlevel 1 goto :FAIL
pdflatex -interaction=nonstopmode -halt-on-error "DOC_PROTO_7_PLUS_14_MAINSTREAM_v0_3_INTEGRATED_RC2.tex"
if errorlevel 1 goto :FAIL

:OK
echo [OK] PDF build succeeded.
exit /b 0

:FAIL_NO_TEX
echo [FAIL] No TeX engine found (latexmk/pdflatex). Install MiKTeX/TeXLive.
exit /b 1

:FAIL
echo [FAIL] LaTeX compilation failed. Check .log for details.
exit /b 1
