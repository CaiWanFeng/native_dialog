import 'native_dialog_platform_interface.dart';

class NativeDialog {
  Future<String?> getPlatformVersion() {
    return NativeDialogPlatform.instance.getPlatformVersion();
  }

  static void show() {
    return NativeDialogPlatform.instance.show();
  }
}
