@Skip('Depende de Firebase.initializeApp; manter como spec ate ter mock de Firebase para testes.')
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:app_viagens2/flutter_flow/nav/nav.dart';
import 'package:app_viagens2/index.dart'; // DevMenuPageWidget
import 'package:go_router/go_router.dart';

void main() {
  group('Router DevMenu - widget tests', () {
    testWidgets(
      'goNamed(DevMenuPageWidget.routeName) deve navegar para DevMenuPageWidget',
      (WidgetTester tester) async {
        final appStateNotifier = AppStateNotifier.instance;
        final router = createRouter(appStateNotifier);

        await tester.pumpWidget(
          MaterialApp.router(
            routerConfig: router,
          ),
        );

        await tester.pumpAndSettle();

        expect(find.byType(DevMenuPageWidget), findsNothing);

        final ctx = appNavigatorKey.currentContext;
        expect(ctx, isNotNull);

        ctx!.goNamed(DevMenuPageWidget.routeName);
        await tester.pumpAndSettle();

        expect(find.byType(DevMenuPageWidget), findsOneWidget);
      },
    );
  });
}
