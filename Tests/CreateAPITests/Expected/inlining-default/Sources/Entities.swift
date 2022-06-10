// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct Person: Codable {
    public var name: String
    public var address: String?

    public init(name: String, address: String? = nil) {
        self.name = name
        self.address = address
    }
}

public struct Item: Codable {
    public var weight: Int

    public init(weight: Int) {
        self.weight = weight
    }
}

public struct Package: Codable {
    public var weight: Int
    public var address: String
    public var receivedBy: Person?

    public init(weight: Int, address: String, receivedBy: Person? = nil) {
        self.weight = weight
        self.address = address
        self.receivedBy = receivedBy
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.weight = try values.decode(Int.self, forKey: "weight")
        self.address = try values.decode(String.self, forKey: "address")
        self.receivedBy = try values.decodeIfPresent(Person.self, forKey: "receivedBy")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(weight, forKey: "weight")
        try values.encode(address, forKey: "address")
        try values.encodeIfPresent(receivedBy, forKey: "receivedBy")
    }
}

public final class Letter: Codable {
    public let weight: Int
    public let address: String
    public let size: Size

    public enum Size: String, Codable, CaseIterable {
        case a4 = "A4"
        case a5 = "A5"
    }

    public init(weight: Int, address: String, size: Size) {
        self.weight = weight
        self.address = address
        self.size = size
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.weight = try values.decode(Int.self, forKey: "weight")
        self.address = try values.decode(String.self, forKey: "address")
        self.size = try values.decode(Size.self, forKey: "size")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(weight, forKey: "weight")
        try values.encode(address, forKey: "address")
        try values.encode(size, forKey: "size")
    }
}

struct StringCodingKey: CodingKey, ExpressibleByStringLiteral {
    private let string: String
    private var int: Int?

    var stringValue: String { return string }

    init(string: String) {
        self.string = string
    }

    init?(stringValue: String) {
        self.string = stringValue
    }

    var intValue: Int? { return int }

    init?(intValue: Int) {
        self.string = String(describing: intValue)
        self.int = intValue
    }

    init(stringLiteral value: String) {
        self.string = value
    }
}
