//
//  BitSetCodec.swift
//  BitSetCodec
//
//  Created by Bernardo Breder on 08/01/17.
//
//

import XCTest
@testable import BitSetCodec
@testable import BitSet
@testable import DataCodec

class BitSetCodecTests: XCTestCase {

	func test() throws {
        XCTAssertEqual(BitSet(count: 8).set(1).set(7), BitSet(decoder: DataDecoder(bytes: BitSet(count: 8).set(1).set(7).encode()!)))
	}

}

