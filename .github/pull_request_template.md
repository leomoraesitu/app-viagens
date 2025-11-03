---
name: ✨ Default Pull Request Template
about: Template padrão para Pull Requests no repositório App Viagens.
title: "[TIPO] Título descritivo da alteração"
labels: ["to review"]
---

# 🧩 Descrição

Descreva brevemente **o que foi feito** nesta PR, incluindo o objetivo da mudança, impacto e contexto técnico.

> Exemplo:
> - Implementa nova tela **DetalhesViagem**
> - Corrige bug de sincronização no Firestore
> - Atualiza variável de ambiente no FlutterFlow (Production)

---

# 🔖 Tipo de mudança

Selecione o(s) tipo(s) de alteração que esta PR introduz:

- [ ] 🚀 **Feature** – Nova funcionalidade, tela ou recurso
- [ ] 🧯 **Hotfix** – Correção crítica em produção
- [ ] 🧱 **Refactor** – Melhoria de código sem alteração de comportamento
- [ ] ⚙️ **Chore / Config** – Tarefas de manutenção, build, CI/CD, ou ambiente
- [ ] 📖 **Docs** – Atualização de documentação, README ou templates
- [ ] 🧪 **Test** – Criação ou atualização de testes

---

# 🧭 Checklist antes do merge

- [ ] 🔍 Código revisado e formatado
- [ ] ✅ Build passou com sucesso (FlutterFlow / Firebase)
- [ ] 💾 Nenhum segredo ou chave sensível versionado
- [ ] 🧱 Commits seguem padrão **Conventional Commits**
- [ ] 🔄 Branch `flutterflow` atualizada com `main`
- [ ] 🧩 Documentação atualizada (quando aplicável)

---

# 🧪 Testes e validação

Descreva como foi testada a alteração e, se aplicável, insira capturas ou links de deploy.

> Exemplo:
> - Testado no ambiente **Production** (`app-viagens-leomoraes.flutterflow.app`)
> - Validação do Firestore Rules e Auth no Firebase
> - Teste manual de CRUD nas telas principais

---

# 🌐 Ambientes afetados

| Ambiente | Impacto | Observações |
|-----------|----------|-------------|
| **Dev** | [ ] Sim / [x] Não |  |
| **Production** | [ ] Sim / [x] Não |  |

---

# 📎 Referências e links úteis

Inclua referências de commits, issues, tasks ou documentação relacionadas:

> Exemplo:
> - Closes #123  
> - Relacionado a commit `chore(env): cria Environment "Production"`
> - [Configuração do Ambiente de Produção](docs/environments/environment_configuration_production.md)

---

# 👨‍💻 Responsável
**Autor:** @leomoraesitu  
**Data:** _(preenchida automaticamente pelo GitHub)_

---
