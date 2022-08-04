// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var mergeUpstream: MergeUpstream {
        MergeUpstream(path: path + "/merge-upstream")
    }

    public struct MergeUpstream {
        /// Path: `/repos/{owner}/{repo}/merge-upstream`
        public let path: String

        /// Sync a fork branch with the upstream repository
        ///
        /// Sync a branch of a forked repository to keep it up-to-date with the upstream repository.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#sync-a-fork-branch-with-the-upstream-repository)
        public func post(branch: String) -> Request<OctoKit.MergedUpstream> {
            Request(method: "POST", url: path, body: ["branch": branch])
        }
    }
}
