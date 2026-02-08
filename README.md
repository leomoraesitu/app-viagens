# App Viagens — FlutterFlow + Firebase

[![Release](https://img.shields.io/badge/release-v1.0.1-blue)](https://github.com/leomoraesitu/app-viagens/releases)
[![Changelog](https://img.shields.io/badge/📜%20Changelog-View-orange)](./CHANGELOG.md)
![Last Commit](https://img.shields.io/github/last-commit/leomoraesitu/app-viagens)

---

## 🚀 TL;DR Técnico

- FlutterFlow + Firebase
- Backend serverless com Cloud Functions
- APIs REST próprias (BFF)
- Ambientes Dev / Production isolados
- Autenticação e segurança aplicadas
- QA estruturado com evidências
- Versionamento SemVer + CHANGELOG
- Gestão de projeto por Sprints (Trello)

---

## 📖 Sobre o Projeto

O **App Viagens** é um projeto de **portfólio profissional**, desenvolvido para demonstrar **Engenharia de Software aplicada**, **Segurança da Informação**, **arquitetura backend**, **qualidade**, **governança de ambientes**, **versionamento** e **gestão de projeto**.

O foco do projeto não é apenas entregar funcionalidades, mas demonstrar **como o software é planejado, construído, protegido, versionado e evoluído** em um contexto próximo ao de um ambiente profissional.

---

## ⚙️ Funcionalidades Implementadas

### Produto
- CRUD completo de viagens
- Marcação de destinos visitados
- Perfil de usuário
- Persistência de dados com Firestore

### Engenharia & Plataforma
- Ambientes Dev / Production totalmente isolados
- Feature Flags por ambiente
- DevModePage exclusiva para engenharia e QA
- Scripts de automação para troca de ambiente
- Observabilidade com Google Analytics 4 (GA4)

### 🔐 Segurança (Sprint 4)
- Firebase Authentication (Email/Senha)
- Telas de Login, Cadastro e Logout
- Guards de rota (controle de acesso)
- Firestore Security Rules (Dev e Production)
- Vínculo de dados ao usuário autenticado
- Validação do fluxo em Web e Android

---

## 🔐 Marco Técnico — Autenticação e Segurança (Sprint 4)

A **Sprint 4** representa a transição do App Viagens de um aplicativo funcional para um **sistema seguro e controlado**, preparado para usuários reais.

- Controle de acesso por autenticação
- Bloqueio de leitura/escrita sem login
- Regras de segurança aplicadas em produção
- Base preparada para multiusuário e escala
- Preparação do Release **v1.1.0**

---

## 🔧 Backend, APIs e Cloud Functions

O App Viagens utiliza **Firebase Cloud Functions** como **camada de backend serverless**, expondo **APIs RESTful próprias** que atuam como intermediárias entre o aplicativo e serviços externos.

Essa arquitetura evita o consumo direto de APIs sensíveis no frontend e garante **segurança, controle e escalabilidade**.

### 🧩 Tipo de API
- API RESTful
- Comunicação via HTTP + JSON
- Arquitetura stateless
- Padrão Backend-for-Frontend (BFF)

### ☁️ Cloud Functions
- Backend serverless em Node.js
- Encapsulamento de lógica sensível
- Proteção de chaves de API via Secrets
- Validação de parâmetros de entrada
- Controle explícito de CORS
- Separação por ambiente (Dev / Prod)

### 🌐 Integrações com APIs do Google
- Google Places API (Autocomplete e Details)
- Google Maps Platform
- Google Analytics 4 (GA4)

As APIs do Google são acessadas **exclusivamente via backend**, garantindo:
- Proteção das chaves
- Controle de consumo
- Isolamento por ambiente
- Redução de riscos de segurança

---

## 🧪 Qualidade e QA

- Testes unitários e de widgets
- Validação de comportamento por ambiente
- Evidências de teste versionadas (logs)
- Estratégia de QA documentada

Estrutura:
```
docs/qa/
 ├─ test-strategy.md
 ├─ test-results.md
 └─ test-evidence/
```

---

## 📋 Gestão de Projetos (Trello)

O projeto foi desenvolvido com **gestão estruturada por Sprints**, utilizando **Trello** para planejamento, acompanhamento e governança.

- Planejamento por Sprint Goal
- Estimativas em Story Points (SP)
- Cards de Sprint com:
  - Escopo (inclui / não inclui)
  - Critérios de aceitação
  - Definition of Done (DoD)
  - Dependências técnicas
- Rastreabilidade entre:
  - Planejamento
  - Código
  - Release
  - Documentação

---

## 🧾 Versionamento e Governança

- Versionamento **Semantic Versioning (SemVer)**
- Releases publicadas via GitHub Releases
- Hotfixes versionados separadamente
- CHANGELOG seguindo **Keep a Changelog**
- Conventional Commits
- Integração entre Sprint, versão e documentação

Exemplos:
- `v1.0.0` — primeira release estável
- `v1.0.1` — hotfix
- `v1.1.0` — nova funcionalidade (Auth)

---

## 📈 Linha do Tempo Técnica

| Sprint | Foco | Resultado |
|------|------|----------|
| Sprint 1 | CRUD & UI | Base funcional |
| Sprint 2 | Ambientes | Governança |
| Sprint 3 | QA & Observabilidade | Maturidade |
| Sprint 4 | Auth & Segurança | Produção controlada |

---

## 🗺️ Roadmap

O roadmap atual do App Viagens está focado em **estabilização, refinamento de UI/UX, responsividade Web e segurança operacional**, priorizando a qualidade da experiência do usuário e a robustez do sistema.

### UI / UX & Web (Hotfixes)
- Ajuste de tamanho mínimo do container principal na `ListaViagensPage`
- Correção de padding horizontal na `ListViewHorizontal` da `ListaViagensPage`
- Melhoria de responsividade da lista de locais visitados
- Correção de background na versão Web
- Ajustes finos de layout entre Mobile e Web

### Performance & Experiência do Usuário
- Implementação de animação de loading na `ListViewLocation` (`novaViagemWizardPage`)
- Correção de delay no carregamento do botão `IconButtonNaoVisitado` na `DetalhesViagemPage`
- Melhoria da percepção de carregamento (loading states)

### Segurança & Operação
- Implementação de **logging persistente** no Firebase (`saveErrorLog`)
- Preparação para análise de erros e troubleshooting em produção

> O roadmap prioriza **hotfixes controlados**, mantendo estabilidade da versão publicada e alinhamento com o versionamento SemVer.

---

## 🌐 Acesso

- Web: https://app-viagens-leomoraes.flutterflow.app
- APK: GitHub Releases
- Histórico técnico: CHANGELOG.md

---

## 🧑🏿‍💻 Autor

**Leonardo de Moraes Souza**  
Desenvolvedor FlutterFlow + Firebase  
Tecnólogo em Análise e Desenvolvimento de Sistemas — FATEC Itu  

GitHub: https://github.com/leomoraesitu  
LinkedIn: https://www.linkedin.com/in/leomoraesitu  

---

## 🏁 Licença

Projeto educacional e demonstrativo.  
© 2025 Leonardo de Moraes Souza
