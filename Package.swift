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
        .package(name: "AWSiOSSDKV2", url: "https://github.com/aws-amplify/aws-sdk-ios-spm.git", from: "2.29.1"),
    ],
    targets: [
        .binaryTarget(
            name: "LiveBroadcastAPI",
            url: "https://github.com/ChannelizeIO/Channelize-Livestream-Ecommerce-IOS-SDK/releases/download/v1.3.0/LiveBroadcastAPI.xcframework.zip",
            checksum: "ea59e4c062311a85286f71a18d450b015404b2a52c13e33cbbade1832e816808"
        ),
        .binaryTarget(
            name: "LiveBroadcastUI",
            url: "https://github.com/ChannelizeIO/Channelize-Livestream-Ecommerce-IOS-SDK/releases/download/v1.3.0/LiveBroadcastUI.xcframework.zip",
            checksum: "db680ee5d3f336ee54ef84fafe3ecc80532e3f1aa6fa623fb9dce0072f089e18"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationExtension",
            url: "https://download.agora.io/swiftpm/AgoraRtcEngine_iOS/4.1.0/AgoraAiEchoCancellationExtension.xcframework.zip",
            checksum: "a23ef7a266bbf0fb9bb45dfa47edf0c14db17a06a253d5b4e4775e5f70fe5f12"
        ),
        .binaryTarget(
            name: "AgoraDav1d",
            url: "https://download.agora.io/swiftpm/AgoraRtcEngine_iOS/4.1.0/AgoraDav1d.xcframework.zip",
            checksum: "ed68179336ad2e1410e5a0bb4db00dcbd14d30601caa03d5c0086b895740094f"
        ),
         .binaryTarget(
            name: "AgoraDrmLoaderExtension",
            url: "https://download.agora.io/swiftpm/AgoraRtcEngine_iOS/4.1.0/AgoraDrmLoaderExtension.xcframework.zip",
            checksum: "46256bc8d6b5d662bb1bb7f5ab88059d7076e42edce3af9c1f000dc4e74e5313"
        ),
        .binaryTarget(
            name: "Agorafdkaac",
            url: "https://download.agora.io/swiftpm/AgoraRtcEngine_iOS/4.1.0/Agorafdkaac.xcframework.zip",
            checksum: "56dada9f7894557742cc153cf8b240397df6bbda29e6f8dcf325ed4f3ed650a4"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraRtcEngine_iOS/4.1.0/Agoraffmpeg.xcframework.zip",
            checksum: "aeb75bbe7a12370ce2e4774ae13bfe1d6cd19347039a9483820a0bdbe11088cf"
        ),
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraRtcEngine_iOS/4.1.0/AgoraRtcKit.xcframework.zip",
            checksum: "71f13c7df5b7ff22e1272a3efbe0a7982c8d5a3a5d53e9c1a9093170ea0372cc"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraRtcEngine_iOS/4.1.0/AgoraSoundTouch.xcframework.zip",
            checksum: "cdf7531aa768a8799134ed4f2762ffb25b25b4b17d285e6056398bf73c6d8fcf"
        ),
        .binaryTarget(
            name: "AgoraVideoQualityAnalyzerExtension",
            url: "https://download.agora.io/swiftpm/AgoraRtcEngine_iOS/4.1.0/AgoraVideoQualityAnalyzerExtension.xcframework.zip",
            checksum: "8462bb37c1b55eec9bbdbaef01fb3492969a09b87154cfd3ceb798bfc6b60bd9"
        ),
        .target(
            name: "ChannelizeLSCSDK",
            dependencies: [
                .target(name: "LiveBroadcastAPI"),
                .target(name: "LiveBroadcastUI"),
                .target(name: "AgoraAiEchoCancellationExtension"),
                .target(name: "AgoraDav1d"),
                .target(name: "AgoraDrmLoaderExtension"),
                .target(name: "Agorafdkaac"),
                .target(name: "Agoraffmpeg"),
                .target(name: "AgoraRtcKit"),
                .target(name: "AgoraSoundTouch"),
                .target(name: "AgoraVideoQualityAnalyzerExtension"),
                .product(name: "AWSIoT", package: "AWSiOSSDKV2"),
                .product(name: "AWSCore", package: "AWSiOSSDKV2"),
            ],
            path: "Framework/Dependency",
            exclude: []
        ),
    ]
)
