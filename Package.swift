// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "RDDI",
    products: [
        .library(
            name: "RDDI",
            targets: ["RDDI"]),

        .library(
            name: "ApplicationContext",
            targets: ["ApplicationContext"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "RDDI",
            dependencies: ["ApplicationContext"]),
        .testTarget(
            name: "RDDITests",
            dependencies: ["RDDI"]),

        .target(
            name: "ApplicationContext",
            dependencies: []),
    ]
)
