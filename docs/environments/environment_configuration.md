# 🌐 Environment Configuration

## 🧭 Overview

Este documento descreve a configuração dos ambientes **Development (Dev)** e **Production (Prod)** do projeto **App Viagens**, desenvolvido em **FlutterFlow + Firebase**.

Os ambientes são isolados logicamente e fisicamente, seguindo boas práticas de **Engenharia de Software**, **Segurança da Informação** e **Governança de Ambientes**, garantindo previsibilidade, rastreabilidade e mitigação de riscos durante o ciclo de vida do software.

---

## 🔧 Ambiente – Development (Dev)

| Item                        | Valor                                        |
| --------------------------- | -------------------------------------------- |
| **Ambiente**                | `Development`                                |
| **Branch associada**        | `dev` / `hotfix/*`                           |
| **FlutterFlow Environment** | `Dev`                                        |
| **Firebase Project ID**     | `app-viagens-dev`                            |
| **GA4 Measurement ID**      | `G-XXXXXXXXXX`                                |
| **Status**                  | Ativo – testes, homologação e experimentação |

---

## 🔧 Ambiente – Production (Prod)

| Item                        | Valor                   |
| --------------------------- | ----------------------- |
| **Ambiente**                | `Production`            |
| **Branch associada**        | `main`                  |
| **FlutterFlow Environment** | `Prod`                  |
| **Firebase Project ID**     | `app-viagens-prod`      |
| **GA4 Measurement ID**      | `G-XXXXXXXXXX`          |
| **Status**                  | Ativo – usuários finais |

---

## 🔐 Variáveis de ambiente

| Variável            | Dev               | Prod        | Descrição                                 |
| ------------------- | ----------------- | ----------- | ----------------------------------------- |
| `buildEnv`          | `dev`             | `prod`      | Define o ambiente atual de execução       |
| `apiBaseUrl`        | Sandbox/Teste     | Produção    | Endpoint base da aplicação                |
| `firebaseProjectId` | Dev               | Prod        | ID do projeto Firebase correspondente     |
| `ga4MeasurementId`  | Dev               | Prod        | Measurement ID da propriedade GA4         |
| `featureFlagsJson`  | Ativo             | Restrito    | Controle de funcionalidades experimentais |
| `appName`           | App Viagens (Dev) | App Viagens | Nome exibido no aplicativo                |

---

## 🧩 Integrações externas

### Firebase

* **Cloud Firestore**

  * Dev: dados fictícios e anonimizados
  * Prod: dados reais de usuários

<!-- * **Firebase Storage**

  * Separação física por projeto Firebase -->

* **Firebase Analytics (GA4)**

  * Dev: DebugView habilitado
  * Prod: coleta definitiva para métricas de negócio

---

## 🧪 Feature Flags

As funcionalidades sensíveis ou em validação são controladas via JSON:

```json
{
  "showDebugBanner": true,
  "enableDevMenu": true
}
```

* Ativo apenas no ambiente **Dev**
* No **Prod**, flags críticas permanecem desabilitadas por padrão

---

## ⚙️ Pipeline de Deploy

| Etapa | Descrição                                           |
| ----- | --------------------------------------------------- |
| 1️⃣   | Desenvolvimento em `dev` ou `hotfix/*`              |
| 2️⃣   | Build no FlutterFlow (Dev Environment)              |
| 3️⃣   | Testes funcionais, UI/UX e validação de eventos GA4 |
| 4️⃣   | Revisão de código e checklist de segurança          |
| 5️⃣   | Merge controlado para `main`                        |
| 6️⃣   | Build no FlutterFlow (Prod Environment)             |
| 7️⃣   | Publicação e monitoramento                          |

---

## 🧱 Dependências

* Flutter SDK 3.x
* Dart 3.x
* FlutterFlow 4.x (ambientes Dev/Prod)
* Firebase SDK (Firestore, Storage, Analytics)

---

## 🔐 Boas práticas de segurança

* Isolamento total entre projetos Firebase (Dev vs Prod)
* Nenhuma chave ou credencial de produção reutilizada no Dev
* Firestore Rules versionadas e equivalentes entre ambientes
* App Check:

  * Desativado no Dev (facilitar testes)
  * Ativado no Prod
* Logs e eventos auditáveis
* Dados anonimizados no Dev (LGPD)

---

## 🧠 Notas técnicas

* O app exibe **Corner Banner “Dev”** quando `buildEnv = dev`
* Eventos GA4 de Dev não contaminam métricas de produção
* DevMenu e QuickPanel disponíveis apenas em ambiente Dev

---

## 📅 Última atualização

**Autor:** @leomoraesitu

**Data:** 05/01/2026

**Status:** Documento revisado, expandido para múltiplos ambientes e alinhado às práticas de engenharia e segurança
