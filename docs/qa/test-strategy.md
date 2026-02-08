# Test Strategy — App Viagens (FlutterFlow + Firebase)

Versão alvo: **v1.1.0**  
Objetivo: validar o **mínimo essencial** antes de Release (sem GitHub Actions), com evidência versionada em `qa/test-evidence/`.

---

## 1) Escopo

### Em escopo (Release v1.1.0)
- **Autenticação**: criar conta, login e logout.
- **Controle de acesso**: usuário não autenticado não acessa páginas protegidas (Auth Guard).
- **Firestore Rules (Prod)**: operações bloqueadas sem autenticação.
- **Regressão UI**: SafeArea/Notch e navegação base.
- **Regressão CRUD**: criar/listar/editar/excluir (1 ciclo).

### Fora de escopo (neste ciclo)
- Performance tuning profundo, testes de carga, testes de acessibilidade completos.
- Testes E2E automatizados (substituídos por smoke manual curto).
- Compatibilidade ampla de devices (apenas 1 Android real + Web).

---

## 2) Tipos de teste

### 2.1 Automatizados (mínimo)
**Unit**
- `test/unit/environment/environment_values_test.dart`  
Objetivo: garantir consistência de valores/flags por ambiente (DEV/PROD).

**Widget**
- `test/widget/dev_menu/banner_host_test.dart`
- `test/widget/dev_menu/corner_banner_test.dart`
- `test/widget/dev_menu/router_devmenu_test.dart`

**Widget Auth Guard**
- `test/widget/auth/auth_guard_test.dart`  
Objetivo: validar redirecionamento/bloqueio de rota quando `auth == null`.

---

## 3) Smoke manual (obrigatório para Release)

### 3.1 Web (Chrome)
- Signup
- Login
- Logout
- Tentar acessar rota protegida sem login (deve bloquear/redirecionar)
- CRUD mínimo (1 ciclo)

### 3.2 Android (emulador ou device real)
- Login/Logout
- CRUD mínimo (1 ciclo)
- SafeArea: verificar header/footer sem sobreposição

### 3.3 Firestore Rules (Prod)
- Confirmar que leitura/escrita em coleção principal falha sem autenticação.
- Confirmar que usuário autenticado acessa apenas seus próprios dados (se aplicável).

---

## 4) Evidências e logs

### Automatizados
Salvar logs em:
- `qa/test-evidence/YYYY-MM-DD_environment_values_test.txt`
- `qa/test-evidence/YYYY-MM-DD_dev_menu_tests.txt`
- `qa/test-evidence/YYYY-MM-DD_automated_tests.txt` (opcional “all-in-one”)

### Manual
Salvar checklist preenchido em:
- `qa/test-evidence/YYYY-MM-DD_manual_qa_v1.1.0.md`

---

## 5) Critérios de aprovação (Go/No-Go)

**GO** se:
- Todos os testes automatizados essenciais passam.
- Smoke manual Web + Android passa.
- Firestore Rules (Prod) bloqueiam acesso sem auth e não permitem acesso indevido.
- Sem regressões críticas nas telas principais (navegação + SafeArea).

**NO-GO** se:
- Falha em Auth (signup/login/logout), rota protegida exposta, ou Rules permissivas.
- Crash/erro impeditivo em Web ou Android.
