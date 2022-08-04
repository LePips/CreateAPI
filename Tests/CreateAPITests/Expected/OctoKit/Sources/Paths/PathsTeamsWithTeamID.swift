// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Teams {
    public func teamID(_ teamID: Int) -> WithTeamID {
        WithTeamID(path: "\(path)/\(teamID)")
    }

    public struct WithTeamID {
        /// Path: `/teams/{team_id}`
        public let path: String

        /// Get a team (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the [Get a team by name](https://docs.github.com/rest/reference/teams#get-a-team-by-name) endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams/#get-a-team-legacy)
        @available(*, deprecated, message: "Deprecated")
        public var get: Request<OctoKit.TeamFull> {
            Request(method: "GET", url: path)
        }

        /// Update a team (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Update a team](https://docs.github.com/rest/reference/teams#update-a-team) endpoint.
        /// 
        /// To edit a team, the authenticated user must either be an organization owner or a team maintainer.
        /// 
        /// **Note:** With nested teams, the `privacy` for parent teams cannot be `secret`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams/#update-a-team-legacy)
        @available(*, deprecated, message: "Deprecated")
        public func patch(_ body: PatchRequest) -> Request<OctoKit.TeamFull> {
            Request(method: "PATCH", url: path, body: body)
        }

        public struct PatchRequest: Encodable {
            /// The name of the team.
            public var name: String
            /// The description of the team.
            public var description: String?
            /// The level of privacy this team should have. Editing teams without specifying this parameter leaves `privacy` intact. The options are:  
            /// **For a non-nested team:**  
            /// \* `secret` - only visible to organization owners and members of this team.  
            /// \* `closed` - visible to all members of this organization.  
            /// **For a parent or child team:**  
            /// \* `closed` - visible to all members of this organization.
            public var privacy: Privacy?
            /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:  
            /// \* `pull` - team members can pull, but not push to or administer newly-added repositories.  
            /// \* `push` - team members can pull and push, but not administer newly-added repositories.  
            /// \* `admin` - team members can pull, push and administer newly-added repositories.
            public var permission: Permission?
            /// The ID of a team to set as the parent team.
            public var parentTeamID: Int?

            /// The level of privacy this team should have. Editing teams without specifying this parameter leaves `privacy` intact. The options are:  
            /// **For a non-nested team:**  
            /// \* `secret` - only visible to organization owners and members of this team.  
            /// \* `closed` - visible to all members of this organization.  
            /// **For a parent or child team:**  
            /// \* `closed` - visible to all members of this organization.
            public enum Privacy: String, Codable, CaseIterable {
                case secret
                case closed
            }

            /// **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:  
            /// \* `pull` - team members can pull, but not push to or administer newly-added repositories.  
            /// \* `push` - team members can pull and push, but not administer newly-added repositories.  
            /// \* `admin` - team members can pull, push and administer newly-added repositories.
            public enum Permission: String, Codable, CaseIterable {
                case pull
                case push
                case admin
            }

            public init(name: String, description: String? = nil, privacy: Privacy? = nil, permission: Permission? = nil, parentTeamID: Int? = nil) {
                self.name = name
                self.description = description
                self.privacy = privacy
                self.permission = permission
                self.parentTeamID = parentTeamID
            }

            private enum CodingKeys: String, CodingKey {
                case name
                case description
                case privacy
                case permission
                case parentTeamID = "parent_team_id"
            }
        }

        /// Delete a team (Legacy)
        ///
        /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Delete a team](https://docs.github.com/rest/reference/teams#delete-a-team) endpoint.
        /// 
        /// To delete a team, the authenticated user must be an organization owner or team maintainer.
        /// 
        /// If you are an organization owner, deleting a parent team will delete all of its child teams as well.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/teams/#delete-a-team-legacy)
        @available(*, deprecated, message: "Deprecated")
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path)
        }
    }
}
