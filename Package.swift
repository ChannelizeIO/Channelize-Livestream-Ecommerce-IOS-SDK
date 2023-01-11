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
        .package(name: "SDWebImage", url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.13.4"),
        .package(name: "AgoraRtcKit", url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS.git", from: "4.1.0"),
        .package(name: "AWSiOSSDKV2", url: "https://github.com/aws-amplify/aws-sdk-ios-spm.git", from: "2.29.1"),
    ],
    targets: [
        .binaryTarget(
            name: "LiveBroadcastAPI",
            url: "https://firebasestorage.googleapis.com/v0/b/chatapplication-bceea.appspot.com/o/LiveBroadcastAPI.xcframework.zip?alt=media&token=89959ca2-b420-4750-b6da-37d2846d0160",
            checksum: "7635599b5b8fe69a8c49d6ad3a7e6bee465086686b0e60431216ecd303294c5d"
        ),
        .binaryTarget(
            name: "LiveBroadcastUI",
            url: "https://firebasestorage.googleapis.com/v0/b/chatapplication-bceea.appspot.com/o/LiveBroadcastUI.xcframework.zip?alt=media&token=01a1d8f7-a70b-46a0-ba05-74a7fb416fa7",
            checksum: "fe2b8886dc657d6c9c68ce90b0a0308324b344092cfd76eecbc8286aa198c971"
        ),
        .target(
            name: "ChannelizeLSCSDK",
            dependencies: [
                .target(name: "LiveBroadcastAPI"),
                .target(name: "LiveBroadcastUI"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "RtcBasic", package: "AgoraRtcKit"),
                .product(name: "VQA", package: "AgoraRtcKit"),
                .product(name: "SuperResolution", package: "AgoraRtcKit"),
                .product(name: "AWSIoT", package: "AWSiOSSDKV2"),
                .product(name: "AWSCore", package: "AWSiOSSDKV2"),
            ],
            path: "Framework/Dependency",
            exclude: []
        ),
    ]
)
