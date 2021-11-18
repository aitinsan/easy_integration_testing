import 'package:easy_integration_testing/integrational_tester.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';




Future<void> tapKey(String valueKey) async {
  await IntegrationTestUtils.tester
      .tap(find.byKey(ValueKey(valueKey)).hitTestable());
  await IntegrationTestUtils.tester
      .pumpAndSettle(const Duration(milliseconds: 200));
}

Future<void> tapText(String text) async {
  await IntegrationTestUtils.tester.tap(find.text(text).hitTestable());
  await IntegrationTestUtils.tester
      .pumpAndSettle(const Duration(milliseconds: 200));
}

Future<void> tapWidget(Widget widget) async {
  await IntegrationTestUtils.tester.tap(find.byWidget(widget).hitTestable());
  await IntegrationTestUtils.tester.pumpAndSettle();
}

Future<void> tapType(Type type) async {
  await IntegrationTestUtils.tester.tap(find.byType(type).hitTestable());
  await IntegrationTestUtils.tester.pumpAndSettle();
}

Future<void> scrollUntilVisibleKey({
  @required String keyToFind,
  @required String keyToScroll,
  double dx = 0,
  double dy = 0,
}) async {
  await IntegrationTestUtils.tester.dragUntilVisible(
    find.byKey(ValueKey(keyToFind)),
    find.byKey(ValueKey(keyToScroll)),
    Offset(dx, dy),
  );
  await IntegrationTestUtils.tester
      .pumpAndSettle(const Duration(milliseconds: 200));
}

Future<void> enterText({
  @required String keyValue,
  @required String text,
}) async {
  await IntegrationTestUtils.tester
      .enterText(find.byKey(ValueKey(keyValue)), text);
  await IntegrationTestUtils.tester
      .pumpAndSettle(const Duration(milliseconds: 200));
}

Future<String> getText(String valueKey) async {
  return (find.byKey(ValueKey(valueKey)).evaluate().single.widget as Text).data;
}

Future<double> getDouble(String valueKey) async {
  return double.parse(
      (find.byKey(ValueKey(valueKey)).evaluate().single.widget as Text).data);
}
