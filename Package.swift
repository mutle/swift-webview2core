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
            revision: "e9db556eb47958cd904366647b1a45c831cbc38f"
        ),
        .package(
            url: "https://github.com/mutle/swift-uwp",
            revision: "9506997bbc759b168cf45a2022a22a2b4294d7c7"
        ),
        .package(
            url: "https://github.com/mutle/swift-windowsfoundation",
            revision: "04ba0d2f81c2cf137147de485619fa5a5d3ab974"
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
