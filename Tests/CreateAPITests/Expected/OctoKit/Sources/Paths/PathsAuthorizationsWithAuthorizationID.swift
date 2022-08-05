// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Authorizations {
    public func authorizationID(_ authorizationID: Int) -> WithAuthorizationID {
        WithAuthorizationID(path: "\(path)/\(authorizationID)")
    }

    public struct WithAuthorizationID {
        /// Path: `/authorizations/{authorization_id}`
        public let path: String

        /// Get a single authorization
        ///
        /// **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/oauth-authorizations#get-a-single-authorization)
        @available(*, deprecated, message: "Deprecated")
        public var get: Request<OctoKit.Authorization> {
            Request(method: "GET", url: path, id: "oauth-authorizations/get-authorization")
        }

        /// Update an existing authorization
        ///
        /// **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/developers/apps/authorizing-oauth-apps#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).
        /// 
        /// If you have two-factor authentication setup, Basic Authentication for this endpoint requires that you use a one-time password (OTP) and your username and password instead of tokens. For more information, see "[Working with two-factor authentication](https://docs.github.com/rest/overview/other-authentication-methods#working-with-two-factor-authentication)."
        /// 
        /// You can only send one of these scope keys at a time.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/oauth-authorizations#update-an-existing-authorization)
        @available(*, deprecated, message: "Deprecated")
        public func patch(_ body: PatchRequest? = nil) -> Request<OctoKit.Authorization> {
            Request(method: "PATCH", url: path, body: body, id: "oauth-authorizations/update-authorization")
        }

        public struct PatchRequest: Encodable {
            /// A list of scopes that this authorization is in.
            ///
            /// Example: ["public_repo", "user"]
            public var scopes: [String]?
            /// A list of scopes to add to this authorization.
            public var addScopes: [String]?
            /// A list of scopes to remove from this authorization.
            public var removeScopes: [String]?
            /// A note to remind you what the OAuth token is for.
            ///
            /// Example: "Update all gems"
            public var note: String?
            /// A URL to remind you what app the OAuth token is for.
            public var noteURL: String?
            /// A unique string to distinguish an authorization from others created for the same client ID and user.
            public var fingerprint: String?

            public init(scopes: [String]? = nil, addScopes: [String]? = nil, removeScopes: [String]? = nil, note: String? = nil, noteURL: String? = nil, fingerprint: String? = nil) {
                self.scopes = scopes
                self.addScopes = addScopes
                self.removeScopes = removeScopes
                self.note = note
                self.noteURL = noteURL
                self.fingerprint = fingerprint
            }

            private enum CodingKeys: String, CodingKey {
                case scopes
                case addScopes = "add_scopes"
                case removeScopes = "remove_scopes"
                case note
                case noteURL = "note_url"
                case fingerprint
            }
        }

        /// Delete an authorization
        ///
        /// **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/oauth-authorizations#delete-an-authorization)
        @available(*, deprecated, message: "Deprecated")
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "oauth-authorizations/delete-authorization")
        }
    }
}
