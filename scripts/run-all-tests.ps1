# File: scripts/run-all-tests.ps1
# Roda TODOS os testes do projeto e salva evidência em:
#   app-viagens/docs/qa/test-evidence/YYYY-MM-DD_all_tests.txt
#
# Uso:
#   ./scripts/run-all-tests.ps1

$ErrorActionPreference = "Stop"

# Raiz do projeto (assumindo que este script está em /scripts)
$projectRoot = Resolve-Path (Join-Path $PSScriptRoot "..")

$today = Get-Date -Format "yyyy-MM-dd"

# Caminho correto para evidências
$evidenceDir = Join-Path $projectRoot "docs\qa\test-evidence"
New-Item -ItemType Directory -Force -Path $evidenceDir | Out-Null

$logFile = Join-Path $evidenceDir "${today}_all_tests.txt"

Write-Host "============================="
Write-Host " Running ALL Flutter tests    "
Write-Host "============================="
Write-Host "Project root : $projectRoot"
Write-Host "Evidence dir : $evidenceDir"
Write-Host "Log file     : $logFile"
Write-Host ""

# Rodar todos os testes e registrar saída completa no arquivo
flutter test --reporter expanded 2>&1 | Tee-Object -FilePath $logFile

Write-Host ""
Write-Host "============================="
Write-Host " Done                         "
Write-Host "============================="
Write-Host "All tests executed successfully."
Write-Host "Log saved at: $logFile"
