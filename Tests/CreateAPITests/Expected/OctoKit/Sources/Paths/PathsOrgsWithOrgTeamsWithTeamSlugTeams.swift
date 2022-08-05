// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Teams.WithTeamSlug {
    public var teams: Teams {
        Teams(path: path + "/teams")
    }

    public struct Teams {
        /// Path: `/orgs/{org}/teams/{team_slug}/teams`
        public let path: String

        /// List child teams
        ///
        /// Lists the child teams of the team specified by `{team_slug}`.
        /// 
        /// **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/teams`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#list-child-teams)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.Team]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "teams/list-child-in-org")
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
