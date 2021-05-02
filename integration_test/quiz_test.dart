import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:quizzler/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('answers question correctly - true button',
        (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      // Finds the true button to tap on.
      final Finder trueBtn = find.byKey(Key('true'));

      // Emulate a tap on the floating action button.
      await tester.tap(trueBtn);

      await tester.pumpAndSettle();

      expect(find.byKey(Key('trueIcon')), findsOneWidget);
    });

    testWidgets('answers  question incorrectly - true button',
        (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      // Finds the true button to tap on.
      final Finder trueBtn = find.byKey(Key('true'));

      // Emulate a tap on the floating action button.
      await tester.tap(trueBtn);

      await tester.pumpAndSettle();

      expect(find.byKey(Key('falseIcon')), findsOneWidget);
    });

    testWidgets('answers question correctly - false button',
        (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      // Finds the true button to tap on.
      final Finder trueBtn = find.byKey(Key('false'));

      // Emulate a tap on the floating action button.
      await tester.tap(trueBtn);

      await tester.pumpAndSettle();

      expect(find.byKey(Key('trueIcon')), findsOneWidget);
    });

    testWidgets('answers  question incorrectly - false button',
        (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      // Finds the true button to tap on.
      final Finder trueBtn = find.byKey(Key('false'));

      // Emulate a tap on the floating action button.
      await tester.tap(trueBtn);

      await tester.pumpAndSettle();

      expect(find.byKey(Key('falseIcon')), findsOneWidget);
    });
  });
}
