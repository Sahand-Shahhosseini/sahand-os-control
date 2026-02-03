@echo off
setlocal enabledelayedexpansion
title RUN ALL - DOC_PROTO_7+14 MAINSTREAM
echo ============================================================
echo RUN ALL (fail-closed) - builds PDF if TeX is available
echo then generates SHA-256 manifest.
echo ============================================================

call BUILD_PDF.cmd
if errorlevel 1 (
  echo [FAIL] BUILD_PDF.cmd failed. Fix TeX toolchain and re-run.
  pause
  exit /b 1
)

call HASH_ALL.cmd
if errorlevel 1 (
  echo [FAIL] HASH_ALL.cmd failed.
  pause
  exit /b 1
)

echo [OK] Done.
pause
exit /b 0
