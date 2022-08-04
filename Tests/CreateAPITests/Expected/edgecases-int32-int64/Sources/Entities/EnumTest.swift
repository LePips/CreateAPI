// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct EnumTest: Codable {
    public var enumString: EnumString?
    public var enumInteger: Int32?
    public var enumNumber: Double?
    public var outerEnum: OuterEnum?

    public enum EnumString: String, Codable, CaseIterable {
        case upper = "UPPER"
        case lower
        case empty = ""
    }

    public init(enumString: EnumString? = nil, enumInteger: Int32? = nil, enumNumber: Double? = nil, outerEnum: OuterEnum? = nil) {
        self.enumString = enumString
        self.enumInteger = enumInteger
        self.enumNumber = enumNumber
        self.outerEnum = outerEnum
    }

    private enum CodingKeys: String, CodingKey {
        case enumString = "enum_string"
        case enumInteger = "enum_integer"
        case enumNumber = "enum_number"
        case outerEnum
    }
}
