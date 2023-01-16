import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'native_dialog_platform_interface.dart';

/// An implementation of [NativeDialogPlatform] that uses method channels.
class MethodChannelNativeDialog extends NativeDialogPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('native_dialog');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  void show() {
    methodChannel.invokeMethod('show');
  }
}
