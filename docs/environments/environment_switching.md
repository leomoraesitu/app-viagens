# 🔄 Troca de Ambientes (Dev / Prod)

Este documento descreve o procedimento padrão para **troca de ambientes (Development / Production)** no projeto **App Viagens**, desenvolvido em **FlutterFlow + Flutter + Firebase**.

O objetivo é garantir **isolamento de ambientes**, **segurança de credenciais** e **previsibilidade de builds** para Web, Android e iOS.

---

## ⚙️ Troca de ambiente via FlutterFlow

1. Acessar o projeto no **FlutterFlow**

2. Selecionar o **Environment** desejado (`Dev` ou `Prod`)

3. Validar variáveis configuradas no ambiente:

   * `buildEnv`
   * `firebaseProjectId`
   * `featureFlagsJson`

4. Executar o **Build** correspondente

> 🔎 Observação: o ambiente selecionado no FlutterFlow define automaticamente o projeto Firebase associado e as variáveis de runtime.

---

## 🧪 Troca de ambiente via VS Code (Local)

A troca de ambiente local é realizada por meio de **templates versionados** e **scripts automatizados**, evitando a exposição de segredos no repositório.

---

## 📁 Estrutura de Templates

Diretório raiz:

```
/env-templates
```

Arquivos versionados (`.example`):

* `firebase_dev.json.example`
* `firebase_prod.json.example`
* `index.dev.html.example`
* `index.prod.html.example`

> ⚠️ Os arquivos `.example` **não contêm chaves reais** e servem apenas como modelo.

Os arquivos reais (não versionados) devem ser preenchidos localmente a partir desses templates.

---

## 🤖 Android

### Estrutura de flavors

Criar os diretórios:

```
android/app/src/dev
android/app/src/prod
```

Em cada diretório, adicionar o respectivo arquivo **não versionado**:

```
google-services.json
```

> 🔐 Esses arquivos são específicos de cada projeto Firebase e **nunca devem ser commitados**.

---

## 🍎 iOS

Diretório:

```
ios/Runner
```

Arquivos por ambiente (não versionados):

* `GoogleService-Info-Dev.plist`
* `GoogleService-Info-Prod.plist`

> 📌 Os arquivos `.plist.example` correspondentes são versionados apenas como referência.

---

## ⚙️ Scripts de troca de ambiente

Os scripts automatizam a cópia dos arquivos corretos e a configuração do ambiente ativo.

### Ativar ambiente **PROD**

```powershell
./scripts/set-env-prod.ps1
```

### Ativar ambiente **DEV**

```powershell
./scripts/set-env-dev.ps1
```

> ✅ Esses scripts garantem consistência entre Web, Android e iOS durante o desenvolvimento local.

---

## ▶️ Execução da aplicação

### Web

```powershell
flutter run -d chrome
```

### Android / iOS – Production

```powershell
flutter run --flavor prod -t lib/main.dart
```

### Android / iOS – Development

```powershell
flutter run --flavor dev -t lib/main.dart
```

---

## 🔐 Considerações de Segurança

* Nenhuma credencial sensível é versionada no repositório
* Cada ambiente utiliza um **projeto Firebase distinto**
* Templates `.example` evitam vazamento de chaves
* A troca de ambiente é **explícita e rastreável**
* Builds de produção só utilizam configurações de produção

---

## 📅 Última atualização

**Autor:** Leonardo Moraes
**Data:** 08/02/2026
**Status:** Documento revisado e alinhado às práticas de engenharia e segurança
