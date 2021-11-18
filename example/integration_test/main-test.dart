import 'dart:io';
import 'package:easy_integration_testing/easy_integration_testing.dart';
import 'package:easy_integration_testing/integrational_tester.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:example/main.dart' as counter;

//for run test
//flutter build apk --flavor development
//flutter drive --driver=test_driver/integration_test.dart --target=integration_test/main-test.dart
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('All tests', (WidgetTester tester) async {
    IntegrationTestUtils.initTestApp();
    counter.main();
    IntegrationTestUtils.setTester(tester);
    await tester.pumpAndSettle(const Duration(seconds: 1));
    expect(find.text('0'), findsOneWidget);
    await tapKey('floating_button');
    expect(find.text('0'), findsNothing);
    sleep(Duration(seconds: 3));
  });
}
