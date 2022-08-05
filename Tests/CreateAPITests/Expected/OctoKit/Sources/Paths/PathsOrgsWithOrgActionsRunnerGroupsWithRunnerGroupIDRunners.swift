// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Actions.RunnerGroups.WithRunnerGroupID {
    public var runners: Runners {
        Runners(path: path + "/runners")
    }

    public struct Runners {
        /// Path: `/orgs/{org}/actions/runner-groups/{runner_group_id}/runners`
        public let path: String

        /// List self-hosted runners in a group for an organization
        ///
        /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see "[GitHub's products](https://docs.github.com/github/getting-started-with-github/githubs-products)."
        /// 
        /// Lists self-hosted runners that are in a specific organization group.
        /// 
        /// You must authenticate using an access token with the `admin:org` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#list-self-hosted-runners-in-a-group-for-an-organization)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "actions/list-self-hosted-runners-in-group-for-org")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Double
            public var runners: [OctoKit.Runner]

            public init(totalCount: Double, runners: [OctoKit.Runner]) {
                self.totalCount = totalCount
                self.runners = runners
            }

            private enum CodingKeys: String, CodingKey {
                case totalCount = "total_count"
                case runners
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

        /// Set self-hosted runners in a group for an organization
        ///
        /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see "[GitHub's products](https://docs.github.com/github/getting-started-with-github/githubs-products)."
        /// 
        /// Replaces the list of self-hosted runners that are part of an organization runner group.
        /// 
        /// You must authenticate using an access token with the `admin:org` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#set-self-hosted-runners-in-a-group-for-an-organization)
        public func put(runners: [Int]) -> Request<Void> {
            Request(method: "PUT", url: path, body: ["runners": runners], id: "actions/set-self-hosted-runners-in-group-for-org")
        }
    }
}
