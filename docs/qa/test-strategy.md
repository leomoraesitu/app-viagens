# Test Strategy – App Viagens

## Tipos de teste
- Unit Tests (regras de negócio e políticas de ambiente)
- Widget Tests (UI, navegação e interação)
- Integration Tests (planejado – não obrigatório no MVP)

## Ambientes
- DEV: DebugBanner e DevMenu habilitados
- PROD: recursos de debug desabilitados (fail-safe)

## Critérios de aprovação
- Todos os testes devem passar
- Falhas de parsing ou config degradam para estado seguro
