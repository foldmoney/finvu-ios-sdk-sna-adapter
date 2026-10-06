// swift-tools-version: 5.10
import PackageDescription

// Cookiejar's FinvuSDK looks up `FinvuSDKSNAAdapter.FinvuSnaAuthProviderImpl` by name.
// This is that adapter (tag 1.0.3), plus the Auth SDK and Otpless build it was compiled against.
let package = Package(
    name: "FinvuSDKSNAAdapter",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "FinvuSDKSNAAdapter", targets: ["FinvuSDKSNAAdapter"]),
        .library(name: "FinvuAuthenticationSDK", targets: ["FinvuAuthenticationSDK"]),
        .library(name: "OtplessFinVu", targets: ["OtplessFinVu"])
    ],
    targets: [
        .binaryTarget(
            name: "FinvuSDKSNAAdapter",
            path: "FinvuSDKSNAAdapter.xcframework"
        ),
        .binaryTarget(
            name: "FinvuAuthenticationSDK",
            path: "FinvuAuthenticationSDK.xcframework"
        ),
        .binaryTarget(
            name: "OtplessFinVu",
            path: "OtplessFinVu.xcframework"
        )
    ]
)
