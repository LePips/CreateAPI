// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Actions {
    public var secrets: Secrets {
        Secrets(path: path + "/secrets")
    }

    public struct Secrets {
        /// Path: `/orgs/{org}/actions/secrets`
        public let path: String

        /// List organization secrets
        ///
        /// Lists all secrets available in an organization without revealing their encrypted values. You must authenticate using an access token with the `admin:org` scope to use this endpoint. GitHub Apps must have the `secrets` organization permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#list-organization-secrets)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "actions/list-org-secrets")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Int
            public var secrets: [OctoKit.OrganizationActionsSecret]

            public init(totalCount: Int, secrets: [OctoKit.OrganizationActionsSecret]) {
                self.totalCount = totalCount
                self.secrets = secrets
            }

            private enum CodingKeys: String, CodingKey {
                case totalCount = "total_count"
                case secrets
            }
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }
    }
}
