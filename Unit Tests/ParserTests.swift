//
// ParserTests
// Thingy
//
// Created by Bojan Dimovski on 28.11.16.
// Copyright © 2017 Bojan Dimovski. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.


import XCTest
@testable import Thingy

class RawThingyTests: XCTestCase {
	func testParsingValidDevice() {
		let identifier = "iPad6,3"

		let rawThingy = RawThingy(identifier: identifier)

		XCTAssertNotNil(rawThingy.family)
		if let family = rawThingy.family {
			XCTAssert(family == .pad)
		}

		XCTAssert(rawThingy.major == 6)
		XCTAssert(rawThingy.minor == 3)
	}

	func testParsingInvalidDevice() {
		let identifier = "6,3"

		let rawThingy = RawThingy(identifier: identifier)

		XCTAssertNil(rawThingy.family)
		XCTAssert(rawThingy.major == 6)
		XCTAssert(rawThingy.minor == 3)
	}

	func testParsingFutureDevice() {
		let identifier = "iPhone133,7"

		let rawThingy = RawThingy(identifier: identifier)

		XCTAssertNotNil(rawThingy.family)
		if let family = rawThingy.family {
			XCTAssert(family == .phone)
		}

		XCTAssert(rawThingy.major == 133)
		XCTAssert(rawThingy.minor == 7)
	}
}
