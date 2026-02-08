import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app_viagens2/custom_code/widgets/index.dart';
import 'package:app_viagens2/backend/schema/enums/enums.dart'; // CornerBannerPosition

void main() {
  group('CornerBanner - widget tests', () {
    
    testWidgets(
      'deve renderizar mensagem DEV no Banner interno',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            // opcional: desliga o debug banner pra reduzir ruído
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: CornerBanner(
                bannerPosition: CornerBannerPosition.topRight,
                bannerColor: Colors.red,
                bannerLabel: 'DEV',
                bannerTextColor: Colors.white,
                bannerFontSize: 11,
                bannerFontWeight: 700,
                expandHitAreaForTests: true,
              ),
            ),
          ),
        );

        await tester.pumpAndSettle();

        // 👇 pega SOMENTE o Banner que está dentro do CornerBanner
        final cornerBannerFinder = find.byType(CornerBanner);
        final bannerInsideCorner = find.descendant(
          of: cornerBannerFinder,
          matching: find.byType(Banner),
        );

        final bannerWidget = tester.widget<Banner>(bannerInsideCorner);
        expect(bannerWidget.message, 'DEV');
      },
    );
  });
}
