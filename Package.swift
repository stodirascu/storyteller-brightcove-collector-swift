// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "storyteller-brightcove-integration",
    platforms: [
      .iOS(.v13),
    ],
    products: [
        .library(
          name: "StorytellerBrightcoveIntegration",
          targets: ["StorytellerBrightcoveTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/getstoryteller/storyteller-sdk-swift-package", .upToNextMajor(from: "11.0.0")),
    ],
    targets: [
      .binaryTarget(name: "StorytellerBrightcoveIntegration",
                    url: "https://storyteller.azureedge.net/sdk-ios/brightcove/1.4.0/StorytellerBrightcoveIntegration.zip",
                    checksum: "cdd3cfd680f24cd6bc6ad3c4f7b4bfdd88c6833c08a2d7b4710da83404bab031"),
      .target(
          name: "StorytellerBrightcoveTarget",
          dependencies: [
              .target(name: "StorytellerBrightcoveIntegration"),
              .product(name: "StorytellerSDK", package: "storyteller-sdk-swift-package"),
          ],
          path: "Sources"
      )
    ]
)
