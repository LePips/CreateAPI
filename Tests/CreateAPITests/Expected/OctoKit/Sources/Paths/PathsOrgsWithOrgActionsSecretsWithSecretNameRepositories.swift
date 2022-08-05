// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Actions.Secrets.WithSecretName {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }

    public struct Repositories {
        /// Path: `/orgs/{org}/actions/secrets/{secret_name}/repositories`
        public let path: String

        /// List selected repositories for an organization secret
        ///
        /// Lists all repositories that have been selected when the `visibility` for repository access to a secret is set to `selected`. You must authenticate using an access token with the `admin:org` scope to use this endpoint. GitHub Apps must have the `secrets` organization permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#list-selected-repositories-for-an-organization-secret)
        public func get(page: Int? = nil, perPage: Int? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(page, perPage), id: "actions/list-selected-repos-for-org-secret")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Int
            public var repositories: [OctoKit.MinimalRepository]

            public init(totalCount: Int, repositories: [OctoKit.MinimalRepository]) {
                self.totalCount = totalCount
                self.repositories = repositories
            }

            private enum CodingKeys: String, CodingKey {
                case totalCount = "total_count"
                case repositories
            }
        }

        private func makeGetQuery(_ page: Int?, _ perPage: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(page, forKey: "page")
            encoder.encode(perPage, forKey: "per_page")
            return encoder.items
        }

        /// Set selected repositories for an organization secret
        ///
        /// Replaces all repositories for an organization secret when the `visibility` for repository access is set to `selected`. The visibility is set when you [Create or update an organization secret](https://docs.github.com/rest/reference/actions#create-or-update-an-organization-secret). You must authenticate using an access token with the `admin:org` scope to use this endpoint. GitHub Apps must have the `secrets` organization permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#set-selected-repositories-for-an-organization-secret)
        public func put(selectedRepositoryIDs: [Int]) -> Request<Void> {
            Request(method: "PUT", url: path, body: ["selected_repository_ids": selectedRepositoryIDs], id: "actions/set-selected-repos-for-org-secret")
        }
    }
}
