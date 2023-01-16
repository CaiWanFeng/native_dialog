import 'package:flutter_test/flutter_test.dart';
import 'package:native_dialog/native_dialog.dart';
import 'package:native_dialog/native_dialog_method_channel.dart';
import 'package:native_dialog/native_dialog_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNativeDialogPlatform
    with MockPlatformInterfaceMixin
    implements NativeDialogPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  void show() {
    // TODO: implement show
  }
}

void main() {
  final NativeDialogPlatform initialPlatform = NativeDialogPlatform.instance;

  test('$MethodChannelNativeDialog is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNativeDialog>());
  });

  test('getPlatformVersion', () async {
    NativeDialog nativeDialogPlugin = NativeDialog();
    MockNativeDialogPlatform fakePlatform = MockNativeDialogPlatform();
    NativeDialogPlatform.instance = fakePlatform;

    expect(await nativeDialogPlugin.getPlatformVersion(), '42');
  });
}
