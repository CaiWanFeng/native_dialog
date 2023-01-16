#import "NativeDialogPlugin.h"
#if __has_include(<native_dialog/native_dialog-Swift.h>)
#import <native_dialog/native_dialog-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "native_dialog-Swift.h"
#endif

@implementation NativeDialogPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativeDialogPlugin registerWithRegistrar:registrar];
}
@end
