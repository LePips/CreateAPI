// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct ReviewRequestRemovedIssueEvent: Codable {
    public var id: Int
    public var nodeID: String
    public var url: String
    /// Simple User
    public var actor: SimpleUser
    public var event: String
    public var commitID: String?
    public var commitURL: String?
    public var createdAt: String
    /// GitHub app
    ///
    /// GitHub apps are a new way to extend GitHub. They can be installed directly on organizations and user accounts and granted access to specific repositories. They come with granular permissions and built-in webhooks. GitHub apps are first class actors within GitHub.
    public var performedViaGithubApp: Integration?
    /// Simple User
    public var reviewRequester: SimpleUser
    /// Team
    ///
    /// Groups of organization members that gives permissions on specified repositories.
    public var requestedTeam: Team?
    /// Simple User
    public var requestedReviewer: SimpleUser?

    public init(id: Int, nodeID: String, url: String, actor: SimpleUser, event: String, commitID: String? = nil, commitURL: String? = nil, createdAt: String, performedViaGithubApp: Integration? = nil, reviewRequester: SimpleUser, requestedTeam: Team? = nil, requestedReviewer: SimpleUser? = nil) {
        self.id = id
        self.nodeID = nodeID
        self.url = url
        self.actor = actor
        self.event = event
        self.commitID = commitID
        self.commitURL = commitURL
        self.createdAt = createdAt
        self.performedViaGithubApp = performedViaGithubApp
        self.reviewRequester = reviewRequester
        self.requestedTeam = requestedTeam
        self.requestedReviewer = requestedReviewer
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case url
        case actor
        case event
        case commitID = "commit_id"
        case commitURL = "commit_url"
        case createdAt = "created_at"
        case performedViaGithubApp = "performed_via_github_app"
        case reviewRequester = "review_requester"
        case requestedTeam = "requested_team"
        case requestedReviewer = "requested_reviewer"
    }
}
