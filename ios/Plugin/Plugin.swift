import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(Pay)
public class Pay: CAPPlugin {

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.success([
            "value": value,
            "haha":"这是xcode返回的数据：\(AlipaySDK.defaultService()?.currentVersion())"
        ])
    }
}
