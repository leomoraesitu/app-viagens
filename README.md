# AppViagens2

[![Release Version](https://img.shields.io/badge/release-v1.0.0-blue.svg)](https://github.com/leomoraesitu/app-viagens/releases/tag/v1.0.0)
[![Latest Pre-Release](https://img.shields.io/github/v/release/leomoraesitu/app-viagens?include_prereleases&sort=semver)](https://github.com/leomoraesitu/app-viagens/releases)
[![Changelog](https://img.shields.io/badge/📜%20Changelog-View%20history-orange)](./CHANGELOG.md)
![GitHub last commit](https://img.shields.io/github/last-commit/leomoraesitu/app-viagens)
![GitHub repo size](https://img.shields.io/github/repo-size/leomoraesitu/app-viagens)
![GitHub language count](https://img.shields.io/github/languages/count/leomoraesitu/app-viagens)
![GitHub top language](https://img.shields.io/github/languages/top/leomoraesitu/app-viagens)

## Getting Started

🌐 **Versão Web**: [(https://app-viagens-leomoraes.flutterflow.app)](https://app-viagens-leomoraes.flutterflow.app/)  
📱 **Baixar APK:** [Release v1.0.0](https://github.com/leomoraesitu/app-viagens/releases/tag/v1.0.0)  
📄 **Histórico de versões:** [CHANGELOG.md](./CHANGELOG.md)

---

## 📖 Sobre o projeto
O **App Viagens** foi desenvolvido durante o curso **Formação FlutterFlow** da [NoCode StartUp](https://nocodestartup.io/).  
O objetivo é aplicar princípios de **engenharia de software**, **versionamento de código**, **integração com Firebase** e **boas práticas de UI/UX** usando o framework Flutter.

O app permite:
- **Criar, listar, visualizar detalhes e editar** destinos de viagem
- **Favoritar** locais de interesse

---

## 📱 Demonstração das telas

| Home | Criar Viagem | Detalhes | Editar |  Versão Web  |
|--------------|--------------|--------------|--------------|--------------|
| ![Tela01](./screenshots/Tela01.gif) | ![Tela02](./screenshots/Tela02.gif) | ![Tela03](./screenshots/Tela03.gif) | ![Tela04](./screenshots/Tela04.gif) | ![Tela04](./screenshots/Tela05.gif) |

---

## ⚙️ Funcionalidades
- 📌 **CRUD** de roteiros de viagem  
- ⭐ **Favoritar destinos**  
- ☁️ **Integração com Firebase Firestore**  
- 🎨 Interface desenvolvida no **FlutterFlow** com customizações em **Dart**
- 🧩 **Feature Flags** configuradas via variável `feature_flags_json`  
- 🧭 **Ambientes isolados** (Dev e Production) para testes e homologação
   
---

## 🏗️ Arquitetura & Boas Práticas
- Uso de **App State** e **Data Types/Enums** no FlutterFlow  
- **Componentização** e reutilização de widgets  
- **Ambientes independentes** para Dev e Prod  
- **Corner Banner “Dev”** visível apenas quando `showDebugBanner = true`
  
---

## 💻 Tecnologias Utilizadas
![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)
![FlutterFlow](https://img.shields.io/badge/FlutterFlow-20232A?logo=flutter&logoColor=61DAFB)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?logo=firebase&logoColor=black)
![Google Analytics 4](https://img.shields.io/badge/GA4-Analytics-blueviolet)

---

## ▶️ Como executar localmente
1. Clone o repositório:
   ```bash
   git clone https://github.com/leomoraesitu/app-viagens.git
   cd app-viagens
    ````

2. Abra no **FlutterFlow** ou no **VS Code / Android Studio**.
3. Configure o **Firebase**:

   * Android → `android/app/google-services.json`
   * iOS → `ios/Runner/GoogleService-Info.plist`
   * **Importante:** não versione esses arquivos (adicione ao `.gitignore`).
4. Rode o app:

   ```bash
   flutter pub get
   flutter run
   ```

---

## 🌐 Configuração de Ambientes

📘 [Configuração do Ambiente de Produção](docs/environments/environment_configuration_production.md)\
🧪 [Configuração do Ambiente de Desenvolvimento (Dev)](docs/environments/environment_configuration_dev.md)

> Os arquivos de configuração descrevem as variáveis, integrações e boas práticas utilizadas em cada ambiente do App Viagens, incluindo estrutura do Firebase e GA4.  
> As chaves e tokens reais **não são versionados** — apenas os nomes e propósitos das variáveis.

---

## 🧩 Estrutura do Projeto

```
AppViagens2/
 ├─ .dart_tool/            → configs Dart programming language
 ├─ .github/               → configs GitHub
 │   ├─ CONTRIBUTING.md              → Guia de contribuição do App Viagens
 │   ├─ chore_pr.md                  → Chore Pull Request Template
 │   ├─ docs_pr.md                   → Docs Pull Request Template
 │   ├─ feature_pr.md                → Feat Pull Request Template  
 │   ├─ hotfix_pr.md                 → HotFix Pull Request Template
 │   └─ pull_request_template.md     → Pull Request Template
 ├─ android/               → configs Android
 ├─ assets/                → arquivos anexos ao projeto
 ├─ docs/                  → docs do projeto
 │   └─ environments/      → dir environments
 │       ├─ environment_configuration_production.md  → documentação de configuração do ambiente Production
         └─ environment_configuration_dev.md  → documentação de configuração do ambiente Dev
 ├─ firebase/              → configs Firebase
 ├─ ios/                   → configs iOS
 ├─ lib/
 │   ├─ backend/           → configs schema/firebase
 │   ├─ flutterflow/       → utilitários, tema, rotas
 │   ├─ pages/             → models / widgets
 │   ├─ shared_u_i/        → componentes reutilizáveis
 │   ├─ index.dart         → Export pages
 │   └─ main.dart          → ponto de entrada
 ├─ screenshots/           → GIFs de demonstração
 ├─ test/                  → dir Testes
 ├─ web/                   → configs Web
 ├─ .flutter-plugins       → configs Flutter
 ├─ .flutter-plugins-dependencies  → configs Flutter
 ├─ CHANGELOG.md           → histórico de mudanças notáveis neste projeto
 ├─ README.md              → infos gerais do projeto
 ├─ analysis_options.yaml  → infos analyzer
 └─ pubspec.yaml           → Flutter dependencies
```

---

## 📌 Roadmap

* [ ] Implementar autenticação com Login via **e-mail/senha** (Firebase Auth)
* [ ] Criar tela de **Perfil do Usuário**, com edição de nome e fotos (FlutterFlow/Firebase Firestore, Storage)
* [ ] Upload de PDF
* [ ] Integração com Google Maps

---

## 🗂️ Organização e Gestão de Projeto no Trello

O projeto **App Viagens** é gerenciado de forma estruturada através de um **quadro Trello**, organizado por colunas que refletem o fluxo de desenvolvimento ágil (Kanban/Scrum), facilitando o acompanhamento de features, hotfixes e documentação técnica.

### 📋 Estrutura do Quadro

| Coluna | Finalidade | Exemplo de cartões |
|:--------|:------------|:------------------|
| **Backlog do Produto** | Centraliza ideias, melhorias e hotfixes a serem priorizados. | `[UI/UX][hotfix] SafeArea ListaViagensPage`, `[UI/UX][feat] DevModePage` |
| **Planejamento da Sprint** | Etapa de preparação antes do desenvolvimento. | Seleção de tarefas para a próxima sprint. |
| **Em Desenvolvimento** | Tarefas em progresso, com subtarefas e checklist técnico. | `[DEV][chore] Criar Environment "Dev" no FlutterFlow` |
| **Em Revisão / Testes** | Cards aguardando homologação visual ou QA técnico. | Validação de hotfix e GA4 DebugView. |
| **Concluído** | Tarefas finalizadas e revisadas. | `[DEV][chore] Criar Environment "Production" no FlutterFlow` |
| **Releases / Deploys** | Versionamento e entregas Web/APK com controle de releases. | `Release v1.0.1 – Web + APK`, `Release v1.0.0 – Web + APK` |
| **Documentação / Referências** | Links e materiais de suporte ao projeto. | `[DOC] Links (Telas – FlutterFlow / Firebase Console / GA4 / GitHub)` |
| **Templates** | Modelos padronizados de cartões reutilizáveis. | `[UI/UX][feat] Tela 01 – Lista de Destinos`, `[DOC] README – prints e release notes` |

---

### 🧩 Convenções e Padrões de Cards

Cada cartão segue a convenção:
`[ÁREA][TIPO] Título da tarefa {Ferramenta/Contexto}`

| Prefixo | Significado |
|----------|--------------|
| `[UI/UX]` | Ajustes de interface, usabilidade e design responsivo |
| `[DEV]` | Implementações ou rotinas de backend / lógica FlutterFlow |
| `[FEAT]` | Novas funcionalidades |
| `[HOTFIX]` | Correções urgentes em produção |
| `[CHORE]` | Tarefas de manutenção ou ambiente |
| `[DOC]` | Documentação e registro técnico |
| `[SEC]` | Segurança da Informação |
| `[ARQ]` | Arquitetura e modelagem de dados |

---

### 🧠 Boas Práticas de Organização
- Cada card possui **checklist técnico**, **labels de status** e **responsável (LM)**.  
- As tarefas seguem **fluxo contínuo (Kanban)**: *Backlog → Dev → Testes → Concluído*.  
- Cards de **Documentação** e **Templates** mantêm o padrão de escrita de PRs e Readmes.  
- Releases são vinculadas a **branches específicas** e documentadas no GitHub.  
- Uso de **templates reutilizáveis** para garantir padronização das tarefas (ex.: descrição, critérios de aceitação, dependências).

---

### 🧭 Integração com o GitHub e FlutterFlow
- Cada tarefa do Trello está vinculada a um **branch ou PR** correspondente no GitHub.  
- O progresso no Trello reflete diretamente o estado das features e hotfixes do FlutterFlow.  
- Cards de release (`v1.0.0`, `v1.0.1`) incluem links para o **GitHub Release** e o **Deploy Web (FlutterFlow)**.

---

### 📌 Benefícios da Organização
- ✅ Rastreamento claro de progresso por sprint e por área técnica.  
- 🧩 Integração entre **desenvolvimento, QA e documentação**.  
- 🔄 Reuso de templates e checklists técnicos.  
- 🔐 Aderência às práticas de **Engenharia de Software e Segurança da Informação**.  

---

📎 **Quadro oficial:**  
🔗 [App Viagens – FlutterFlow + Firebase | Portfólio Eng. de Software (Trello)](https://trello.com)

---

## 🗺️ Releases

As versões são publicadas em **GitHub Releases**:
[https://github.com/leomoraesitu/app-viagens/releases](https://github.com/leomoraesitu/app-viagens/releases)

---

## 📜 Histórico de Versões

| Versão | Data | Principais mudanças | Link |
|:-------|:------:|:--------------------|:------|
| **v1.1.0-planned** | — | 🔄 Em desenvolvimento: autenticação por e-mail/senha, tela de perfil, upload de PDF e integração com Google Maps. | [Ver Release](https://github.com/leomoraesitu/app-viagens/releases/tag/v1.1.0-planned) |
| **v1.0.0** | 14/10/2025 | 🚀 Primeira release estável: CRUD de roteiros, favoritos, layout responsivo e versão web. | [Ver Release](https://github.com/leomoraesitu/app-viagens/releases/tag/v1.0.0) |

> 📄 Veja o histórico completo de alterações no arquivo [**CHANGELOG.md**](./CHANGELOG.md).

---

### 💡 Destaque

> Este projeto foi desenvolvido como **prova de conceito de portfólio**, evidenciando proficiência em **engenharia de software**, **boas práticas de versionamento**, **integração com Firebase** e **design orientado à experiência do usuário (UX)**.

---

## 🧑🏿‍💻 Autor

**Leonardo de Moraes Souza**
📍 Desenvolvedor FlutterFlow + Firebase | Análise e Desenvolvimento de Sistemas (FATEC Itu)

🔗 [Projeto portfólio - App Viagens](https://github.com/leomoraesitu/app-viagens.git)

🔗 [LinkedIn](https://www.linkedin.com/in/leomoraesitu)

---

## 🏁 Licença
Este projeto é de uso educacional e demonstrativo.  
© 2025 Leonardo de Moraes Souza – Todos os direitos reservados.
