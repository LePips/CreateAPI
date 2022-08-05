// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Applications {
    public var grants: Grants {
        Grants(path: path + "/grants")
    }

    public struct Grants {
        /// Path: `/applications/grants`
        public let path: String

        /// List your grants
        ///
        /// **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://docs.github.com/developers/apps/authorizing-oauth-apps#web-application-flow). The [OAuth Authorizations API](https://docs.github.com/rest/reference/oauth-authorizations) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).
        /// 
        /// You can use this API to list the set of OAuth applications that have been granted access to your account. Unlike the [list your authorizations](https://docs.github.com/rest/reference/oauth-authorizations#list-your-authorizations) API, this API does not manage individual tokens. This API will return one entry for each OAuth application that has been granted access to your account, regardless of the number of tokens an application has generated for your user. The list of OAuth applications returned matches what is shown on [the application authorizations settings screen within GitHub](https://github.com/settings/applications#authorized). The `scopes` returned are the union of scopes authorized for the application. For example, if an application has one token with `repo` scope and another token with `user` scope, the grant will return `["repo", "user"]`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/oauth-authorizations#list-your-grants)
        @available(*, deprecated, message: "Deprecated")
        public func get(parameters: GetParameters? = nil) -> Request<[OctoKit.ApplicationGrant]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "oauth-authorizations/list-grants")
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
    }
}
