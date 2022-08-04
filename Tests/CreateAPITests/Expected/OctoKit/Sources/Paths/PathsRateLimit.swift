// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var rateLimit: RateLimit {
        RateLimit(path: "/rate_limit")
    }

    public struct RateLimit {
        /// Path: `/rate_limit`
        public let path: String

        /// Get rate limit status for the authenticated user
        ///
        /// **Note:** Accessing this endpoint does not count against your REST API rate limit.
        /// 
        /// **Note:** The `rate` object is deprecated. If you're writing new API client code or updating existing code, you should use the `core` object instead of the `rate` object. The `core` object contains the same information that is present in the `rate` object.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/rate-limit#get-rate-limit-status-for-the-authenticated-user)
        public var get: Request<OctoKit.RateLimitOverview> {
            Request(method: "GET", url: path)
        }

        public enum GetResponseHeaders {
            public static let rateLimitLimit = HTTPHeader<Int>(field: "X-RateLimit-Limit")
            public static let rateLimitRemaining = HTTPHeader<Int>(field: "X-RateLimit-Remaining")
            public static let rateLimitReset = HTTPHeader<Int>(field: "X-RateLimit-Reset")
        }
    }
}
