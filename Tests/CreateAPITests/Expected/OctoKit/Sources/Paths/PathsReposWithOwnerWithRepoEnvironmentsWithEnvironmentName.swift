// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Environments {
    public func environmentName(_ environmentName: String) -> WithEnvironmentName {
        WithEnvironmentName(path: "\(path)/\(environmentName)")
    }

    public struct WithEnvironmentName {
        /// Path: `/repos/{owner}/{repo}/environments/{environment_name}`
        public let path: String

        /// Get an environment
        ///
        /// Anyone with read access to the repository can use this endpoint. If the repository is private, you must use an access token with the `repo` scope. GitHub Apps must have the `actions:read` permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#get-an-environment)
        public var get: Request<OctoKit.Environment> {
            Request(method: "GET", url: path, id: "repos/get-environment")
        }

        /// Create or update an environment
        ///
        /// Create or update an environment with protection rules, such as required reviewers. For more information about environment protection rules, see "[Environments](/actions/reference/environments#environment-protection-rules)."
        /// 
        /// **Note:** Although you can use this operation to specify that only branches that match specified name patterns can deploy to this environment, you must use the UI to set the name patterns. For more information, see "[Environments](/actions/reference/environments#deployment-branches)."
        /// 
        /// **Note:** To create or update secrets for an environment, see "[Secrets](/rest/reference/actions#secrets)."
        /// 
        /// You must authenticate using an access token with the repo scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#create-or-update-an-environment)
        public func put(_ body: PutRequest? = nil) -> Request<OctoKit.Environment> {
            Request(method: "PUT", url: path, body: body, id: "repos/create-or-update-environment")
        }

        public struct PutRequest: Encodable {
            /// The amount of time to delay a job after the job is initially triggered. The time (in minutes) must be an integer between 0 and 43,200 (30 days).
            ///
            /// Example: 30
            public var waitTimer: Int?
            /// The people or teams that may review jobs that reference the environment. You can list up to six users or teams as reviewers. The reviewers must have at least read access to the repository. Only one of the required reviewers needs to approve the job for it to proceed.
            public var reviewers: [Reviewer]?
            /// The type of deployment branch policy for this environment. To allow all branches to deploy, set to `null`.
            public var deploymentBranchPolicy: OctoKit.DeploymentBranchPolicy?

            public struct Reviewer: Encodable {
                /// The type of reviewer. Must be one of: `User` or `Team`
                ///
                /// Example: "User"
                public var type: OctoKit.DeploymentReviewerType?
                /// The id of the user or team who can review the deployment
                ///
                /// Example: 4532992
                public var id: Int?

                public init(type: OctoKit.DeploymentReviewerType? = nil, id: Int? = nil) {
                    self.type = type
                    self.id = id
                }
            }

            public init(waitTimer: Int? = nil, reviewers: [Reviewer]? = nil, deploymentBranchPolicy: OctoKit.DeploymentBranchPolicy? = nil) {
                self.waitTimer = waitTimer
                self.reviewers = reviewers
                self.deploymentBranchPolicy = deploymentBranchPolicy
            }

            private enum CodingKeys: String, CodingKey {
                case waitTimer = "wait_timer"
                case reviewers
                case deploymentBranchPolicy = "deployment_branch_policy"
            }
        }

        /// Delete an environment
        ///
        /// You must authenticate using an access token with the repo scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#delete-an-environment)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "repos/delete-an-environment")
        }
    }
}
