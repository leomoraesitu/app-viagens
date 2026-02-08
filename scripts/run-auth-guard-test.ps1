$ErrorActionPreference = "Stop"

# Resolve o diretório raiz do projeto (um nível acima de /scripts)
$projectRoot = Resolve-Path (Join-Path $PSScriptRoot "..")

$today = Get-Date -Format "yyyy-MM-dd"

# Caminho correto: app-viagens/docs/qa/test-evidence
$evidenceDir = Join-Path $projectRoot "docs\qa\test-evidence"

New-Item -ItemType Directory -Force -Path $evidenceDir | Out-Null

$logFile = Join-Path $evidenceDir "${today}_auth_guard_test.txt"

flutter test test/widget/auth/auth_guard_test.dart --reporter expanded `
  2>&1 | Tee-Object -FilePath $logFile

Write-Host "Auth guard test executed successfully."
Write-Host "Log saved at: $logFile"
