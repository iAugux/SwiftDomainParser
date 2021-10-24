// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "DomainParser",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_14),
    ],
    products: [
        .library(
            name: "DomainParser",
            targets: ["DomainParser"]
        ),
    ],
    targets: [
        .target(
            name: "DomainParser",
            resources: [
                .process("public_suffix_list.dat"),
            ]
        ),
        .testTarget(
            name: "DomainParserTests",
            dependencies: ["DomainParser"]
        ),
    ]
)
