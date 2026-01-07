import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app_viagens2/main.dart'; // BannerHost
import 'package:app_viagens2/custom_code/widgets/index.dart'; // CornerBanner

void main() {
  group('BannerHost - widget tests', () {
    testWidgets(
      'deve mostrar CornerBanner quando show = true',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: BannerHost(
              show: true,
              child: Scaffold(body: Text('Home')),
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(find.byType(CornerBanner), findsOneWidget);
      },
    );

    testWidgets(
      'nao deve mostrar CornerBanner quando show = false',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: BannerHost(
              show: false,
              child: Scaffold(body: Text('Home')),
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(find.byType(CornerBanner), findsNothing);
      },
    );

    testWidgets(
      'nao deve mostrar CornerBanner quando show = null (fallback)',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: BannerHost(
              show: null,
              child: Scaffold(body: Text('Home')),
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(find.byType(CornerBanner), findsNothing);
      },
    );
  });
}
