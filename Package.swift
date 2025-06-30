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
            targets: ["TestSPM"]),
    ],
    //    dependencies: [
    //        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.6.4"))
    //    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TestSPM",
            dependencies: [
                // .product(name: "Alamofire", package: "Alamofire"),
                .target(name: "kooling_sdk_sample"),
            ]),
        .testTarget(
            name: "TestSPMTests",
            dependencies: ["TestSPM"]),
        .binaryTarget(
            name: "kooling_sdk_sample",
            path: "./Sources/kooling_sdk_sample.xcframework")
    ]
)
