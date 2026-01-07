# 🔁 Environment Switching – App Viagens

## Objetivo
Descrever o procedimento técnico para alternar ambientes (Dev/Prod)
utilizando scripts, variáveis e configurações do FlutterFlow + Firebase.

---

## 🧩 Pré-requisitos
- Branch correta (dev ou main)
- FlutterFlow Version Control ativo
- Firebase Projects configurados

---

## ⚙️ Troca de ambiente via FlutterFlow
1. Selecionar Environment (Dev ou Prod)
2. Validar variáveis (`buildEnv`, `firebaseProjectId`)
3. Executar Build

---

## 🧪 Troca de ambiente via VS Code
### Executar script via terminal:
### DEV
```bash
./scripts/set-env-dev.ps1
```
### PROD
```bash
./scripts/set-env-prod.ps1
```