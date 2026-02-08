# Test Results – Sprint DEV Menu

## Data
01/05/2025

## Escopo testado
- Environment Policy (DEV/PROD)
- Feature Flags
- CornerBanner
- DevMenu Navigation (Widget)

## Resultado
✅ 100% aprovado  
🧪 Total: 12 testes  
❌ Falhas: 0  

## Observações
- Integração Firebase mockada nos testes
- Testes de integração completos foram descartados por custo/benefício

---
<br/>
<br/>

# Test Results — Release v1.1.0

Data: YYYY-MM-DD  
Build/Commit: `<hash-do-commit>` (preencher)  
Ambiente: DEV/PROD (preencher)  
Executado por: Léo Moraes

---

## 1) Resultado geral
Status: ✅ PASSOU / ❌ FALHOU (marcar)

Resumo:
- Automatizados essenciais: ✅/❌
- Smoke manual (Web): ✅/❌
- Smoke manual (Android): ✅/❌
- Firestore Rules (Prod): ✅/❌

---

## 2) Evidências (logs)

### 2.1 Automatizados
- Unit — Environment Values  
  Teste: `test/unit/environment/environment_values_test.dart`  
  Evidência: `qa/test-evidence/YYYY-MM-DD_environment_values_test.txt`  
  Resultado: ✅/❌

- Widget — Dev Menu  
  Testes: `test/widget/dev_menu/`  
  Evidência: `qa/test-evidence/YYYY-MM-DD_dev_menu_tests.txt`  
  Resultado: ✅/❌

- (Opcional) Suite completa  
  Evidência: `qa/test-evidence/YYYY-MM-DD_automated_tests.txt`  
  Resultado: ✅/❌

- (Recomendado v1.1.0) Widget — Auth Guard  
  Teste: `test/widget/auth/auth_guard_test.dart`  
  Evidência: `qa/test-evidence/YYYY-MM-DD_auth_guard_test.txt` (se você gerar)  
  Resultado: ✅/❌

---

## 3) Smoke manual (checklist)

Evidência: `qa/test-evidence/2026-02-06_manual_qa_v1.1.0.md`

### 3.1 Web (Chrome)
- [x] Signup
- [x] Login
- [x] Logout
- [x] Bloqueio/redirecionamento sem login (rota protegida)
- [x] CRUD mínimo (1 ciclo)

### 3.2 Android
- [x] Login
- [x] Logout
- [x] CRUD mínimo (1 ciclo)
- [x] SafeArea OK (sem sobreposição)

### 3.3 Firestore Rules (Prod)
- [x] Sem autenticação: leitura/escrita bloqueadas
- [x] Com autenticação: acesso permitido somente ao necessário (e dados próprios, se aplicável)

---

## 4) Observações / riscos
- Warnings relevantes:
  - Nenhum
- Itens conhecidos / débitos técnicos:
  - Nenhum

---

## 5) Decisão de release
- [x] GO — Pode publicar tag `v1.1.0`
- [ ] NO-GO — Bloquear release e abrir correção

Responsável: Léo Moraes

