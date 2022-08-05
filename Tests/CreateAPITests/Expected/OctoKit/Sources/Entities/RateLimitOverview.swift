// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct RateLimitOverview: Codable {
    public var resources: Resources
    /// Rate Limit
    public var rate: RateLimit

    public struct Resources: Codable {
        /// Rate Limit
        public var core: RateLimit
        /// Rate Limit
        public var graphql: RateLimit?
        /// Rate Limit
        public var search: RateLimit
        /// Rate Limit
        public var sourceImport: RateLimit?
        /// Rate Limit
        public var integrationManifest: RateLimit?
        /// Rate Limit
        public var codeScanningUpload: RateLimit?
        /// Rate Limit
        public var actionsRunnerRegistration: RateLimit?
        /// Rate Limit
        public var scim: RateLimit?

        public init(core: RateLimit, graphql: RateLimit? = nil, search: RateLimit, sourceImport: RateLimit? = nil, integrationManifest: RateLimit? = nil, codeScanningUpload: RateLimit? = nil, actionsRunnerRegistration: RateLimit? = nil, scim: RateLimit? = nil) {
            self.core = core
            self.graphql = graphql
            self.search = search
            self.sourceImport = sourceImport
            self.integrationManifest = integrationManifest
            self.codeScanningUpload = codeScanningUpload
            self.actionsRunnerRegistration = actionsRunnerRegistration
            self.scim = scim
        }

        private enum CodingKeys: String, CodingKey {
            case core
            case graphql
            case search
            case sourceImport = "source_import"
            case integrationManifest = "integration_manifest"
            case codeScanningUpload = "code_scanning_upload"
            case actionsRunnerRegistration = "actions_runner_registration"
            case scim
        }
    }

    public init(resources: Resources, rate: RateLimit) {
        self.resources = resources
        self.rate = rate
    }
}
