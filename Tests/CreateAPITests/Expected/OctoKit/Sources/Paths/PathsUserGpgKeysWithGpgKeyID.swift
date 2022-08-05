// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User.GpgKeys {
    public func gpgKeyID(_ gpgKeyID: Int) -> WithGpgKeyID {
        WithGpgKeyID(path: "\(path)/\(gpgKeyID)")
    }

    public struct WithGpgKeyID {
        /// Path: `/user/gpg_keys/{gpg_key_id}`
        public let path: String

        /// Get a GPG key for the authenticated user
        ///
        /// View extended details for a single GPG key. Requires that you are authenticated via Basic Auth or via OAuth with at least `read:gpg_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#get-a-gpg-key-for-the-authenticated-user)
        public var get: Request<OctoKit.GpgKey> {
            Request(method: "GET", url: path, id: "users/get-gpg-key-for-authenticated-user")
        }

        /// Delete a GPG key for the authenticated user
        ///
        /// Removes a GPG key from the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth or via OAuth with at least `admin:gpg_key` [scope](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#delete-a-gpg-key-for-the-authenticated-user)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "users/delete-gpg-key-for-authenticated-user")
        }
    }
}
