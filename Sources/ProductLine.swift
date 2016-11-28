//
// ProductLine
// Device
//
// Created by Bojan Dimovski on 21.11.16.
// Copyright (c) 2016 Bojan Dimovski.
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


import Foundation

/// A struct containing all product lines. Currently iPad only.

struct ProductLine {

	/// A type that describes the specific iPad line.
	///
	/// - regular: A standard iPad product.
	/// - pro: An iPad Pro product.
	/// - mini: An iPad mini product.
	/// - air: An iPad Air product.

	enum iPad: ProductLineProtocol, MarketingProtocol {
		case regular
		case pro
		case mini
		case air

		var marketingName: String {
			switch self {
			case .pro:
				return "Pro"
			case .mini:
				return "mini"
			case .air:
				return "Air"
			default:
				return ""
			}
		}
	}

}

// MARK: - Hashable and equatable protocols

func ==(lhs: MarketingProtocol, rhs: MarketingProtocol) -> Bool {
	return lhs.marketingName == rhs.marketingName
}