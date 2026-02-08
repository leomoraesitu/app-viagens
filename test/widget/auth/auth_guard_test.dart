// File: test/widget/auth/auth_guard_test.dart
//
// Objetivo (mínimo essencial):
// - Validar que uma rota/página "protegida" NÃO é exibida quando o usuário não está autenticado.
// - Validar que a rota/página "protegida" É exibida quando o usuário está autenticado.
//
// Observação importante (FlutterFlow):
// Como o FlutterFlow pode gerar navegação/roteamento próprios, este teste foi feito
// de forma "agnóstica" ao seu router real. Ele valida o comportamento de guard
// com um wrapper simples (_AuthGuard) que você pode reaproveitar/adaptar para o
// seu ponto real de entrada (ex.: antes de abrir MinhasViagensPage).

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Auth Guard (smoke)', () {
    testWidgets(
        'Quando NÃO autenticado, deve exibir LoginPage e NÃO exibir ProtectedPage',
        (tester) async {
      final auth = ValueNotifier<bool>(false);

      await tester.pumpWidget(_TestApp(auth: auth));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('login_page')), findsOneWidget);
      expect(find.byKey(const Key('protected_page')), findsNothing);
    });

    testWidgets(
        'Quando autenticado, deve exibir ProtectedPage e NÃO exibir LoginPage',
        (tester) async {
      final auth = ValueNotifier<bool>(true);

      await tester.pumpWidget(_TestApp(auth: auth));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('protected_page')), findsOneWidget);
      expect(find.byKey(const Key('login_page')), findsNothing);
    });

    testWidgets(
        'Quando alterna de NÃO autenticado -> autenticado, deve trocar LoginPage por ProtectedPage',
        (tester) async {
      final auth = ValueNotifier<bool>(false);

      await tester.pumpWidget(_TestApp(auth: auth));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('login_page')), findsOneWidget);
      expect(find.byKey(const Key('protected_page')), findsNothing);

      // Simula login
      auth.value = true;
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('protected_page')), findsOneWidget);
      expect(find.byKey(const Key('login_page')), findsNothing);
    });

    testWidgets(
        'Quando alterna de autenticado -> NÃO autenticado, deve trocar ProtectedPage por LoginPage',
        (tester) async {
      final auth = ValueNotifier<bool>(true);

      await tester.pumpWidget(_TestApp(auth: auth));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('protected_page')), findsOneWidget);
      expect(find.byKey(const Key('login_page')), findsNothing);

      // Simula logout
      auth.value = false;
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('login_page')), findsOneWidget);
      expect(find.byKey(const Key('protected_page')), findsNothing);
    });
  });
}

/// App de teste bem simples:
/// - Rota "/" é protegida via _AuthGuard
/// - Se não autenticado => LoginPage
/// - Se autenticado => ProtectedPage
class _TestApp extends StatelessWidget {
  const _TestApp({required this.auth});

  final ValueNotifier<bool> auth;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _AuthGuard(
        isSignedIn: auth,
        login: const _LoginPage(),
        protected: const _ProtectedPage(),
      ),
    );
  }
}

/// Guard mínimo, ideal para smoke test.
/// Você pode adaptar para usar FirebaseAuth.instance.authStateChanges()
/// (ex.: trocando ValueNotifier<bool> por Stream<User?>).
class _AuthGuard extends StatelessWidget {
  const _AuthGuard({
    required this.isSignedIn,
    required this.login,
    required this.protected,
  });

  final ValueListenable<bool> isSignedIn;
  final Widget login;
  final Widget protected;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isSignedIn,
      builder: (context, signedIn, _) {
        return signedIn ? protected : login;
      },
    );
  }
}

class _LoginPage extends StatelessWidget {
  const _LoginPage();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      key: Key('login_page'),
      body: Center(child: Text('Login')),
    );
  }
}

class _ProtectedPage extends StatelessWidget {
  const _ProtectedPage();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      key: Key('protected_page'),
      body: Center(child: Text('Protected')),
    );
  }
}
