# scripts\set-env-prod.ps1
# Configura o ambiente PROD para Web + Dart e mostra instruções para Android/iOS

$ErrorActionPreference = "Stop"

Write-Host "============================="
Write-Host " Configurando ambiente PROD  "
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

  Write-Host "$label -> PROD"
}

# 1) environment.json (Dart)
$envSrc = Join-Path $templatesDir "environment.json.prod.example"
$envDst = Join-Path $projectRoot "assets\environment_values\environment.json"
Copy-Validated $envSrc $envDst "environment.json"

# 2) index.html (Web)
$indexSrc = Join-Path $templatesDir "index.prod.html.example"
$indexDst = Join-Path $projectRoot "web\index.html"
Copy-Validated $indexSrc $indexDst "index.html"

# 3) firebase_prod.json (Web Firebase config)
$firebaseSrc = Join-Path $templatesDir "firebase_prod.json.example"
$firebaseDst = Join-Path $projectRoot "assets\firebase\firebase_prod.json"
Copy-Validated $firebaseSrc $firebaseDst "firebase_prod.json"

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
