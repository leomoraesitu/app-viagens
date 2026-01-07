# set-env-prod.ps1
# Configura o ambiente PROD para Web + Dart e mostra instruções para Android/iOS

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "============================="
Write-Host " Configurando ambiente PROD  "
Write-Host "============================="

# 1) environment.json (Dart)
$envSrc = Join-Path $projectRoot "env-templates\environment.json.prod.example"
$envDst = Join-Path $projectRoot "assets\environment_values\environment.json"
Copy-Item $envSrc $envDst -Force
Write-Host "environment.json -> PROD"

# 2) index.html (Web)
$indexSrc = Join-Path $projectRoot "env-templates\index.prod.html.example"
$indexDst = Join-Path $projectRoot "web\index.html"
Copy-Item $indexSrc $indexDst -Force
Write-Host "index.html -> PROD"

Write-Host ""
Write-Host "✅ Ambiente PROD configurado para Web + Dart."
Write-Host ""
Write-Host "👉 Android (PROD):"
Write-Host "   flutter run --flavor prod -t lib/main.dart"
Write-Host ""
Write-Host "👉 iOS (PROD):"
Write-Host "   - No Xcode, use o scheme/config de PROD (ex.: Debug-prod/Release-prod)"
Write-Host "   - Ou pelo Flutter: flutter run --flavor prod -d ios"
Write-Host ""
