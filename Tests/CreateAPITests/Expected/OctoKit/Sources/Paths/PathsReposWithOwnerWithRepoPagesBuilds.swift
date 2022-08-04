// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Pages {
    public var builds: Builds {
        Builds(path: path + "/builds")
    }

    public struct Builds {
        /// Path: `/repos/{owner}/{repo}/pages/builds`
        public let path: String

        /// List GitHub Pages builds
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#list-github-pages-builds)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.PageBuild]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page))
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

        /// Request a GitHub Pages build
        ///
        /// You can request that your site be built from the latest revision on the default branch. This has the same effect as pushing a commit to your default branch, but does not require an additional commit. Manually triggering page builds can be helpful when diagnosing build warnings and failures.
        /// 
        /// Build requests are limited to one concurrent build per repository and one concurrent build per requester. If you request a build while another is still in progress, the second request will be queued until the first completes.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#request-a-github-pages-build)
        public var post: Request<OctoKit.PageBuildStatus> {
            Request(method: "POST", url: path)
        }
    }
}
