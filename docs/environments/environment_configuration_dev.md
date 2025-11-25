# 🌐 Environment Configuration – Dev

## 🧭 Overview
Este documento descreve a configuração do ambiente **Development (Dev)** do projeto **App Viagens**, desenvolvido em **FlutterFlow + Firebase**.  
O ambiente **Dev** é utilizado para testes, experimentação de novas features, validação de hotfixes e integração contínua antes da promoção para o ambiente **Production**.

---

## 🔧 Ambiente
| Item | Valor |
|------|--------|
| **Ambiente** | `Development` |
| **Branch associada** | `dev` / `hotfix/*` |
| **FlutterFlow Environment** | `Dev` |
| **Firebase Project ID** | `app-viagens-dev` |
| **GA4 Measurement ID** | `G-W4FBT3HRW` |
| **Status** | 🔧 Ativo – em uso para testes e homologação |

---

## 🔐 Variáveis de ambiente

| Variável | Descrição |
|-----------|------------|
| `buildEnv` | Define o ambiente atual de execução (`dev`) |
| `apiBaseUrl` | Endpoint base de testes (sem dados reais) |
| `firebaseProjectId` | ID do projeto Firebase de desenvolvimento |
| `ga4MeasurementId` | Measurement ID da propriedade GA4 (Web – Dev) |
| `featureFlagsJson` | Objeto JSON que habilita/desabilita recursos experimentais |
| `appName` | Nome exibido no app em ambiente de desenvolvimento |

---

## 🧩 Integrações externas
- **Cloud Firestore (Dev)** – Estrutura idêntica ao ambiente de produção, com dados anonimizados
- **Google Analytics 4 (GA4)** – Conectado à propriedade de **desenvolvimento** para rastreamento via DebugView  
- **Feature Flags** – Controladas via `feature_flags_json` (ex.: `"showDebugBanner": true`)

---

## ⚙️ Pipeline de Deploy
| Etapa | Descrição |
|-------|------------|
| 1️⃣ | Criação/atualização de branch `dev` ou `hotfix/*` |
| 2️⃣ | Build de teste no FlutterFlow (`Dev Environment`) |
| 3️⃣ | Validação de UI/UX e eventos GA4 em DebugView |
| 4️⃣ | Merge para `main` via FlutterFlow Version Control |

---

## 🧱 Dependências
- Flutter SDK 3.x  
- Firebase SDK (Firestore + Storage + Analytics)  
- Dart 3.x  
- FlutterFlow 4.x (ambientes Dev/Prod habilitados)

---

## 🧠 Notas técnicas
- `feature_flags_json` contém recursos experimentais:
  ```json
  {
    "showDebugBanner": true,
  }
  ```
- O app exibe um **Corner Banner “Dev”** sempre que `showDebugBanner = true`
- Os eventos GA4 são enviados apenas para o stream **AppViagens2 Web (Dev)**

---

## 🔐 Boas práticas de segurança
- Nenhuma chave ou dado de produção é reutilizado no Dev  
- Firestore Rules seguem o mesmo schema do Prod  
- App Check desativado no Dev (para permitir testes locais)  
- Dados sensíveis anonimizados para conformidade com LGPD  

---

## 📅 Última atualização
**Autor:** [@leomoraesitu](https://github.com/leomoraesitu)  
**Data:** 03/11/2025  
**Status:** ✅ Documento revisado e alinhado ao ambiente ativo do FlutterFlow
