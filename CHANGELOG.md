# Changelog
Todas as mudanças notáveis neste projeto serão documentadas aqui.

O formato segue o padrão [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/)
e este projeto adota o versionamento [SemVer](https://semver.org/lang/pt-BR/).

---

## [1.1.0-planned] - Em planejamento
### Added (planejado)
- Autenticação via e-mail/senha.
- Tela de Perfil do Usuário (edição de nome e foto).
- Verificação de e-mail e recuperação de senha (Firebase Auth).
- Upload de PDF.
- Integração com **Google Maps**.

> Status: Em desenvolvimento (release de planejamento)

---

## [1.0.1-planned] - Planejado (Novembro/2025)

### Objetivo
Correção de inconsistências visuais e estruturais em páginas principais do App Viagens relacionadas a carregamento, rolagem e comportamento de layout (`SafeArea`), garantindo uma experiência de usuário (UI/UX) mais fluida e responsiva em todos os dispositivos.

### Fixed
- **[UI_UX][hotfix] SafeArea – Scrollable ListaViagensPage**
  - Aplicação correta de `SafeArea` para evitar sobreposição de conteúdo em dispositivos com notch.
  - Integração adequada entre `SafeArea` e comportamento `Scrollable`.
  - Consistência visual entre `ListView` e elementos fixos, com rolagem suave.

- **[UI_UX][hotfix] SafeArea – DetalhesViagemWidget**
  - Correção de *overflow* superior e inferior.
  - Padronização de margens e espaçamentos.

- **[UI_UX][hotfix] SafeArea – EditarViagemWidget**
  - Correção de *overflow* superior e inferior.
  - Padronização de margens e espaçamentos.

- **[UI_UX][hotfix] Delay no carregamento de conteúdo**
  - Correção do *delay* perceptível no carregamento do widget `IconButtonNaoVisitado`.
  - Ajustes no tempo de renderização dos widgets.
  - Pré-carregamento de imagens para melhor percepção de performance.

### Resultados Esperados
- Carregamento sincronizado dos elementos da página.
- Uniformidade de margens, paddings e comportamento de `SafeArea`.
- Remoção de rolagens desnecessárias.
- UX mais limpa, previsível e consistente em diferentes resoluções.

> Status: Planejado (hotfix corretivo – sem impacto em schema ou backend)

---

## [1.0.0] - 2025-10-14
### Added
- Estrutura inicial do projeto em **FlutterFlow** com integração ao **Firebase Firestore**.
- Telas principais:
  - `ListaViagens`
  - `DetalhesViagem`
  - `EditarViagem`
  - `NovaViagem`
- Navegação com **NavBar global** e arquitetura modularizada.
- Publicação da versão **Web**.
- Disponibilização de **APK Android**.

### Changed
- Ajustes de layout para Android (hotfix).
- Light Mode forçado para consistência visual.
- Responsividade para Web e Mobile.

### Meta
- Commits seguindo **Conventional Commits**.
- Padrão de branches com **Feature Branch + Pull Request Review**.

---

## Links
- **Releases**: https://github.com/leomoraesitu/app-viagens/releases
- **[1.0.0]**: https://github.com/leomoraesitu/app-viagens/releases/tag/v1.0.0
- **[1.0.1-planned]**: https://github.com/leomoraesitu/app-viagens/releases/tag/v1.0.1-planned
- **[1.1.0-planned]**: https://github.com/leomoraesitu/app-viagens/releases/tag/v1.1.0-planned
