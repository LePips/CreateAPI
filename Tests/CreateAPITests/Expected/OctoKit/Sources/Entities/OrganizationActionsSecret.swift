// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

/// Actions Secret for an Organization
///
/// Secrets for GitHub Actions for an organization.
public struct OrganizationActionsSecret: Codable {
    /// The name of the secret.
    ///
    /// Example: "SECRET_TOKEN"
    public var name: String
    public var createdAt: Date
    public var updatedAt: Date
    /// Visibility of a secret
    public var visibility: Visibility
    /// Example: "https://api.github.com/organizations/org/secrets/my_secret/repositories"
    public var selectedRepositoriesURL: URL?

    /// Visibility of a secret
    public enum Visibility: String, Codable, CaseIterable {
        case all
        case `private`
        case selected
    }

    public init(name: String, createdAt: Date, updatedAt: Date, visibility: Visibility, selectedRepositoriesURL: URL? = nil) {
        self.name = name
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.visibility = visibility
        self.selectedRepositoriesURL = selectedRepositoriesURL
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case visibility
        case selectedRepositoriesURL = "selected_repositories_url"
    }
}
