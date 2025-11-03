# 🌐 Environment Configuration – Production

## 🧭 Overview
Este documento descreve a configuração do ambiente **Production** do projeto **App Viagens**, desenvolvido em **FlutterFlow + Firebase**.

---

## 🔧 Ambiente
| Item | Valor |
|------|--------|
| **Ambiente** | `Production` |
| **Branch associada** | `main` |
| **FlutterFlow Environment** | `Production` |
| **Firebase Project ID** | `appviagens2-XXXXX` (oculto) |
| **GA4 Measurement ID** | `G-XXXXXXXXXX` (oculto) |

---

## 🔐 Variáveis de ambiente

| Variável | Descrição |
|-----------|------------|
| `buildEnv` | Indica execução em ambiente de produção |
| `apiBaseUrl` | Endpoint base da API principal |
| `firebaseProjectId` | ID do projeto Firebase de produção |
| `ga4MeasurementId` | ID do Google Analytics 4 |
| `featureFlagsJson` | Flag para habilitar o rastreamento de uso |
| `appName` | Nome do App em ambiente de produção |

---

## 🧩 Integrações externas
- **Cloud Firestore** – Dados de viagens, destinos e usuários  
- **Google Analytics 4 (GA4)** – Rastreamento de eventos customizados  

---

## ⚙️ Pipeline de Deploy
| Etapa | Descrição |
|-------|------------|
| 1️⃣ | Merge `flutterflow → main` via Pull Request |
| 2️⃣ | Build e export no VS Code (`Production Environment`) |
| 3️⃣ | Deploy Web via FlutterFlow Web Deployment |
| 4️⃣ | Geração do APK e publicação na Release `v1.0.x` |

---

## 🧱 Dependências
- Flutter SDK 3.x  
- Firebase SDK (Firestore)  
- Google Analytics 4 
- Dart 3.x  

---

## 📅 Última atualização
**Autor:** [@leomoraesitu](https://github.com/leomoraesitu)  
**Data:** 30/10/2025
