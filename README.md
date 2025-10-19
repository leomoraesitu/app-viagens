# <img width="50" alt="logo" src="https://github.com/user-attachments/assets/58bdc581-b54c-477d-9de6-04fb0b50e7b7" />  App Viagens | FlutterFlow + Firebase  

[![Release Version](https://img.shields.io/badge/release-v1.0.0-blue.svg)](https://github.com/leomoraesitu/AppViagens2/releases/tag/v1.0.0)
[![Latest Release](https://img.shields.io/github/v/release/leomoraesitu/AppViagens2?include_prereleases)](https://github.com/leomoraesitu/AppViagens2/releases)
[![Changelog](https://img.shields.io/badge/📜%20Changelog-View%20history-orange)](./CHANGELOG.md)
![GitHub last commit](https://img.shields.io/github/last-commit/leomoraesitu/AppViagens2)
![GitHub repo size](https://img.shields.io/github/repo-size/leomoraesitu/AppViagens2)
![GitHub language count](https://img.shields.io/github/languages/count/leomoraesitu/AppViagens2)
![GitHub top language](https://img.shields.io/github/languages/top/leomoraesitu/AppViagens2)

> Aplicativo de viagens desenvolvido em **FlutterFlow + Firebase**.

🌐 **Versão Web**: [https://appviagens2.web.app](https://app-viagens-leomoraes.flutterflow.app/)  
📱 **Baixar APK:** [Release v1.0.0](https://github.com/leomoraesitu/AppViagens2/releases/tag/v1.0.0)  
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

---

## 🏗️ Arquitetura & Boas Práticas
- Uso de **App State** e **Data Types/Enums** no FlutterFlow  
- **Componentização** e reutilização de widgets  

---

## 💻 Tecnologias Utilizadas
![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)
![FlutterFlow](https://img.shields.io/badge/FlutterFlow-20232A?logo=flutter&logoColor=61DAFB)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?logo=firebase&logoColor=black)

---

## ▶️ Como executar localmente
1. Clone o repositório:
   ```bash
   git clone https://github.com/leomoraesitu/AppViagens2.git
   cd AppViagens2
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

## 🧩 Estrutura do Projeto

```
AppViagens2/
 ├─ lib/
 │   ├─ backend/           → configs schema/firebase
 │   ├─ flutterflow/       → utilitários, tema, rotas
 │   ├─ pages/             → models / widgets
 │   ├─ shared_u_i/        → componentes reutilizáveis
 │   ├─ index.dart         → Export pages
 │   └─ main.dart          → ponto de entrada
 ├─ screenshots/           → GIFs de demonstração
 ├─ CHANGELOG.md
 └─ README.md
```

---

## 📌 Roadmap

* [ ] Implementar autenticação com Login via **e-mail/senha** (Firebase Auth)
* [ ] Criar tela de **Perfil do Usuário**, com edição de nome e fotos (FlutterFlow/Firebase Firestore, Storage)
* [ ] Upload de PDF
* [ ] Integração com Google Maps

---

## 🗺️ Releases

As versões são publicadas em **GitHub Releases**:
[https://github.com/leomoraesitu/AppViagens2/releases](https://github.com/leomoraesitu/AppViagens2/releases)

---

## 📜 Histórico de Versões

| Versão | Data | Principais mudanças | Link |
|:-------|:------:|:--------------------|:------|
| **v1.1.0-planned** | — | 🔄 Em desenvolvimento: autenticação por e-mail/senha, tela de perfil, upload de PDF e integração com Google Maps. | [Ver Release](https://github.com/leomoraesitu/AppViagens2/releases/tag/v1.1.0-planned) |
| **v1.0.0** | 14/10/2025 | 🚀 Primeira release estável: CRUD de roteiros, favoritos, layout responsivo e versão web. | [Ver Release](https://github.com/leomoraesitu/AppViagens2/releases/tag/v1.0.0) |

> 📄 Veja o histórico completo de alterações no arquivo [**CHANGELOG.md**](./CHANGELOG.md).

---

### 💡 Destaque

> Este projeto foi desenvolvido como **prova de conceito de portfólio**, evidenciando proficiência em **engenharia de software**, **boas práticas de versionamento**, **integração com Firebase** e **design orientado à experiência do usuário (UX)**.

---

## 🧑🏿‍💻 Autor

**Leonardo de Moraes Souza**
📍 Desenvolvedor FlutterFlow + Firebase | Análise e Desenvolvimento de Sistemas (FATEC Itu)

🔗 [Portfólio](https://github.com/leomoraesitu)

🔗 [LinkedIn](https://www.linkedin.com/in/leomoraesitu)

---

## 🏁 Licença
Este projeto é de uso educacional e demonstrativo.  
© 2025 Leonardo de Moraes Souza – Todos os direitos reservados.
