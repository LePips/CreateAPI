// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct RunnerGroupsOrg: Codable {
    public var id: Double
    public var name: String
    public var visibility: String
    public var isDefault: Bool
    /// Link to the selected repositories resource for this runner group. Not present unless visibility was set to `selected`
    public var selectedRepositoriesURL: String?
    public var runnersURL: String
    public var isInherited: Bool
    public var inheritedAllowsPublicRepositories: Bool?
    public var allowsPublicRepositories: Bool

    public init(id: Double, name: String, visibility: String, isDefault: Bool, selectedRepositoriesURL: String? = nil, runnersURL: String, isInherited: Bool, inheritedAllowsPublicRepositories: Bool? = nil, allowsPublicRepositories: Bool) {
        self.id = id
        self.name = name
        self.visibility = visibility
        self.isDefault = isDefault
        self.selectedRepositoriesURL = selectedRepositoriesURL
        self.runnersURL = runnersURL
        self.isInherited = isInherited
        self.inheritedAllowsPublicRepositories = inheritedAllowsPublicRepositories
        self.allowsPublicRepositories = allowsPublicRepositories
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case visibility
        case isDefault = "default"
        case selectedRepositoriesURL = "selected_repositories_url"
        case runnersURL = "runners_url"
        case isInherited = "inherited"
        case inheritedAllowsPublicRepositories = "inherited_allows_public_repositories"
        case allowsPublicRepositories = "allows_public_repositories"
    }
}
