import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:native_dialog/native_dialog_method_channel.dart';

void main() {
  MethodChannelNativeDialog platform = MethodChannelNativeDialog();
  const MethodChannel channel = MethodChannel('native_dialog');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
