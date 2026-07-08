import 'package:flutter_test/flutter_test.dart';

import 'package:astr4l_flutter_pocket/main.dart';

void main() {
  testWidgets('Astr4lForge Pocket app starts', (WidgetTester tester) async {
    await tester.pumpWidget(const Astr4lPocketApp());

    expect(find.text('Astr4lForge Pocket'), findsOneWidget);
    expect(find.text('Compagnon mobile Astr4lForge'), findsOneWidget);
  });
}