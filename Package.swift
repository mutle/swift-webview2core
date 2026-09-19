// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-webview2core",
    products: [
        .library(name: "WebView2Core", type: .dynamic, targets: ["WebView2Core"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/mutle/swift-cwinrt",
            revision: "a5988c9ec83d9ae1f1a4cd83051127f625ff60f7"
        ),
        .package(
            url: "https://github.com/mutle/swift-uwp",
            revision: "7aff869b2a6badeeaf82b9f68837f755995154e9"
        ),
        .package(
            url: "https://github.com/mutle/swift-windowsfoundation",
            revision: "a112318dc42f2031b18a7a2db5d03fc46f452449"
        ),
    ],
    targets: [
        .target(
            name: "WebView2Core",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "UWP", package: "swift-uwp"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
            ]
        ),
        .testTarget(
            name: "WebView2CoreTests",
            dependencies: ["WebView2Core"]
        )
    ]
)
