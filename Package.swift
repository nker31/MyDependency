// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyDependencies",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MyDependencies",
            targets: ["NetworkDependencies",
                      "SecurityDependencies",
                      "UtilityDependencies",
                      "UIDependencies",
                      "LoggingDependencies",
                      "DatabaseDependencies",
                      "DevelopmentDependencies"
                     ]
        ),
        .library(
            name: "NetworkDependencies",
            targets: ["NetworkDependencies"]
        ),
        .library(
            name: "SecurityDependencies",
            targets: ["SecurityDependencies"]
        ),
        .library(
            name: "UtilityDependencies",
            targets: ["UtilityDependencies"]
        ),
        .library(
            name: "UIDependencies",
            targets: ["UIDependencies"]
        ),
        .library(
            name: "LoggingDependencies",
            targets: ["LoggingDependencies"]
        ),
        .library(
            name: "DatabaseDependencies",
            targets: ["DatabaseDependencies"]
        ),
        .library(
            name: "DevelopmentDependencies",
            targets: ["DevelopmentDependencies"]
        ),
    ],
    dependencies: [
        // Network
        .package(
            url: "https://github.com/Alamofire/Alamofire.git",
            .upToNextMajor(from: "5.10.0")
        ),
        .package(
            url: "https://github.com/onevcat/Kingfisher.git",
            from: "8.3.2"
        ),

        // Security
        .package(
            url: "https://github.com/krzyzanowskim/CryptoSwift.git",
            from: "1.8.3"
        ),
        .package(
            url: "https://github.com/evgenyneu/keychain-swift.git",
            from: "24.0.0"
        ),

        // Logging
        .package(
            url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git",
            from: "1.9.5"
        ),

        // UI
        .package(
            url: "https://github.com/scalessec/Toast-Swift.git",
            from: "5.1.1"
        ),
        .package(
            url: "https://github.com/airbnb/lottie-spm.git",
            from: "4.5.2"
        ),
        .package(
            url: "https://github.com/slackhq/PanModal.git",
            from: "1.2.7"
        ),
        .package(
            url: "https://github.com/Juanpe/SkeletonView.git",
            from: "1.30.4"
        ),
        .package(
            url: "https://github.com/ElaWorkshop/TagListView.git",
            from: "1.4.1"
        ),

        // Utility
        .package(
            url: "https://github.com/hackiftekhar/IQKeyboardManager.git",
            from: "6.5.16"
        ),
        .package(
            url: "https://github.com/ReactiveX/RxSwift.git",
            from: "6.8.0"
        ),
        .package(
            url: "https://github.com/pusher/pusher-websocket-swift.git",
            from: "10.1.1"
        ),
        
        // Database
        .package(
            url: "https://github.com/realm/realm-swift.git",
            from: "10.28.7"
        ),
        
        // Development
        .package(
            url: "https://github.com/kasketis/netfox",
            from: "1.21.0"
        ),
        
    ],
    targets: [
        .target(
            name: "MyDependencies",
            dependencies: [
                "NetworkDependencies",
                "SecurityDependencies",
                "UtilityDependencies",
                "UIDependencies",
                "LoggingDependencies",
                "DatabaseDependencies",
                "DevelopmentDependencies",
            ]
        ),
        .target(
            name: "NetworkDependencies",
            dependencies: [
                "Kingfisher",
                "Alamofire"
            ]
        ),
        .target(
            name: "SecurityDependencies",
            dependencies: [
                "CryptoSwift",
                .product(name: "KeychainSwift", package: "keychain-swift")
            ]
        ),
        .target(
            name: "LoggingDependencies",
            dependencies: [
                "SwiftyBeaver"
            ]
        ),
        .target(
            name: "UIDependencies",
            dependencies: [
                .product(name: "Toast", package: "Toast-Swift"),
                .product(name: "Lottie", package: "lottie-spm"),
                "PanModal",
                "SkeletonView",
                "TagListView"
            ]
        ),
        .target(
            name: "UtilityDependencies",
            dependencies: [
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                "RxSwift",
                .product(name: "PusherSwift", package: "pusher-websocket-swift")
            ]
        ),
        .target(
            name: "DatabaseDependencies",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-swift")
            ]
        ),
        .target(
            name: "DevelopmentDependencies",
            dependencies: [
                "netfox"
            ]
        )

    ]
)
