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
        .package(name: "AgoraRtcKit", url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS.git", from: "4.1.0"),
        .package(name: "AWSiOSSDKV2", url: "https://github.com/aws-amplify/aws-sdk-ios-spm.git", from: "2.29.1"),
    ],
    targets: [
        .binaryTarget(
            name: "LiveBroadcastAPI",
            url: "https://firebasestorage.googleapis.com/v0/b/chatapplication-bceea.appspot.com/o/LiveBroadcastAPI.xcframework.zip?alt=media&token=470ab40c-f191-4d3f-851c-2838e97c8369",
            checksum: "6ad6f1f1c5388557bd72f1690294ea5a4bdfb6aa412b6648ec02d39fad2702e3"
        ),
        .binaryTarget(
            name: "LiveBroadcastUI",
            url: "https://firebasestorage.googleapis.com/v0/b/chatapplication-bceea.appspot.com/o/LiveBroadcastUI.xcframework.zip?alt=media&token=12a3f0e8-291b-4f8c-9b51-68bb30fc115c",
            checksum: "2bae1a4e1b0fa95f3bf04789a10567bd318f831b63594cc233fd0a9ca918f6bc"
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
            ],
            path: "Framework/Dependency",
            exclude: []
        ),
    ]
)
