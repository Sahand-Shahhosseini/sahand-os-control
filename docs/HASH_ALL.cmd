@echo off
setlocal
title HASH ALL - SHA256
echo ============================================================
echo Generating SHA-256 manifest (Windows certutil)
echo ============================================================

set OUT=ANNEX_Z_MANIFEST_SHA256.txt
echo # SHA256 Manifest (deterministic; no timestamps) > "%OUT%"
echo # Deterministic (no timestamps) >> "%OUT%"
echo # Note: certutil prints extra labels; keep verbatim. >> "%OUT%"
echo. >> "%OUT%"

for %%F in (*.tex *.cmd *.txt *.sql *.sqlite Makefile) do (
  if /I not "%%F"=="%OUT%" (
  echo ---- %%F ---- >> "%OUT%"
  certutil -hashfile "%%F" SHA256 >> "%OUT%"
  echo. >> "%OUT%"
  )
)

echo [OK] Wrote %OUT%
exit /b 0
