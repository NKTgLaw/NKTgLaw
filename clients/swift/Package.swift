// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "NKTgLaw",
    products: [
        .library(name: "NKTgLaw", targets: ["NKTgLaw"]),
    ],
    targets: [
        .target(name: "NKTgLaw", path: "clients/swift/Sources"),
        .testTarget(name: "NKTgLawTests", dependencies: ["NKTgLaw"], path: "clients/swift/Tests"),
    ]
)
