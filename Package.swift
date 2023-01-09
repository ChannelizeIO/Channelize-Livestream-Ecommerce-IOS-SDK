// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChannelizeLSC",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library( name: "ChannelizeLSC", targets: ["LiveBroadcastAPI", "LiveBroadcastUI"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "AgoraRtcKit", url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS.git", from: "4.1.0"),
        .package(name: "SDWebImage", url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.13.4")
    ],
    targets: [
        .binaryTarget(
            name: "LiveBroadcastAPI",
            url: "https://github.com/ChannelizeIO/Channelize-Livestream-Ecommerce-IOS-SDK/releases/download/2.0.1/LiveBroadcastAPI.xcframework.zip",
            checksum: "a04ffe38920698c411cdff119e82240b90b1aae12f93e076f9dc1337103b66db"
        ),
        .binaryTarget(
            name: "LiveBroadcastUI",
            url: "https://github.com/ChannelizeIO/Channelize-Livestream-Ecommerce-IOS-SDK/releases/download/2.0.1/LiveBroadcastUI.xcframework.zip",
            checksum: "6e4f93f0310357f05a0f0d03c594542ec730bd068641428119624151826b8141"
        ),
    ]
)
