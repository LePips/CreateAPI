// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg {
    public var auditLog: AuditLog {
        AuditLog(path: path + "/audit-log")
    }

    public struct AuditLog {
        /// Path: `/orgs/{org}/audit-log`
        public let path: String

        /// Get the audit log for an organization
        ///
        /// Gets the audit log for an organization. For more information, see "[Reviewing the audit log for your organization](https://docs.github.com/github/setting-up-and-managing-organizations-and-teams/reviewing-the-audit-log-for-your-organization)."
        /// 
        /// To use this endpoint, you must be an organization owner, and you must use an access token with the `admin:org` scope. GitHub Apps must have the `organization_administration` read permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/orgs#get-audit-log)
        public func get(parameters: GetParameters? = nil) -> Request<[OctoKit.AuditLogEvent]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "orgs/get-audit-log")
        }

        public struct GetParameters {
            public var phrase: String?
            public var include: Include?
            public var after: String?
            public var before: String?
            public var order: Order?
            public var perPage: Int?

            public enum Include: String, Codable, CaseIterable {
                case web
                case git
                case all
            }

            public enum Order: String, Codable, CaseIterable {
                case desc
                case asc
            }

            public init(phrase: String? = nil, include: Include? = nil, after: String? = nil, before: String? = nil, order: Order? = nil, perPage: Int? = nil) {
                self.phrase = phrase
                self.include = include
                self.after = after
                self.before = before
                self.order = order
                self.perPage = perPage
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(phrase, forKey: "phrase")
                encoder.encode(include, forKey: "include")
                encoder.encode(after, forKey: "after")
                encoder.encode(before, forKey: "before")
                encoder.encode(order, forKey: "order")
                encoder.encode(perPage, forKey: "per_page")
                return encoder.items
            }
        }
    }
}
