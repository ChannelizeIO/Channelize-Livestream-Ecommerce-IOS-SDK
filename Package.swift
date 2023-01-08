// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "ChannelizeLSC",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ChannelizeLSC",
            targets: ["LiveBroadcastAPI", "LiveBroadcastUI"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/aws-amplify/aws-sdk-ios-spm.git", from: "2.29.1"),
        .package(url: "https://github.com/StyleShare/HLSCachingReverseProxyServer.git", from: "0.1.0"),
        .package(url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS.git", from: "4.1.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.13.4")
    ],
    targets: [
        .binaryTarget(
            name: "LiveBroadcastAPI",
            url: "https://raw.githubusercontent.com/ChannelizeIO/Channelize-Livestream-Ecommerce-IOS-SDK/framework_source/LiveBroadcastAPI.xcframework.zip",
            checksum: "5407b74f7919b3859dbe6028534ae6a8b2b6a33790a20455bb50460a124881d2"),
        .binaryTarget(
            name: "LiveBroadcastUI",
            url: "https://raw.githubusercontent.com/ChannelizeIO/Channelize-Livestream-Ecommerce-IOS-SDK/framework_source/LiveBroadcastUI.xcframework.zip",
            checksum: "743bc40646b52568a329da7c8d243f1774f95470ff4e4bd89d4826cea5a1b495")
    ]
)
