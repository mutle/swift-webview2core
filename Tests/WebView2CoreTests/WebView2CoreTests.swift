import XCTest
import WebView2Core

final class WebView2CoreTests: XCTestCase {
    func testModuleImports() {}

    #if os(Windows)
    func testWindowsAPISurfaceCompiles() {
        let _: CoreWebView2.Type = CoreWebView2.self
        let _: CoreWebView2Controller.Type = CoreWebView2Controller.self
        let _: CoreWebView2Environment.Type = CoreWebView2Environment.self
        let _: CoreWebView2Settings.Type = CoreWebView2Settings.self
    }
    #endif
}
