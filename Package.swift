// swift-tools-version:5.4

import PackageDescription

let package = Package(
  name: "composable-effect-identifier",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "ComposableEffectIdentifier",
      targets: ["ComposableEffectIdentifier"])
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "0.0.1")
  ],
  targets: [
    .target(
      name: "ComposableEffectIdentifier",
      dependencies: [
        .product(
          name: "ComposableArchitecture",
          package: "swift-composable-architecture")
      ]),
    .testTarget(
      name: "ComposableEffectIdentifierTests",
      dependencies: ["ComposableEffectIdentifier"]),
  ]
)
