// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChannelizeLSC",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "ChannelizeLSC", targets: ["ChannelizeLSCSDK"]
        ),
    ],
    dependencies: [
        .package(name: "Kingfisher", url: "https://github.com/onevcat/Kingfisher.git", from: "7.5.0"),
        .package(name: "AgoraRtcKit", url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS.git", from: "4.1.0"),
        .package(name: "AWSiOSSDKV2", url: "https://github.com/aws-amplify/aws-sdk-ios-spm.git", from: "2.29.1"),
    ],
    targets: [
        .binaryTarget(
            name: "LiveBroadcastAPI",
            url: "https://firebasestorage.googleapis.com/v0/b/chatapplication-bceea.appspot.com/o/LiveBroadcastAPI.xcframework.zip?alt=media&token=42c9676f-d20e-4dbd-82e0-4f8ab91dbb51",
            checksum: "e72d1520d6e9286c54de90bb7810aae65c5f043ff74d275a9fa28f049667ca79"
        ),
        .binaryTarget(
            name: "LiveBroadcastUI",
            url: "https://firebasestorage.googleapis.com/v0/b/chatapplication-bceea.appspot.com/o/LiveBroadcastUI.xcframework.zip?alt=media&token=8c531de1-6679-4f55-ae99-78bff0a62945",
            checksum: "30ab720242bf722068874d40a2fce3f9e6e66f31621f2551c79ccbc269685570"
        ),
        .target(
            name: "ChannelizeLSCSDK",
            dependencies: [
                .target(name: "LiveBroadcastAPI"),
                .target(name: "LiveBroadcastUI"),
                .product(name: "AWSIoT", package: "AWSiOSSDKV2"),
                .product(name: "AWSCore", package: "AWSiOSSDKV2"),
                .product(name: "RtcBasic", package: "AgoraRtcKit"),
                .product(name: "VQA", package: "AgoraRtcKit"),
                .product(name: "ClearVision", package: "AgoraRtcKit"),
                .product(name: "AIAEC", package: "AgoraRtcKit"),
                .product(name: "DRM", package: "AgoraRtcKit"),
                .product(name: "Kingfisher", package: "Kingfisher"),
            ],
            path: "Framework/Dependency",
            exclude: []
        ),
    ]
)
