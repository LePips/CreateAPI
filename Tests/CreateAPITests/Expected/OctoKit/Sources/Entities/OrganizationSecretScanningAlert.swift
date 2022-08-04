// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct OrganizationSecretScanningAlert: Codable {
    /// The security alert number.
    public var number: Int?
    /// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    public var createdAt: Date?
    /// The REST API URL of the alert resource.
    public var url: URL?
    /// The GitHub URL of the alert resource.
    public var htmlURL: URL?
    /// The REST API URL of the code locations for this alert.
    public var locationsURL: URL?
    /// Sets the state of the secret scanning alert. Can be either `open` or `resolved`. You must provide `resolution` when you set the state to `resolved`.
    public var state: SecretScanningAlertState?
    /// **Required when the `state` is `resolved`.** The reason for resolving the alert. Can be one of `false_positive`, `wont_fix`, `revoked`, or `used_in_tests`.
    public var resolution: SecretScanningAlertResolution?
    /// The time that the alert was resolved in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
    public var resolvedAt: Date?
    /// Simple User
    public var resolvedBy: SimpleUser?
    /// The type of secret that secret scanning detected.
    public var secretType: String?
    /// The secret that was detected.
    public var secret: String?
    /// Minimal Repository
    public var repository: MinimalRepository?

    public init(number: Int? = nil, createdAt: Date? = nil, url: URL? = nil, htmlURL: URL? = nil, locationsURL: URL? = nil, state: SecretScanningAlertState? = nil, resolution: SecretScanningAlertResolution? = nil, resolvedAt: Date? = nil, resolvedBy: SimpleUser? = nil, secretType: String? = nil, secret: String? = nil, repository: MinimalRepository? = nil) {
        self.number = number
        self.createdAt = createdAt
        self.url = url
        self.htmlURL = htmlURL
        self.locationsURL = locationsURL
        self.state = state
        self.resolution = resolution
        self.resolvedAt = resolvedAt
        self.resolvedBy = resolvedBy
        self.secretType = secretType
        self.secret = secret
        self.repository = repository
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case createdAt = "created_at"
        case url
        case htmlURL = "html_url"
        case locationsURL = "locations_url"
        case state
        case resolution
        case resolvedAt = "resolved_at"
        case resolvedBy = "resolved_by"
        case secretType = "secret_type"
        case secret
        case repository
    }
}
