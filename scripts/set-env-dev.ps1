# set-env-dev.ps1
# Configura o ambiente DEV para Web + Dart e mostra instruções para Android/iOS

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "============================="
Write-Host "  Configurando ambiente DEV  "
Write-Host "============================="

# 1) environment.json (Dart)
$envSrc = Join-Path $projectRoot "env-templates\environment.json.dev.example"
$envDst = Join-Path $projectRoot "assets\environment_values\environment.json"
Copy-Item $envSrc $envDst -Force
Write-Host "environment.json -> DEV"

# 2) index.html (Web)
$indexSrc = Join-Path $projectRoot "env-templates\index.dev.html.example"
$indexDst = Join-Path $projectRoot "web\index.html"
Copy-Item $indexSrc $indexDst -Force
Write-Host "index.html -> DEV"

Write-Host ""
Write-Host "✅ Ambiente DEV configurado para Web + Dart."
Write-Host ""
Write-Host "👉 Android (DEV):"
Write-Host "   flutter run --flavor dev -t lib/main.dart"
Write-Host ""
Write-Host "👉 iOS (DEV):"
Write-Host "   - No Xcode, use o scheme/config de DEV (ex.: Debug-dev/Release-dev)"
Write-Host "   - Ou pelo Flutter: flutter run --flavor dev -d ios"
Write-Host ""
