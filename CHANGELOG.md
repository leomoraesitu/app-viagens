# Changelog
Todas as mudanças notáveis neste projeto serão documentadas aqui.

O formato segue o padrão [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/)
e este projeto adota o versionamento [SemVer](https://semver.org/lang/pt-BR/).

---

## [1.1.1-planned] - Planejado (Hotfix / PATCH)
### Objetivo
Correções incrementais de **UI/UX, responsividade Web, performance percebida e segurança operacional**, com foco em estabilização pós-release, **sem introdução de novas funcionalidades**.

### Fixed
#### UI / UX & Web
- Ajuste de tamanho mínimo do container principal da `ListaViagensPage`.
- Inserção de `padding-right: 16` na `ListViewHorizontal` da `ListaViagensPage`.
- Correção de responsividade da lista de locais visitados.
- Ajustes de background e layout específicos para versão Web.

#### Performance & Experiência do Usuário
- Implementação de animação de loading na `ListViewLocation`
  (`novaViagemWizardPage`).
- Correção do delay perceptível no carregamento do botão
  `IconButtonNaoVisitado` na `DetalhesViagemPage` (FlutterFlow).

#### Segurança & Operação
- Implementação de **logging persistente de erros** no Firebase
  (`saveErrorLog`).
- Preparação para troubleshooting e análise de erros em produção.

> Status: Planejado — *hotfix corretivo (PATCH), sem impacto em backend, schema ou regras de segurança*

---

## [1.1.0] - 2025-11-20
### Added
- **Firebase Authentication (Email/Senha)**.
- Telas de:
  - Login
  - Cadastro
  - Logout
- Controle de acesso com **guards de rota**.
- Tela de **Perfil do Usuário**.
- Vínculo de viagens ao usuário autenticado (`userRef`).
- Upload de PDF.
- Integração com **Google Maps / Google Places**.
- Aplicação de **Firestore Security Rules**:
  - Ambiente Dev
  - Ambiente Production

### Changed
- Ajustes de navegação para fluxo autenticado / não autenticado.
- Preparação da base para multiusuário.

### Meta
- Consolidação de segurança e controle de acesso.
- Projeto preparado para usuários reais.

---

## [1.0.1] - 2025-11-05
### Fixed
- **[UI/UX][hotfix] SafeArea – ListaViagensPage**
  - Correção de sobreposição em dispositivos com notch.
  - Integração correta entre `SafeArea` e comportamento `Scrollable`.

- **[UI/UX][hotfix] SafeArea – DetalhesViagemWidget**
  - Correção de overflow superior e inferior.
  - Padronização de margens e espaçamentos.

- **[UI/UX][hotfix] SafeArea – EditarViagemWidget**
  - Correção de overflow superior e inferior.
  - Padronização de margens e espaçamentos.

- **[UI/UX][hotfix] Delay de carregamento**
  - Redução do delay perceptível no carregamento do
    `IconButtonNaoVisitado`.
  - Ajustes no tempo de renderização de widgets.
  - Pré-carregamento de imagens para melhor UX.

### Resultados
- UX mais fluida e previsível.
- Layout consistente entre Mobile e Web.
- Remoção de rolagens desnecessárias.

---

## [1.0.0] - 2025-10-14
### Added
- Estrutura inicial do projeto em **FlutterFlow**.
- Integração com **Firebase Firestore**.
- Telas principais:
  - `ListaViagens`
  - `DetalhesViagem`
  - `EditarViagem`
  - `NovaViagem`
- Navegação com **NavBar global**.
- Publicação da versão **Web**.
- Disponibilização de **APK Android**.

### Changed
- Ajustes iniciais de layout para Android.
- Light Mode forçado para consistência visual.
- Responsividade básica para Web e Mobile.

### Meta
- Commits seguindo **Conventional Commits**.
- Padrão de branches com **Feature Branch + Pull Request**.

---

## Links
- **Releases**: https://github.com/leomoraesitu/app-viagens/releases
- **v1.0.0**: https://github.com/leomoraesitu/app-viagens/releases/tag/v1.0.0
- **v1.0.1**: https://github.com/leomoraesitu/app-viagens/releases/tag/v1.0.1
- **v1.1.0**: https://github.com/leomoraesitu/app-viagens/releases/tag/v1.1.0
- **v1.1.1-planned**: https://github.com/leomoraesitu/app-viagens/releases/tag/v1.1.1-planned
