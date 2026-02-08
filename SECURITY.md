# 🔐 Security Policy

Este documento descreve as **práticas de segurança**, **controles adotados** e o **modelo de governança** aplicados ao projeto **App Viagens**, desenvolvido em **FlutterFlow + Flutter + Firebase**.

O objetivo é reduzir a superfície de ataque, proteger dados de usuários e garantir conformidade com boas práticas de **Engenharia de Software** e **Segurança da Informação**.

---

## 🧭 Escopo

Este documento cobre:

* Segurança de código-fonte
* Gestão de segredos e credenciais
* Segurança por ambiente (Dev / Prod)
* Controles de acesso no Firebase
* Segurança de build e deploy
* Boas práticas para contribuidores

---

## 🔑 Gestão de Segredos

### Princípios

* Nenhuma chave sensível é versionada no repositório
* Credenciais reais nunca aparecem em commits ou templates
* Segredos são tratados como **dados confidenciais**

### Implementação

* Arquivos sensíveis são ignorados via `.gitignore`:

  * `google-services.json`
  * `GoogleService-Info.plist`
  * `environment.json`
  * `.env*`

* Templates `.example` são versionados apenas como referência

* Chaves de API (ex.: Google Maps) são injetadas por ambiente

### Rotação

* Qualquer chave exposta acidentalmente é considerada comprometida
* Rotação imediata é obrigatória
* Restrições por plataforma (Web / Android / iOS) são aplicadas sempre que possível

---

## 🧱 Isolamento de Ambientes

* Ambientes **Dev** e **Prod** utilizam projetos Firebase distintos
* Nenhuma credencial de produção é reutilizada no ambiente Dev
* Dados de Dev são fictícios ou anonimizados

---

## 🔐 Firebase Security

### Firestore Rules

* Regras versionadas no repositório
* Mesma semântica entre Dev e Prod
* Acesso baseado em autenticação e ownership

### Firebase Storage

* Controle de acesso por usuário autenticado
* Separação física por projeto Firebase

---

## 📊 Analytics e Telemetria

* GA4 separado por ambiente
* Eventos de Dev não contaminam métricas de Prod
* DebugView habilitado apenas no Dev
* Nenhum dado sensível é enviado como parâmetro de evento

---

## ⚙️ Segurança de Build e Deploy

* Builds de produção só utilizam configurações de produção
* Troca de ambientes é explícita e auditável
* Scripts automatizados evitam erro humano
* Revisão de código antes de merge em `main`

---

## 🧪 Testes e Qualidade

* Testes funcionais e de UI executados antes de releases
* Evidências de teste armazenadas fora do controle de versão
* Falhas de segurança bloqueiam o deploy

---

## 🧑‍💻 Contribuições

Se este repositório receber contribuições:

* Nunca inclua segredos em commits ou PRs
* Utilize apenas arquivos `.example`
* Qualquer suspeita de vazamento deve ser reportada imediatamente

---

## 🚨 Relato de Vulnerabilidades

Caso identifique uma vulnerabilidade:

* **Não** abra uma issue pública
* Entre em contato diretamente com o mantenedor do projeto

> 📧 Contato: [leonardo.moraes.dev@gmail.com](mailto:leonardo.moraes.dev@gmail.com) *(exemplo – ajuste se desejar)*

---

## 📅 Última atualização

**Autor:** Leonardo Moraes
**Data:** 08/02/2026
**Status:** Política de segurança ativa e alinhada às práticas de engenharia e segurança
