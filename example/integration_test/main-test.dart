// import 'dart:io';

// import 'package:flutter_test/flutter_test.dart';
// import 'package:integration_test/integration_test.dart';
// import 'package:easy/';

// //for run test
// //flutter build apk --flavor development
// //flutter drive --driver=test_driver/integration_test.dart --target=integration_test/main_phone.dart --flavor development
// void main() {
//   IntegrationTestWidgetsFlutterBinding.ensureInitialized();
//   testWidgets('All tests', (WidgetTester tester) async {
//     IntegrationTestUtils.initTestApp();
//     IntegrationTestUtils.setTester(tester);
//     await tester.pumpAndSettle(const Duration(seconds: 1));
//     await login.main();
//     await finance.main(tester);
//     await sale.main();
//     await income.main();
//     sleep(Duration(seconds: 3));
//   });
// }
