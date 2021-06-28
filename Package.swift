// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TestDI",
    products: [
        .library(
            name: "TestDI",
            targets: ["TestDI"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "TestDI",
            dependencies: []),
        .testTarget(
            name: "TestDITests",
            dependencies: ["TestDI"]),
    ]
)
