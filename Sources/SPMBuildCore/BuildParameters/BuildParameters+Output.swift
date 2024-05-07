//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift open source project
//
// Copyright (c) 2020-2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import struct Basics.AbsolutePath

extension BuildParameters {
    /// Build parameters related to output and logging grouped in a single type to aggregate those in one place.
    public struct Output: Encodable {
        public init(
            isColorized: Bool = false,
            isVerbose: Bool = false,
            traceFile: AbsolutePath? = nil
        ) {
            self.isColorized = isColorized
            self.isVerbose = isVerbose
            self.traceFile = traceFile
        }

        public var isColorized: Bool

        public var isVerbose: Bool

        public var traceFile: AbsolutePath?
    }
}
