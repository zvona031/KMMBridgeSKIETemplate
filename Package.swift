// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/zvona031/KMMBridgeSKIETemplate/com/zvonimir/test/allshared-kmmbridge/0.1.2/allshared-kmmbridge-0.1.2.zip"
let remoteKotlinChecksum = "988b30380494781304e18d95ff2e27ade71d622fa34b6dfbe37f240fd69241dc"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)