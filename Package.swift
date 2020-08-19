// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "fluent-dynamodb",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "FluentDynamoDB",
            targets: ["FluentDynamoDB"])
    ],
    dependencies: [
        // *️⃣  ORM to integrate with Vapor
        .package(url: "https://github.com/vapor/fluent", from: "4.0.0"),

        // 💫 AWS Client Library
        .package(url: "https://github.com/swift-aws/aws-sdk-swift", from: "4.8.0"),
    ],
    targets: [
        .target(
            name: "FluentDynamoDB",
            dependencies: ["DynamoDB", "Fluent"]),
        .testTarget(
            name: "FluentDynamoDBTests",
            dependencies: ["FluentDynamoDB"])
    ]
)
