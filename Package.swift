// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "monki-projects-model",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_10),
		.watchOS(.v6),
		.tvOS(.v13),
	],
	products: [
		.library(
			name: "MonkiProjectsModel",
			targets: ["MonkiProjectsModel"]
		),
		.library(
			name: "MonkiMapModel",
			targets: ["MonkiMapModel"]
		),
	],
	dependencies: [
		.package(
			name: "prefixed-uuid",
			url: "https://github.com/RemiBardon/swift-prefixed-uuid",
			.upToNextMajor(from: "1.0.0")
		),
	],
	targets: [
		// Monki Projects Core Models
		.target(
			name: "MonkiProjectsModel",
			dependencies: [
				.product(name: "PrefixedUUID", package: "prefixed-uuid"),
			],
			resources: [
				.process("Resources/Strings"),
			]
		),
		.testTarget(
			name: "MonkiProjectsModelTests",
			dependencies: ["MonkiProjectsModel"]
		),
		// Monki Map Models
		.target(
			name: "MonkiMapModel",
			dependencies: ["MonkiProjectsModel"],
			resources: [
				.process("Resources/Strings"),
			]
		),
		.testTarget(
			name: "MonkiMapModelTests",
			dependencies: ["MonkiMapModel"]
		),
	]
)
