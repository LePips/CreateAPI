// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct ThreadSubscription: Codable {
    /// Example: true
    public var isSubscribed: Bool
    public var isIgnored: Bool
    public var reason: String?
    /// Example: "2012-10-06T21:34:12Z"
    public var createdAt: Date?
    /// Example: "https://api.github.com/notifications/threads/1/subscription"
    public var url: URL
    /// Example: "https://api.github.com/notifications/threads/1"
    public var threadURL: URL?
    /// Example: "https://api.github.com/repos/1"
    public var repositoryURL: URL?

    public init(isSubscribed: Bool, isIgnored: Bool, reason: String? = nil, createdAt: Date? = nil, url: URL, threadURL: URL? = nil, repositoryURL: URL? = nil) {
        self.isSubscribed = isSubscribed
        self.isIgnored = isIgnored
        self.reason = reason
        self.createdAt = createdAt
        self.url = url
        self.threadURL = threadURL
        self.repositoryURL = repositoryURL
    }

    private enum CodingKeys: String, CodingKey {
        case isSubscribed = "subscribed"
        case isIgnored = "ignored"
        case reason
        case createdAt = "created_at"
        case url
        case threadURL = "thread_url"
        case repositoryURL = "repository_url"
    }
}
