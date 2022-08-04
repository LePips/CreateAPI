// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Collaborators.WithUsername {
    public var permission: Permission {
        Permission(path: path + "/permission")
    }

    public struct Permission {
        /// Path: `/repos/{owner}/{repo}/collaborators/{username}/permission`
        public let path: String

        /// Get repository permissions for a user
        ///
        /// Checks the repository permission of a collaborator. The possible repository permissions are `admin`, `write`, `read`, and `none`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#get-repository-permissions-for-a-user)
        public var get: Request<OctoKit.RepositoryCollaboratorPermission> {
            Request(method: "GET", url: path)
        }
    }
}
