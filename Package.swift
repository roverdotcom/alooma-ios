// swift-tools-version:5.9
import PackageDescription

// Mirrors Alooma-iOS.podspec. Only Alooma.h is public; include/ symlinks it.
let package = Package(
    name: "Alooma-iOS",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "Alooma-iOS", targets: ["Alooma-iOS"]),
    ],
    targets: [
        .target(
            name: "Alooma-iOS",
            path: "Alooma-iOS",
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedLibrary("icucore"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
            ]
        ),
    ]
)
