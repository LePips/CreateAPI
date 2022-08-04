// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

/// Reactions to conversations provide a way to help people express their feelings more simply and effectively.
public struct Reaction: Codable {
    public var id: Int
    /// Example: "MDg6UmVhY3Rpb24x"
    public var nodeID: String
    /// Simple User
    public var user: SimpleUser?
    /// The reaction to use
    ///
    /// Example: "heart"
    public var content: Content
    /// Example: "2016-05-20T20:09:31Z"
    public var createdAt: Date

    /// The reaction to use
    ///
    /// Example: "heart"
    public enum Content: String, Codable, CaseIterable {
        case plus1 = "+1"
        case minus1 = "-1"
        case laugh
        case confused
        case heart
        case hooray
        case rocket
        case eyes
    }

    public init(id: Int, nodeID: String, user: SimpleUser? = nil, content: Content, createdAt: Date) {
        self.id = id
        self.nodeID = nodeID
        self.user = user
        self.content = content
        self.createdAt = createdAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case user
        case content
        case createdAt = "created_at"
    }
}
