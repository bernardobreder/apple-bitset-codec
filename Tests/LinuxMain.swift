//
//  BitSetCodecTests.swift
//  BitSetCodec
//
//  Created by Bernardo Breder.
//
//

import XCTest
@testable import BitSetCodecTests

extension BitSetCodecTests {

	static var allTests : [(String, (BitSetCodecTests) -> () throws -> Void)] {
		return [
			("test", test),
		]
	}

}

XCTMain([
	testCase(BitSetCodecTests.allTests),
])

