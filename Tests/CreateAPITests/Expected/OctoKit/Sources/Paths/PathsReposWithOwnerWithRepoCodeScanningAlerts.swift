// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.CodeScanning {
    public var alerts: Alerts {
        Alerts(path: path + "/alerts")
    }

    public struct Alerts {
        /// Path: `/repos/{owner}/{repo}/code-scanning/alerts`
        public let path: String

        /// List code scanning alerts for a repository
        ///
        /// Lists all open code scanning alerts for the default branch (usually `main`
        /// or `master`). You must use an access token with the `security_events` scope to use
        /// this endpoint with private repos, the `public_repo` scope also grants permission to read
        /// security events on public repos only. GitHub Apps must have the `security_events` read
        /// permission to use this endpoint.
        /// 
        /// The response includes a `most_recent_instance` object.
        /// This provides details of the most recent instance of this alert
        /// for the default branch or for the specified Git reference
        /// (if you used `ref` in the request).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/code-scanning#list-code-scanning-alerts-for-a-repository)
        public func get(parameters: GetParameters? = nil) -> Request<[OctoKit.CodeScanningAlertItems]> {
            Request(method: "GET", url: path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            /// The name of the tool used to generate the code scanning analysis.
            public var toolName: String?
            /// The GUID of the tool used to generate the code scanning analysis, if provided in the uploaded SARIF data.
            public var toolGuid: String?
            public var page: Int?
            public var perPage: Int?
            /// The full Git reference, formatted as `refs/heads/<branch name>`,
            /// `refs/pull/<number>/merge`, or `refs/pull/<number>/head`.
            public var ref: String?
            public var direction: Direction?
            public var sort: Sort?
            /// State of a code scanning alert.
            public var state: State?

            public enum Direction: String, Codable, CaseIterable {
                case asc
                case desc
            }

            public enum Sort: String, Codable, CaseIterable {
                case created
                case updated
                case number
            }

            /// State of a code scanning alert.
            public enum State: String, Codable, CaseIterable {
                case `open`
                case closed
                case dismissed
                case fixed
            }

            public init(toolName: String? = nil, toolGuid: String? = nil, page: Int? = nil, perPage: Int? = nil, ref: String? = nil, direction: Direction? = nil, sort: Sort? = nil, state: State? = nil) {
                self.toolName = toolName
                self.toolGuid = toolGuid
                self.page = page
                self.perPage = perPage
                self.ref = ref
                self.direction = direction
                self.sort = sort
                self.state = state
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(toolName, forKey: "tool_name")
                encoder.encode(toolGuid, forKey: "tool_guid")
                encoder.encode(page, forKey: "page")
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(ref, forKey: "ref")
                encoder.encode(direction, forKey: "direction")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(state, forKey: "state")
                return encoder.items
            }
        }
    }
}
