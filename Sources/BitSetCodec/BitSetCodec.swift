//
//  BitSetCodec.swift
//  BitSetCodec
//
//  Created by Bernardo Breder on 08/01/17.
//
//

import Foundation

#if SWIFT_PACKAGE
    import BitSet
    import DataCodec
#endif

extension BitSet {
    
    public convenience init?(decoder: DataDecoder) {
        let N = 64
        guard let bits = decoder.readUInt32() else { return nil }
        let count = (Int(bits) + (N-1)) / N
        var words: [UInt64] = []
        for _ in 0 ..< count {
            guard let word = decoder.readUInt64() else { return nil }
            words.append(word)
        }
        self.init(count: count, words: words)
    }
    
    public func encode(encoder: DataEncoder) {
        encoder.write(uint32: UInt32(words.count))
        for word in words {
            encoder.write(uint64: word)
        }
    }

    public func encode() -> [UInt8]? {
        let encoder = DataEncoder()
        encode(encoder: encoder)
        return encoder.bytes()
    }

}
