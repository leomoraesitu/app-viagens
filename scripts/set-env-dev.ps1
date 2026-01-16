# scripts\set-env-dev.ps1
# Configura o ambiente DEV para Web + Dart e mostra instruções para Android/iOS

$ErrorActionPreference = "Stop"

Write-Host "============================="
Write-Host "  Configurando ambiente DEV  "
Write-Host "============================="

# Pasta onde este script está
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Raiz do projeto = pasta pai de \scripts
$projectRoot = Resolve-Path (Join-Path $scriptDir "..")

# Garante que estamos na raiz do projeto (marcador: pubspec.yaml)
if (-not (Test-Path (Join-Path $projectRoot "pubspec.yaml"))) {
  throw "Não foi possível localizar a raiz do projeto (pubspec.yaml não encontrado em: $projectRoot)."
}

# Pasta base dos templates
$templatesDir = Join-Path $projectRoot "env-templates"
if (-not (Test-Path $templatesDir)) {
  throw "Pasta env-templates não encontrada em: $templatesDir"
}

function Ensure-Dir([string]$path) {
  if (-not (Test-Path $path)) {
    New-Item -ItemType Directory -Path $path -Force | Out-Null
  }
}

function Copy-Validated([string]$src, [string]$dst, [string]$label) {
  if (-not (Test-Path $src)) {
    throw "Template não encontrado: $src"
  }

  $dstDir = Split-Path -Parent $dst
  Ensure-Dir $dstDir

  Copy-Item $src $dst -Force

  $len = (Get-Item $dst).Length
  if ($len -le 0) {
    throw "Falha ao gerar arquivo: $dst (arquivo vazio). Verifique o template: $src"
  }

  Write-Host "$label -> DEV"
}

# 1) environment.json (Dart)
$envSrc = Join-Path $templatesDir "environment.json.dev.example"
$envDst = Join-Path $projectRoot "assets\environment_values\environment.json"
Copy-Validated $envSrc $envDst "environment.json"

# 2) index.html (Web)
$indexSrc = Join-Path $templatesDir "index.dev.html.example"
$indexDst = Join-Path $projectRoot "web\index.html"
Copy-Validated $indexSrc $indexDst "index.html"

# 3) firebase_dev.json (Web Firebase config) - opcional, mas recomendado
$firebaseSrc = Join-Path $templatesDir "firebase_dev.json.example"
$firebaseDst = Join-Path $projectRoot "assets\firebase\firebase_dev.json"
Copy-Validated $firebaseSrc $firebaseDst "firebase_dev.json"

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
