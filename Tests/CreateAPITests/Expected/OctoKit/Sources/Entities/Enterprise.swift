// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

/// An enterprise account
public struct Enterprise: Codable {
    /// A short description of the enterprise.
    public var description: String?
    /// Example: "https://github.com/enterprises/octo-business"
    public var htmlURL: URL
    /// The enterprise's website URL.
    public var websiteURL: URL?
    /// Unique identifier of the enterprise
    ///
    /// Example: 42
    public var id: Int
    /// Example: "MDEwOlJlcG9zaXRvcnkxMjk2MjY5"
    public var nodeID: String
    /// The name of the enterprise.
    ///
    /// Example: "Octo Business"
    public var name: String
    /// The slug url identifier for the enterprise.
    ///
    /// Example: "octo-business"
    public var slug: String
    /// Example: "2019-01-26T19:01:12Z"
    public var createdAt: Date?
    /// Example: "2019-01-26T19:14:43Z"
    public var updatedAt: Date?
    public var avatarURL: URL

    public init(description: String? = nil, htmlURL: URL, websiteURL: URL? = nil, id: Int, nodeID: String, name: String, slug: String, createdAt: Date? = nil, updatedAt: Date? = nil, avatarURL: URL) {
        self.description = description
        self.htmlURL = htmlURL
        self.websiteURL = websiteURL
        self.id = id
        self.nodeID = nodeID
        self.name = name
        self.slug = slug
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.avatarURL = avatarURL
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case htmlURL = "html_url"
        case websiteURL = "website_url"
        case id
        case nodeID = "node_id"
        case name
        case slug
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case avatarURL = "avatar_url"
    }
}
