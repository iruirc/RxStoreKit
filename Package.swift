// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxStoreKit",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "RxStoreKit",
            type: .dynamic,
            targets: ["RxStoreKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/iruirc/RxSwift.git", from: "6.7.100"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "RxStoreKit",
            dependencies: [
                .product(name: "RxAll-Dynamic", package: "RxSwift"),
            ]),
        .testTarget(
            name: "RxStoreKitTests",
            dependencies: ["RxStoreKit"]),
    ]
)
