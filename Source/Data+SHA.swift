//
//  Data+SHA.swift
//  SwiftyRSA
//
//  Created by Ilya Sudnik on 8.07.22.
//  Copyright © 2022 Scoop. All rights reserved.
//

import Foundation
import CommonCrypto

public extension Data {
    
    var swiftyRSASHA1: Data {
        var hash = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA1($0.baseAddress, CC_LONG(self.count), &hash)
        }
        return Data(hash)
    }

    var swiftyRSASHA224: Data {
        var hash = [UInt8](repeating: 0, count: Int(CC_SHA224_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA224($0.baseAddress, CC_LONG(self.count), &hash)
        }
        return Data(hash)
    }

    var swiftyRSASHA256: Data {
        var hash = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA256($0.baseAddress, CC_LONG(self.count), &hash)
        }
        return Data(hash)
    }

    var swiftyRSASHA384: Data {
        var hash = [UInt8](repeating: 0, count: Int(CC_SHA384_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA384($0.baseAddress, CC_LONG(self.count), &hash)
        }
        return Data(hash)
    }

    var swiftyRSASHA512: Data {
        var hash = [UInt8](repeating: 0, count: Int(CC_SHA512_DIGEST_LENGTH))
        withUnsafeBytes {
            _ = CC_SHA512($0.baseAddress, CC_LONG(self.count), &hash)
        }
        return Data(hash)
    }
}
