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

## [1.0.0] - 2025-10-14
### Added
- Estrutura inicial do projeto em **FlutterFlow** com integração ao **Firebase Firestore**.
- Telas principais:
  - `ListaViagens` (lista dinâmica por usuário)
  - `DetalhesViagem`
  - `EditarViagem`
  - `NovaViagem` (formulário conectado ao Firestore)
- Navegação com **NavBar global** e arquitetura modularizada.
- Publicação da **versão Web** do app.
- **APK Android** disponibilizado no release.

### Changed
- Ajustes de layout para Android (hotfix de layout) e **Light Mode** forçado para consistência visual.
- Responsividade para Web e Mobile.

### Meta
- Commits seguindo **Conventional Commits** (feat, fix, config, hotfix, etc.).
- Padrão de branches com **Feature Branch + Pull Request Review**.

---

## Links

- **Releases**: https://github.com/leomoraesitu/AppViagens2/releases
- **[1.0.0]**: https://github.com/leomoraesitu/AppViagens2/releases/tag/v1.0.0
- **[1.1.0-planned]**: https://github.com/leomoraesitu/AppViagens2/releases/tag/v1.1.0-planned
