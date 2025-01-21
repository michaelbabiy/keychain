// swift-tools-version:6.0
//
// KeychainAccess
//
// Copyright (c) 2025 Alaska Airlines
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
    name: "KeychainAccess",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "KeychainAccess",
            targets: ["KeychainAccess"])
    ],
    targets: [
        .target(
            name: "KeychainAccess",
            path: "Framework/KeychainAccess",
            swiftSettings: [
                .define("ENABLE_LIBRARY_EVOLUTION", .when(configuration: .release)),
                .swiftLanguageMode(.v6)
            ]
        )
    ]
)
