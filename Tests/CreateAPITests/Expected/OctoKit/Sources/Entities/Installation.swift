// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct Installation: Codable {
    /// The ID of the installation.
    public var id: Int
    public var account: Account?
    /// Describe whether all repositories have been selected or there's a selection involved
    public var repositorySelection: RepositorySelection
    /// Example: "https://api.github.com/installations/1/access_tokens"
    public var accessTokensURL: URL
    /// Example: "https://api.github.com/installation/repositories"
    public var repositoriesURL: URL
    /// Example: "https://github.com/organizations/github/settings/installations/1"
    public var htmlURL: URL
    public var appID: Int
    /// The ID of the user or organization this token is being scoped to.
    public var targetID: Int
    /// Example: "Organization"
    public var targetType: String
    /// App Permissions
    ///
    /// The permissions granted to the user-to-server access token.
    ///
    /// Example:
    ///
    /// {
    ///   "contents" : "read",
    ///   "deployments" : "write",
    ///   "issues" : "read",
    ///   "single_file" : "read"
    /// }
    public var permissions: AppPermissions
    public var events: [String]
    public var createdAt: Date
    public var updatedAt: Date
    /// Example: "config.yaml"
    public var singleFileName: String?
    /// Example: true
    public var hasMultipleSingleFiles: Bool?
    /// Example: ["config.yml", ".github/issue_TEMPLATE.md"]
    public var singleFilePaths: [String]?
    /// Example: "github-actions"
    public var appSlug: String
    /// Simple User
    public var suspendedBy: SimpleUser?
    public var suspendedAt: Date?
    /// Example: "test_13f1e99741e3e004@d7e1eb0bc0a1ba12.com"
    public var contactEmail: String?

    public struct Account: Codable {
        public var simpleUser: SimpleUser?
        /// An enterprise account
        public var enterprise: Enterprise?

        public init(simpleUser: SimpleUser? = nil, enterprise: Enterprise? = nil) {
            self.simpleUser = simpleUser
            self.enterprise = enterprise
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.simpleUser = try? container.decode(SimpleUser.self)
            self.enterprise = try? container.decode(Enterprise.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = simpleUser { try container.encode(value) }
            if let value = enterprise { try container.encode(value) }
        }
    }

    /// Describe whether all repositories have been selected or there's a selection involved
    public enum RepositorySelection: String, Codable, CaseIterable {
        case all
        case selected
    }

    public init(id: Int, account: Account? = nil, repositorySelection: RepositorySelection, accessTokensURL: URL, repositoriesURL: URL, htmlURL: URL, appID: Int, targetID: Int, targetType: String, permissions: AppPermissions, events: [String], createdAt: Date, updatedAt: Date, singleFileName: String? = nil, hasMultipleSingleFiles: Bool? = nil, singleFilePaths: [String]? = nil, appSlug: String, suspendedBy: SimpleUser? = nil, suspendedAt: Date? = nil, contactEmail: String? = nil) {
        self.id = id
        self.account = account
        self.repositorySelection = repositorySelection
        self.accessTokensURL = accessTokensURL
        self.repositoriesURL = repositoriesURL
        self.htmlURL = htmlURL
        self.appID = appID
        self.targetID = targetID
        self.targetType = targetType
        self.permissions = permissions
        self.events = events
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.singleFileName = singleFileName
        self.hasMultipleSingleFiles = hasMultipleSingleFiles
        self.singleFilePaths = singleFilePaths
        self.appSlug = appSlug
        self.suspendedBy = suspendedBy
        self.suspendedAt = suspendedAt
        self.contactEmail = contactEmail
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case account
        case repositorySelection = "repository_selection"
        case accessTokensURL = "access_tokens_url"
        case repositoriesURL = "repositories_url"
        case htmlURL = "html_url"
        case appID = "app_id"
        case targetID = "target_id"
        case targetType = "target_type"
        case permissions
        case events
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case singleFileName = "single_file_name"
        case hasMultipleSingleFiles = "has_multiple_single_files"
        case singleFilePaths = "single_file_paths"
        case appSlug = "app_slug"
        case suspendedBy = "suspended_by"
        case suspendedAt = "suspended_at"
        case contactEmail = "contact_email"
    }
}
