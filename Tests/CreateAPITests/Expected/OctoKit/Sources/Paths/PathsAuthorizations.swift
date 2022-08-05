// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var authorizations: Authorizations {
        Authorizations(path: "/authorizations")
    }

    public struct Authorizations {
        /// Path: `/authorizations`
        public let path: String

        /// List your authorizations
        ///
        /// **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/oauth-authorizations#list-your-authorizations)
        @available(*, deprecated, message: "Deprecated")
        public func get(parameters: GetParameters? = nil) -> Request<[OctoKit.Authorization]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "oauth-authorizations/list-authorizations")
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var perPage: Int?
            public var page: Int?
            public var clientID: String?

            public init(perPage: Int? = nil, page: Int? = nil, clientID: String? = nil) {
                self.perPage = perPage
                self.page = page
                self.clientID = clientID
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                encoder.encode(clientID, forKey: "client_id")
                return encoder.items
            }
        }

        /// Create a new authorization
        ///
        /// **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/developers/apps/authorizing-oauth-apps#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).
        /// 
        /// **Warning:** Apps must use the [web application flow](https://docs.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow) to obtain OAuth tokens that work with GitHub SAML organizations. OAuth tokens created using the Authorizations API will be unable to access GitHub SAML organizations. For more information, see the [blog post](https://developer.github.com/changes/2019-11-05-deprecated-passwords-and-authorizations-api).
        /// 
        /// Creates OAuth tokens using [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication). If you have two-factor authentication setup, Basic Authentication for this endpoint requires that you use a one-time password (OTP) and your username and password instead of tokens. For more information, see "[Working with two-factor authentication](https://docs.github.com/rest/overview/other-authentication-methods#working-with-two-factor-authentication)."
        /// 
        /// To create tokens for a particular OAuth application using this endpoint, you must authenticate as the user you want to create an authorization for and provide the app's client ID and secret, found on your OAuth application's settings page. If your OAuth application intends to create multiple tokens for one user, use `fingerprint` to differentiate between them.
        /// 
        /// You can also create tokens on GitHub from the [personal access tokens settings](https://github.com/settings/tokens) page. Read more about these tokens in [the GitHub Help documentation](https://help.github.com/articles/creating-an-access-token-for-command-line-use).
        /// 
        /// Organizations that enforce SAML SSO require personal access tokens to be allowed. Read more about allowing tokens in [the GitHub Help documentation](https://help.github.com/articles/about-identity-and-access-management-with-saml-single-sign-on).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/oauth-authorizations#create-a-new-authorization)
        @available(*, deprecated, message: "Deprecated")
        public func post(_ body: PostRequest? = nil) -> Request<OctoKit.Authorization> {
            Request(method: "POST", url: path, body: body, id: "oauth-authorizations/create-authorization")
        }

        public enum PostResponseHeaders {
            public static let location = HTTPHeader<String>(field: "Location")
        }

        public struct PostRequest: Encodable {
            /// A list of scopes that this authorization is in.
            ///
            /// Example: ["public_repo", "user"]
            public var scopes: [String]?
            /// A note to remind you what the OAuth token is for.
            ///
            /// Example: "Update all gems"
            public var note: String?
            /// A URL to remind you what app the OAuth token is for.
            public var noteURL: String?
            /// The OAuth app client key for which to create the token.
            public var clientID: String?
            /// The OAuth app client secret for which to create the token.
            public var clientSecret: String?
            /// A unique string to distinguish an authorization from others created for the same client ID and user.
            public var fingerprint: String?

            public init(scopes: [String]? = nil, note: String? = nil, noteURL: String? = nil, clientID: String? = nil, clientSecret: String? = nil, fingerprint: String? = nil) {
                self.scopes = scopes
                self.note = note
                self.noteURL = noteURL
                self.clientID = clientID
                self.clientSecret = clientSecret
                self.fingerprint = fingerprint
            }

            private enum CodingKeys: String, CodingKey {
                case scopes
                case note
                case noteURL = "note_url"
                case clientID = "client_id"
                case clientSecret = "client_secret"
                case fingerprint
            }
        }
    }
}
