// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Teams.WithTeamSlug.Discussions.WithDiscussionNumber {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }

    public struct Comments {
        /// Path: `/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments`
        public let path: String

        /// List discussion comments
        ///
        /// List all comments on a team discussion. OAuth access tokens require the `read:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        /// 
        /// **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#list-discussion-comments)
        public func get(parameters: GetParameters? = nil) -> Request<[OctoKit.TeamDiscussionComment]> {
            Request(method: "GET", url: path, query: parameters?.asQuery)
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var direction: Direction?
            public var perPage: Int?
            public var page: Int?

            public enum Direction: String, Codable, CaseIterable {
                case asc
                case desc
            }

            public init(direction: Direction? = nil, perPage: Int? = nil, page: Int? = nil) {
                self.direction = direction
                self.perPage = perPage
                self.page = page
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(direction, forKey: "direction")
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                return encoder.items
            }
        }

        /// Create a discussion comment
        ///
        /// Creates a new comment on a team discussion. OAuth access tokens require the `write:discussion` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        /// 
        /// This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in secondary rate limiting. See "[Secondary rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#secondary-rate-limits)" and "[Dealing with secondary rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-secondary-rate-limits)" for details.
        /// 
        /// **Note:** You can also specify a team by `org_id` and `team_id` using the route `POST /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams#create-a-discussion-comment)
        public func post(body: String) -> Request<OctoKit.TeamDiscussionComment> {
            Request(method: "POST", url: path, body: ["body": body])
        }
    }
}
