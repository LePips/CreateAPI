// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.App.Hook {
    public var deliveries: Deliveries {
        Deliveries(path: path + "/deliveries")
    }

    public struct Deliveries {
        /// Path: `/app/hook/deliveries`
        public let path: String

        /// List deliveries for an app webhook
        ///
        /// Returns a list of webhook deliveries for the webhook configured for a GitHub App.
        /// 
        /// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/apps#list-deliveries-for-an-app-webhook)
        public func get(perPage: Int? = nil, cursor: String? = nil) -> Request<[OctoKit.HookDeliveryItem]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, cursor))
        }

        private func makeGetQuery(_ perPage: Int?, _ cursor: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(cursor, forKey: "cursor")
            return encoder.items
        }
    }
}
