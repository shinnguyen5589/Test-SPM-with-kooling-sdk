// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Test-SPM-with-kooling-sdk",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Test-SPM-with-kooling-sdk",
            targets: ["Test-SPM-with-kooling-sdk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.6.4"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Test-SPM-with-kooling-sdk",
            dependencies: [
                "Alamofire"
            ]
        ),
        .testTarget(
            name: "Test-SPM-with-kooling-sdkTests",
            dependencies: ["Test-SPM-with-kooling-sdk"]),
        .binaryTarget(
            name: "Test-SPM-with-kooling-sdk",
            path: "./Sources/kooling_sdk_sample.xcframework")
    ]
)
