// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Pet {
    public var findByTags: FindByTags {
        FindByTags(path: path + "/findByTags")
    }

    public struct FindByTags {
        /// Path: `/pet/findByTags`
        public let path: String

        /// Finds Pets by tags
        ///
        /// Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
        public func get(tags: [String]) -> Request<[edgecases_default.Pet]> {
            Request(method: "GET", url: path, query: makeGetQuery(tags))
        }

        private func makeGetQuery(_ tags: [String]) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(tags, forKey: "tags", explode: false)
            return encoder.items
        }
    }
}
