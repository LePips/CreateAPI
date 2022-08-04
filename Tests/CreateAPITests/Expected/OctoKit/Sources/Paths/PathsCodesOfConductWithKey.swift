// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.CodesOfConduct {
    public func key(_ key: String) -> WithKey {
        WithKey(path: "\(path)/\(key)")
    }

    public struct WithKey {
        /// Path: `/codes_of_conduct/{key}`
        public let path: String

        /// Get a code of conduct
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/codes-of-conduct#get-a-code-of-conduct)
        public var get: Request<OctoKit.CodeOfConduct> {
            Request(method: "GET", url: path)
        }
    }
}
