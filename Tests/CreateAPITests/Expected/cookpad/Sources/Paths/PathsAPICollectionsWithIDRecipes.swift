// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get

extension Paths.Collections.WithID {
    public var recipes: Recipes {
        Recipes(path: path + "/recipes")
    }

    public struct Recipes {
        /// Path: `/api/collections/{id}/recipes`
        public let path: String

        /// Find Recipes in a Collection
        ///
        /// Returns an ordered array of Recipe models in the given Collection.
        public var get: Request<[cookpad.Recipe]> {
            Request(method: "GET", url: path)
        }
    }
}
