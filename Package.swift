// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SporTotoSDKV1",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SporTotoSDKV1",
            targets: ["SporTotoSDKV1"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SporTotoSDKV1",
            url: "https://github.com/mindmons/SporTotoSDKV1/releases/download/v1.0.0/SporTotoSDKV1.xcframework.zip",
            checksum: "bc85d30cdfc9556b308576a2b0c9f9159c5e36fc94b8f7338ba9f9b7ea6170ac"
        )
    ]
)



