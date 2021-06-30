// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "RDDI",
    products: [
        .library(
            name: "RDDI",
            targets: ["RDDI"]),
        .library(
            name: "ExampleLib",
            targets: ["ExampleLib"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "RDDI",
            dependencies: []),
        .testTarget(
            name: "ExampleLibTests",
            dependencies: ["ExampleLib"]),

        .target(
            name: "ExampleLib",
            dependencies: ["RDDI"]),
    ]
)
