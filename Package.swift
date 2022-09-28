// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Call2Action",
    platforms: [
             .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Call2Action",
            targets: ["Call2Action"]),
    ],
    dependencies: [
        .package(url: "https://github.com/will-lumley/FaviconFinder.git", revision:  "3.2.1") ,
        .package(url: "https://github.com/kjoe07/accept-sdk-ios", revision:  "1.0.1"),
        .package(url: "https://github.com/kjoe07/ActivityIndicator", revision: "1.1.0"),
        .package(url: "https://github.com/kjoe07/ShortDatePicker", revision: "1.0.1"),
        .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "2.3.7")
    ],
    targets: [
        .binaryTarget(
            name: "Call2Action",
            path: "Sources/Call2Action.xcframework"
        )
    ]
)
