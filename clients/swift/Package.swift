// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "NKTgLaw",
    products: [
        .library(name: "NKTgLaw", targets: ["NKTgLaw"]),
    ],
    targets: [
        .target(
            name: "NKTgLaw", 
            path: "Sources"
        ),
        .testTarget(
            name: "NKTgLawTests", 
            dependencies: ["NKTgLaw"], 
            path: "Tests"
        ),
    ]
)
