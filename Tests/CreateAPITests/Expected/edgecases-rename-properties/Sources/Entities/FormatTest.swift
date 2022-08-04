// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct FormatTest: Codable {
    public var integer: Int?
    public var int32: Int?
    public var int64: Int?
    public var number: Double
    public var float: Double?
    public var double: Double?
    public var string: String?
    public var byte: Data
    public var binary: String?
    public var date: NaiveDate
    public var dateTime: Date?
    public var uuid: UUID?
    public var password: String

    public init(integer: Int? = nil, int32: Int? = nil, int64: Int? = nil, number: Double, float: Double? = nil, double: Double? = nil, string: String? = nil, byte: Data, binary: String? = nil, date: NaiveDate, dateTime: Date? = nil, uuid: UUID? = nil, password: String) {
        self.integer = integer
        self.int32 = int32
        self.int64 = int64
        self.number = number
        self.float = float
        self.double = double
        self.string = string
        self.byte = byte
        self.binary = binary
        self.date = date
        self.dateTime = dateTime
        self.uuid = uuid
        self.password = password
    }
}
