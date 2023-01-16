import Flutter
import UIKit

public class SwiftNativeDialogPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "native_dialog", binaryMessenger: registrar.messenger())
    let instance = SwiftNativeDialogPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
              case "show":
                  var alertView=UIAlertView(title:"这是 ios native 弹窗", message: "show", delegate: self, cancelButtonTitle: "OK")
                  alertView.show()
                  result(nil)
              default:
                  result(FlutterMethodNotImplemented)
         }
    }
}
