# 🔄 Troca de Ambientes

Este documento descreve o procedimento padrão para **troca de ambientes (Dev / Prod)** no projeto FlutterFlow e Flutter, cobrindo Web, Android e iOS.

---

## ⚙️ Troca de ambiente via FlutterFlow
1. Selecionar Environment (Dev ou Prod)
2. Validar variáveis (`buildEnv`, `firebaseProjectId`)
3. Executar Build

---


## 🧪 Troca de ambiente via VS Code

## 📁 Estrutura de Templates

Diretório:
/env-templates

Arquivos:
- firebase_dev.json.example
- firebase_prod.json.example

Atualizar com respectivos firebaseConfigs.

---

## 🤖 Android

Criar diretórios:

android/app/src/dev  
android/app/src/prod  

Adicionar em cada um o respectivo:
google-services.json

---

## 🍎 iOS

Diretório:
ios/Runner

Arquivos:
- GoogleService-Info-Dev.plist
- GoogleService-Info-Prod.plist

---

## ⚙️ Scripts

Ativar PROD:
./scripts/set-env-prod.ps1

Ativar DEV:
./scripts/set-env-dev.ps1

---

## ▶️ Execução

Web:
flutter run -d chrome

Android/iOS PROD:
flutter run --flavor prod -t lib/main.dart

Android/iOS DEV:
flutter run --flavor dev -t lib/main.dart