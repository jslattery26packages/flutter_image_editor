// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let packageName = "image_editor_common"

let package = Package(
  name: packageName,
  platforms: [
    .macOS("10.15"),
  ],
  products: [
    .library(name: "image-editor-common", targets: [packageName]),
  ],
  dependencies: [
    .package(name: "FlutterFramework", path: "../FlutterFramework"),
  ],
  targets: [
    .target(
      name: packageName,
      dependencies: [
        .product(name: "FlutterFramework", package: "FlutterFramework"),
      ],
      cSettings: [
        .headerSearchPath("include/\(packageName)"),
      ]
    ),
  ]
)
