// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftStaff",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftStaff",
            targets: ["SwiftStaff"]),
    ],
    dependencies: [
        .package(name: "SnapshotTesting", url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.8.1"),
        .package(name: "Tagged", url: "https://github.com/pointfreeco/swift-tagged.git", from: "0.5.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftStaff",
            dependencies: ["Tagged"],
            path: "Sources",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "SwiftStaffTests",
            dependencies: ["SwiftStaff", "SnapshotTesting"],
            path: "Tests",
            exclude: ["__Snapshots__"]
        ),
    ]
)
