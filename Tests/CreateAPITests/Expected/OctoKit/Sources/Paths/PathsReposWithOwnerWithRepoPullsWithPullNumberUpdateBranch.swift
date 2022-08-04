// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Pulls.WithPullNumber {
    public var updateBranch: UpdateBranch {
        UpdateBranch(path: path + "/update-branch")
    }

    public struct UpdateBranch {
        /// Path: `/repos/{owner}/{repo}/pulls/{pull_number}/update-branch`
        public let path: String

        /// Update a pull request branch
        ///
        /// Updates the pull request branch with the latest upstream changes by merging HEAD from the base branch into the pull request branch.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/pulls#update-a-pull-request-branch)
        public func put(expectedHeadSha: String? = nil) -> Request<PutResponse> {
            Request(method: "PUT", url: path, body: ["expected_head_sha": expectedHeadSha])
        }

        public struct PutResponse: Decodable {
            public var message: String?
            public var url: String?

            public init(message: String? = nil, url: String? = nil) {
                self.message = message
                self.url = url
            }
        }
    }
}
