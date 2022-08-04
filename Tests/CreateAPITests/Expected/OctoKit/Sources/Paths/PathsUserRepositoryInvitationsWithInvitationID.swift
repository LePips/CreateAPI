// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User.RepositoryInvitations {
    public func invitationID(_ invitationID: Int) -> WithInvitationID {
        WithInvitationID(path: "\(path)/\(invitationID)")
    }

    public struct WithInvitationID {
        /// Path: `/user/repository_invitations/{invitation_id}`
        public let path: String

        /// Accept a repository invitation
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#accept-a-repository-invitation)
        public var patch: Request<Void> {
            Request(method: "PATCH", url: path)
        }

        /// Decline a repository invitation
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#decline-a-repository-invitation)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path)
        }
    }
}
