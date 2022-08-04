// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Enterprises.WithEnterprise.Actions.RunnerGroups.WithRunnerGroupID.Organizations {
    public func orgID(_ orgID: Int) -> WithOrgID {
        WithOrgID(path: "\(path)/\(orgID)")
    }

    public struct WithOrgID {
        /// Path: `/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations/{org_id}`
        public let path: String

        /// Add organization access to a self-hosted runner group in an enterprise
        ///
        /// Adds an organization to the list of selected organizations that can access a self-hosted runner group. The runner group must have `visibility` set to `selected`. For more information, see "[Create a self-hosted runner group for an enterprise](#create-a-self-hosted-runner-group-for-an-enterprise)."
        /// 
        /// You must authenticate using an access token with the `manage_runners:enterprise` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#add-organization-access-to-a-self-hosted-runner-group-in-an-enterprise)
        public var put: Request<Void> {
            Request(method: "PUT", url: path)
        }

        /// Remove organization access to a self-hosted runner group in an enterprise
        ///
        /// Removes an organization from the list of selected organizations that can access a self-hosted runner group. The runner group must have `visibility` set to `selected`. For more information, see "[Create a self-hosted runner group for an enterprise](#create-a-self-hosted-runner-group-for-an-enterprise)."
        /// 
        /// You must authenticate using an access token with the `manage_runners:enterprise` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#remove-organization-access-to-a-self-hosted-runner-group-in-an-enterprise)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path)
        }
    }
}
