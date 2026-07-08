import 'package:flutter_test/flutter_test.dart';

import 'package:astr4l_flutter_pocket/app/app.dart';

void main() {
  testWidgets('Astr4lForge Pocket app starts', (WidgetTester tester) async {
    await tester.pumpWidget(const Astr4lForgePocketApp());

    expect(find.text('Astr4lForge Pocket'), findsOneWidget);
    expect(find.text('Builder'), findsOneWidget);
    expect(
      find.text('Créer une configuration de widget UI simple.'),
      findsOneWidget,
    );
    expect(find.text('Ouvrir la preview'), findsOneWidget);
  });
}