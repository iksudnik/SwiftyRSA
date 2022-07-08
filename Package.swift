// swift-tools-version:5.6

import PackageDescription

let package = Package(name: "SwiftyRSA",
                      platforms: [.iOS(.v11),
                                  .tvOS(.v11),
                                  .watchOS(.v5)],
                      products: [.library(name: "SwiftyRSA",
                                          targets: ["SwiftyRSA"])],
                      dependencies: [
                        // Dependencies declare other packages that this package depends on.
                      ],
                      targets: [.target(name: "SwiftyRSA"), //,
                                //linkerSettings: [.linkedFramework("Security",
                                // .when(platforms: [.iOS,
                                // .tvOS,
                                // .watchOS]))]),
                        .testTarget(name: "SwiftyRSATests",
                                    dependencies: ["SwiftyRSA"]],
                                    swiftLanguageVersions: [.v5])
