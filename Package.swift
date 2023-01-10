// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChannelizeLSC",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "ChannelizeLSC", targets: [
            "LiveBroadcastAPI", 
            "LiveBroadcastUI"
            ]
        ),
        .library(name: "ChannelizeRTC", targets: [
            "AgoraClearVisionExtension",
            "AgoraAiEchoCancellationExtension",
            "AgoraDav1d",
            "AgoraDrmLoaderExtension",
            "Agorafdkaac",
            "Agoraffmpeg",
            "AgoraRtcKit",
            "AgoraSoundTouch",
            "AgoraVideoQualityAnalyzerExtension"
            ]
        ),
    ],
    dependencies: [
        .package(name: "SDWebImage", url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.13.4")
    ],
    targets: [
        .binaryTarget(
            name: "LiveBroadcastAPI",
            url: "https://github.com/ChannelizeIO/Channelize-Livestream-Ecommerce-IOS-SDK/releases/download/v1.0.1/LiveBroadcastAPI.xcframework.zip",
            checksum: "c58751012f3257d782d54b7130cd804584e1459e9b7d2e0e522183d657cdc535"
        ),
        .binaryTarget(
            name: "LiveBroadcastUI",
            url: "https://github.com/ChannelizeIO/Channelize-Livestream-Ecommerce-IOS-SDK/releases/download/v1.0.1/LiveBroadcastUI.xcframework.zip",
            checksum: "2fe58f7963b3ab756638bf67e97543c2c93300f5eac33e0086568428cb1aab36"
        ),
        .binaryTarget(
            name: "AgoraAiEchoCancellationExtension",
            url: "https://download.agora.io/swiftpm/AgoraRtcEngine_iOS/4.1.0/AgoraAiEchoCancellationExtension.xcframework.zip",
            checksum: "a23ef7a266bbf0fb9bb45dfa47edf0c14db17a06a253d5b4e4775e5f70fe5f12"
        ),
        .binaryTarget(
            name: "AgoraClearVisionExtension",
            url: "https://download.agora.io/swiftpm/AgoraRtcEngine_iOS/4.1.0/AgoraClearVisionExtension.xcframework.zip",
            checksum: "271cc335cf2b68e9c16377f574aebc098d29a101ecdc3d57b7861016cde5ec2f"
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
    ]
)
