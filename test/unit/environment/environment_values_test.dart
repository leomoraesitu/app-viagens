import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:app_viagens2/environment_values.dart';

void main() {
  group('Environment Policy - FFDevEnvironmentValues', () {
    group('Policy: DEV (Ambiente de QA/Desenvolvimento)', () {
      late FFDevEnvironmentValues env;

      setUp(() {
        env = FFDevEnvironmentValues.test(
          buildEnv: 'dev',
          featureFlagsJson: jsonEncode({
            'showDebugBanner': true,
            'showDevMenuPage': true,
          }),
          appName: 'App Viagens Dev',
        );
      });

      test('deve identificar ambiente DEV (isDev=true, isProd=false)', () {
        expect(env.buildEnv, 'dev');
        expect(env.isDev, isTrue);
        expect(env.isProd, isFalse);
      });

      test('deve expor appName coerente com DEV', () {
        expect(env.appName, 'App Viagens Dev');
      });

      test(
        'politica DEV: pode habilitar DebugBanner e DevMenuPage (flags=true)',
        () {
          final flags = env.featureFlags;

          expect(flags['showDebugBanner'], isTrue);
          expect(flags['showDevMenuPage'], isTrue);

          // helpers (contrato de uso no app)
          expect(env.showDebugBanner, isTrue);
          expect(env.showDevMenuPage, isTrue);
        },
      );
    });

    group('Policy: PROD (Ambiente de Producao)', () {
      late FFDevEnvironmentValues env;

      setUp(() {
        env = FFDevEnvironmentValues.test(
          buildEnv: 'prod',
          featureFlagsJson: jsonEncode({
            'showDebugBanner': false,
            'showDevMenuPage': false,
          }),
          appName: 'App Viagens',
        );
      });

      test('deve identificar ambiente PROD (isProd=true, isDev=false)', () {
        expect(env.buildEnv, 'prod');
        expect(env.isProd, isTrue);
        expect(env.isDev, isFalse);
      });

      test(
        'politica de seguranca PROD: DebugBanner e DevMenuPage DEVEM estar desabilitados',
        () {
          final flags = env.featureFlags;

          // regra de segurança (anti-exposição de recursos internos)
          expect(flags['showDebugBanner'], isFalse);
          expect(flags['showDevMenuPage'], isFalse);

          // helpers (contrato de uso no app)
          expect(env.showDebugBanner, isFalse);
          expect(env.showDevMenuPage, isFalse);
        },
      );
    });

    group('Policy: Fail-safe (Erros / Fallback)', () {
      test(
        'politica fail-safe: featureFlagsJson invalido deve degradar para "tudo desabilitado"',
        () {
          final env = FFDevEnvironmentValues.test(
            buildEnv: 'dev',
            featureFlagsJson: '***nao-e-json-valido***',
            appName: 'App Viagens Dev',
          );

          final flags = env.featureFlags;

          // contrato: parser falhou -> mapa vazio
          expect(flags, isA<Map<String, dynamic>>());
          expect(flags, isEmpty);

          // política de segurança: por padrão, não habilitar nada
          expect(env.showDebugBanner, isFalse);
          expect(env.showDevMenuPage, isFalse);
        },
      );
    });
  });
}
