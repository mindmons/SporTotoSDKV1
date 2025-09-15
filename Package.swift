// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SporTotoSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SporTotoSDK",
            targets: ["SporTotoSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SporTotoSDK",
            url: "https://github.com/mindmons/SporTotoSDKV1/releases/download/v1.0.0/SporTotoSDKV1.xcframework.zip",
            checksum: "7a5600b49f3386daad2a4aaab1244c09fc837364c89e496d642ba44d7f82f864"
        )
    ]
)

