//
//  Package.swift
//  BitSetCodec
//
//

import PackageDescription

let package = Package(
	name: "BitSetCodec",
	targets: [
		Target(name: "BitSetCodec", dependencies: ["BitSet", "DataCodec"]),
		Target(name: "BitSet", dependencies: []),
		Target(name: "DataCodec", dependencies: []),
	]
)

