// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var installation: Installation {
        Installation(path: path + "/installation")
    }

    public struct Installation {
        /// Path: `/repos/{owner}/{repo}/installation`
        public let path: String

        /// Get a repository installation for the authenticated app
        ///
        /// Enables an authenticated GitHub App to find the repository's installation information. The installation's account type will be either an organization or a user account, depending which account the repository belongs to.
        /// 
        /// You must use a [JWT](https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/apps#get-a-repository-installation-for-the-authenticated-app)
        public var get: Request<OctoKit.Installation> {
            Request(method: "GET", url: path)
        }
    }
}
