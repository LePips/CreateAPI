// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct ArrayOfArrayOfNumberOnly: Codable {
    public var arrayArrayNumber: [[Double]]?

    public init(arrayArrayNumber: [[Double]]? = nil) {
        self.arrayArrayNumber = arrayArrayNumber
    }

    private enum CodingKeys: String, CodingKey {
        case arrayArrayNumber = "ArrayArrayNumber"
    }
}
