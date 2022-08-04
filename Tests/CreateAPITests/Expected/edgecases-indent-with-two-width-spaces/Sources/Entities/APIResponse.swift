// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct APIResponse: Codable {
  public var code: Int?
  public var type: String?
  public var message: String?

  public init(code: Int? = nil, type: String? = nil, message: String? = nil) {
    self.code = code
    self.type = type
    self.message = message
  }
}
