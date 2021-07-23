// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NetworkingLoggerPlugin",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "NetworkingLoggerPlugin",
            targets: ["NetworkingLoggerPlugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pprokopowicz/Networking.git", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "NetworkingLoggerPlugin",
            dependencies: [
                .product(name: "NetworkingBinary", package: "Networking")
            ]),
        .testTarget(
            name: "NetworkingLoggerPluginTests",
            dependencies: ["NetworkingLoggerPlugin"]),
    ]
)
