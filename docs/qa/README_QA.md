# 🧪 Geração de Evidências de Teste (QA)

Este documento descreve o procedimento padrão para **execução de testes automatizados** e **geração de evidências de teste** no projeto **App Viagens**.

As evidências geradas são utilizadas para **validação funcional**, **rastreabilidade de qualidade**, **auditoria técnica** e **suporte a Pull Requests e releases**.

---

## 📁 Diretório de evidências

As evidências de teste são armazenadas localmente em:

```
docs/qa/test-evidence/
```

> 🔐 Observação: arquivos de evidência **não são versionados** no repositório, conforme definido no `.gitignore`.

---

## ▶️ Execução de todos os testes

Executa **todos os testes** do projeto (unitários + widgets):

```powershell
flutter test test |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_all_tests.txt
```

---

## 🧩 Testes Unitários

Executa apenas os **testes unitários**:

```powershell
flutter test test/unit |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_unit_tests.txt
```

### 🔧 Environment Tests

Testes relacionados à validação de variáveis e configuração de ambiente:

```powershell
flutter test test/unit/environment |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_environment_values_test.txt
```

---

## 🖼️ Testes de Widget

Executa testes de **widgets e componentes de UI**:

```powershell
flutter test test/widget |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_widget_tests.txt
```

### 🛠️ Dev Menu Tests

Testes específicos do **Dev Menu** e componentes de debug:

```powershell
flutter test test/widget/dev_menu |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_dev_menu_tests.txt
```

### 🔐 Auth Guard Tests

Testes de **proteção de rota/página (Auth Guard)**. Este conjunto valida o comportamento mínimo essencial de acesso:

* Não autenticado → exibe `LoginPage` e **não** exibe `ProtectedPage`
* Autenticado → exibe `ProtectedPage` e **não** exibe `LoginPage`
* Alternância de estado (login/logout) troca a página exibida

> 📌 Implementação: `test/widget/auth/auth_guard_test.dart` (guard agnóstico ao router do FlutterFlow, usando um wrapper simples `_AuthGuard`).

Executar apenas os testes de Auth Guard:

```powershell
flutter test test/widget/auth |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_auth_guard_tests.txt
```

Executar somente o arquivo específico:

```powershell
flutter test test/widget/auth/auth_guard_test.dart |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_auth_guard_test.txt
```

---

## 📌 Boas práticas

* Substitua `AAAA-MM-DD` pela data de execução dos testes
* Execute testes antes de:

  * Merge em `main`
  * Criação de Pull Requests
  * Releases
* Mantenha as evidências organizadas por data
* Utilize as evidências como anexo em PRs ou cartões de QA

---

## 📅 Última atualização

**Autor:** Leonardo Moraes
**Data:** 05/01/2026
**Status:** Procedimento de QA definido e operacional
