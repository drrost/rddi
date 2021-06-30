// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TestDI",
    products: [
        .library(
            name: "TestDI",
            targets: ["TestDI"]),

        .library(
            name: "ApplicationContext",
            targets: ["ApplicationContext"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "TestDI",
            dependencies: ["ApplicationContext"]),
        .testTarget(
            name: "TestDITests",
            dependencies: ["TestDI"]),

        .target(
            name: "ApplicationContext",
            dependencies: []),
    ]
)
