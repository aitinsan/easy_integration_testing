import 'package:flutter_test/flutter_test.dart';

abstract class IntegrationTestUtils {
  static bool _hasSetTester = false;
  static WidgetTester _tester;

  static WidgetTester get tester => _tester;

  static initTestApp() {
    
  }

  static setTester(WidgetTester tester) {
    if (!_hasSetTester) {
      _tester = tester;
      _hasSetTester = true;
    }
  }
}
