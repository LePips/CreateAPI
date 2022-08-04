// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct ProtectedBranchRequiredStatusCheck: Codable {
    public var url: String?
    public var enforcementLevel: String?
    public var contexts: [String]
    public var checks: [Check]
    public var contextsURL: String?
    public var isStrict: Bool?

    public struct Check: Codable {
        public var context: String
        public var appID: Int?

        public init(context: String, appID: Int? = nil) {
            self.context = context
            self.appID = appID
        }

        private enum CodingKeys: String, CodingKey {
            case context
            case appID = "app_id"
        }
    }

    public init(url: String? = nil, enforcementLevel: String? = nil, contexts: [String], checks: [Check], contextsURL: String? = nil, isStrict: Bool? = nil) {
        self.url = url
        self.enforcementLevel = enforcementLevel
        self.contexts = contexts
        self.checks = checks
        self.contextsURL = contextsURL
        self.isStrict = isStrict
    }

    private enum CodingKeys: String, CodingKey {
        case url
        case enforcementLevel = "enforcement_level"
        case contexts
        case checks
        case contextsURL = "contexts_url"
        case isStrict = "strict"
    }
}
