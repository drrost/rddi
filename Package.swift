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
        .package(
            name: "RDError",
            url: "git@github.com:drrost/swift-error.git",
            .exact("1.0.4")),
    ],
    targets: [
        .target(
            name: "RDDI",
            dependencies: ["RDError"]),
        .testTarget(
            name: "ExampleLibTests",
            dependencies: ["ExampleLib"]),

        .target(
            name: "ExampleLib",
            dependencies: ["RDDI"]),
    ]
)
