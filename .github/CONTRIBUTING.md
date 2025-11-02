# 🧩 Guia de Contribuição — App Viagens (FlutterFlow + Firebase)

Obrigado por contribuir com o projeto **App Viagens**!  
Este documento explica o fluxo de contribuição, padrões de versionamento e boas práticas de engenharia utilizados neste repositório.

---

## 🧭 Objetivo do projeto

O **App Viagens** é um aplicativo desenvolvido em **FlutterFlow + Firebase**, com o objetivo de demonstrar proficiência em:

- Engenharia de software 
- Versionamento com Git e GitHub  
- Integração com Firebase (Auth, Firestore, Storage, GA4)  
- Boas práticas de arquitetura (MVVM / Clean UI)  
- Segurança da informação e gestão de ambientes (Dev / Prod)

---

## ⚙️ Estrutura de branches

| Branch | Finalidade | Ambiente |
|--------|-------------|-----------|
| `main` | Versão estável (produção) | **Production** |
| `FlutterFlow` | Código sincronizado automaticamente pelo FlutterFlow | **Sync** |
| `dev` | Testes e desenvolvimento contínuo | **Dev** |
| `feat/*` | Novas funcionalidades ou telas | — |
| `fix/*` | Correções de bugs | — |
| `chore/*` | Tarefas de manutenção, CI/CD, ambiente | — |

> 💡 Sempre crie **Pull Requests** de `FlutterFlow → main` ou `developer → main`.  
> Evite commits diretos na `main`.

---

## 🔖 Convenções de commit (Conventional Commits)

Use mensagens de commit semânticas e objetivas, no formato:

``<tipo>(<escopo>): <descrição curta>``

### Exemplos
``feat(scr): adiciona tela DetalhesViagem``

``fix(auth): corrige erro no login com Google``

``chore(env): cria e configura Environment "Production"``

``docs(readme): atualiza instruções de execução local``


### Tipos permitidos
| Tipo | Uso |
|------|-----|
| `feat` | Nova funcionalidade |
| `fix` | Correção de bug |
| `docs` | Documentação |
| `style` | Ajuste de estilo (sem impacto funcional) |
| `refactor` | Refatoração de código |
| `test` | Testes automatizados |
| `chore` | Manutenção, build, CI/CD, configurações |
| `perf` | Otimização de performance |
| `build` | Ajuste de dependências |
| `ci` | Configuração de workflows e pipelines |

---

## 🧱 Fluxo de desenvolvimento
### No FlutterFlow:

1. **Atualize a branch Developer com a main:**
    -  Version control: `Merge 'main' into 'Developer'`

2. **Crie uma branch:**   
    - Branch Name: `feat-nome-da-feature`
    - Parent Branch: `Developer`

3. **Implemente sua alteração**

4. **Faça commit seguindo o padrão:**
    - Version control -> Create Commit: `"feat(scr): adiciona tela NovaViagem"`

5. **Atualize a branch main com a Developer:**
    -  Version control: `Merge 'Developer' into 'main'`

6. **Envie para o GitHub:**
    -  Developer Menu: `Push to Repository`
    -  Git Commit Message: `"feat(scr): adiciona tela NovaViagem"`

### No GitHub:

7. **Abra uma Pull Request (PR) conforme o tipo de mudança.**

### 🔁 Criação de Pull Requests

Para garantir padronização, utilize os atalhos abaixo:

| Tipo | Quando usar | Link |
|------|--------------|------|
| 🚀 **Feature** | Nova funcionalidade, tela ou recurso | [Abrir PR de Feature](https://github.com/leomoraesitu/app-viagens/compare/main...FlutterFlow?quick_pull=1&template=feature_pr.md) |
| 🧯 **Hotfix** | Correção crítica em produção | [Abrir PR de Hotfix](https://github.com/leomoraesitu/app-viagens/compare/main...FlutterFlow?quick_pull=1&template=hotfix_pr.md) |
| 📖 **Docs** | Atualização de documentação | [Abrir PR de Documentação](https://github.com/leomoraesitu/app-viagens/compare/main...FlutterFlow?quick_pull=1&template=docs_pr.md) |
| ⚙️ **Chore/Config** | Ajustes de ambiente, dependências ou build | [Abrir PR de Chore/Config](https://github.com/leomoraesitu/app-viagens/compare/main...FlutterFlow?quick_pull=1&template=chore_pr.md) |

### Checklist antes do merge

 - ☑️ CI/CD passou com sucesso

 - ☑️ Commits seguem Conventional Commits

 - ☑️ Nenhum segredo ou chave sensível foi versionado

 - ☑️ Branch FlutterFlow está atualizada com main

 - ☑️ Documentação atualizada, se necessário

>🔹 Use Squash and Merge para manter o histórico limpo e sem commits automáticos do FlutterFlow.

---

## 🌐 Ambientes

| Ambiente             | Branch        | URL                                                                                    | Observações                   |
| -------------------- | ------------- | -------------------------------------------------------------------------------------- | ----------------------------- |
| **Production**       | `main`        | [app-viagens-leomoraes.flutterflow.app](https://app-viagens-leomoraes.flutterflow.app) | Firebase Prod                 |
| **Staging**          | `FlutterFlow` |                                                                                        | Código FlutterFlow atualizado |
| **Production**       | `main`        | FlutterFlow -> Environment "Production"                                                | Firebase Prod                 |
| **Dev**              | `Development` | FlutterFlow -> Environment "Dev"                                                       | Firebase Dev                  |

📘 Documentação de ambientes:
- [Configuração do Ambiente de Produção](docs/environments/environment_configuration_production.md)

---

## 🚀 Releases

- Versões seguem **SemVer** (`MAJOR.MINOR.PATCH`):

    - `MAJOR`: alterações incompatíveis
    
    - `MINOR`: novas features compatíveis
    
    - `PATCH`: correções de bug

- Exemplo: `v1.0.1` → “Correção de Bugs UX/UI”

Todas as versões publicadas em:
🔗 [GitHub Releases](https://github.com/leomoraesitu/app-viagens/releases)

---

## 👨‍💻 Autor

**Leonardo de Moraes Souza**

📍 Desenvolvedor FlutterFlow + Firebase

🎓 FATEC Itu — Análise e Desenvolvimento de Sistemas

🔗 [GitHub](https://github.com/leomoraesitu)

🔗 [LinkedIn](www.linkedin.com/in/leomoraesitu)

---

## 🏁 Licença

Este projeto é de uso **educacional e demonstrativo.**

© 2025 Leonardo de Moraes Souza – Todos os direitos reservados.
