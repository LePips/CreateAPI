// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User {
    public var emails: Emails {
        Emails(path: path + "/emails")
    }

    public struct Emails {
        /// Path: `/user/emails`
        public let path: String

        /// List email addresses for the authenticated user
        ///
        /// Lists all of your email addresses, and specifies which one is visible to the public. This endpoint is accessible with the `user:email` scope.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#list-email-addresses-for-the-authenticated-user)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.Email]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "users/list-emails-for-authenticated-user")
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

        /// Add an email address for the authenticated user
        ///
        /// This endpoint is accessible with the `user` scope.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#add-an-email-address-for-the-authenticated-user)
        public func post(_ body: PostRequest? = nil) -> Request<[OctoKit.Email]> {
            Request(method: "POST", url: path, body: body, id: "users/add-email-for-authenticated-user")
        }

        public enum PostRequest: Encodable {
            case object(Object)
            case strings([String])
            case string(String)

            /// Example:
            ///
            /// {
            ///   "emails" : [
            ///     "octocat@github.com",
            ///     "mona@github.com"
            ///   ]
            /// }
            public struct Object: Encodable {
                /// Adds one or more email addresses to your GitHub account. Must contain at least one email address. **Note:** Alternatively, you can pass a single email address or an `array` of emails addresses directly, but we recommend that you pass an object using the `emails` key.
                ///
                /// Example: []
                public var emails: [String]

                public init(emails: [String]) {
                    self.emails = emails
                }
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .object(let value): try container.encode(value)
                case .strings(let value): try container.encode(value)
                case .string(let value): try container.encode(value)
                }
            }
        }

        /// Delete an email address for the authenticated user
        ///
        /// This endpoint is accessible with the `user` scope.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#delete-an-email-address-for-the-authenticated-user)
        public func delete(_ body: DeleteRequest? = nil) -> Request<Void> {
            Request(method: "DELETE", url: path, body: body, id: "users/delete-email-for-authenticated-user")
        }

        public enum DeleteRequest: Encodable {
            case object(Object)
            case strings([String])
            case string(String)

            /// Deletes one or more email addresses from your GitHub account. Must contain at least one email address. **Note:** Alternatively, you can pass a single email address or an `array` of emails addresses directly, but we recommend that you pass an object using the `emails` key.
            ///
            /// Example:
            ///
            /// {
            ///   "emails" : [
            ///     "octocat@github.com",
            ///     "mona@github.com"
            ///   ]
            /// }
            public struct Object: Encodable {
                /// Email addresses associated with the GitHub user account.
                public var emails: [String]

                public init(emails: [String]) {
                    self.emails = emails
                }
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .object(let value): try container.encode(value)
                case .strings(let value): try container.encode(value)
                case .string(let value): try container.encode(value)
                }
            }
        }
    }
}
