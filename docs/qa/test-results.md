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

Data: 2026-02-08
Build/Commit: 6822fe2eeba22bfc8272323c447ad54a656ce460
Ambiente: DEV/PROD
Executado por: Léo Moraes

---

## 1) Resultado geral
Status: ✅ PASSOU

Resumo:
- Automatizados essenciais: ✅
- Smoke manual (Web): ✅
- Smoke manual (Android): ✅
- Firestore Rules (Prod): ✅

---

## 2) Evidências (logs)

### 2.1 Automatizados
- Suite completa  
  Evidência: `qa/test-evidence/2026-02-07_all_tests.txt` 
  Resultado: ✅

- Widget — Auth Guard
  Teste: `test/widget/auth/auth_guard_test.dart`  
  Evidência: `qa/test-evidence/2026-02-07_auth_guard_test.txt`
  Resultado: ✅

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

