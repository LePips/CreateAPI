// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct ArrayOfNumberOnly: Codable {
  public var arrayNumber: [Double]?

  public init(arrayNumber: [Double]? = nil) {
    self.arrayNumber = arrayNumber
  }

  private enum CodingKeys: String, CodingKey {
    case arrayNumber = "ArrayNumber"
  }
}
