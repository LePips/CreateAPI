// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct PublicUser: Codable {
    public var login: String
    public var id: Int
    public var nodeID: String
    public var avatarURL: URL
    public var gravatarID: String?
    public var url: URL
    public var htmlURL: URL
    public var followersURL: URL
    public var followingURL: String
    public var gistsURL: String
    public var starredURL: String
    public var subscriptionsURL: URL
    public var organizationsURL: URL
    public var reposURL: URL
    public var eventsURL: String
    public var receivedEventsURL: URL
    public var type: String
    public var isSiteAdmin: Bool
    public var name: String?
    public var company: String?
    public var blog: String?
    public var location: String?
    public var email: String?
    public var isHireable: Bool?
    public var bio: String?
    public var twitterUsername: String?
    public var publicRepos: Int
    public var publicGists: Int
    public var followers: Int
    public var following: Int
    public var createdAt: Date
    public var updatedAt: Date
    public var plan: Plan?
    public var suspendedAt: Date?
    public var privateGists: Int?
    public var totalPrivateRepos: Int?
    public var ownedPrivateRepos: Int?
    public var diskUsage: Int?
    public var collaborators: Int?

    public struct Plan: Codable {
        public var collaborators: Int
        public var name: String
        public var space: Int
        public var privateRepos: Int

        public init(collaborators: Int, name: String, space: Int, privateRepos: Int) {
            self.collaborators = collaborators
            self.name = name
            self.space = space
            self.privateRepos = privateRepos
        }

        private enum CodingKeys: String, CodingKey {
            case collaborators
            case name
            case space
            case privateRepos = "private_repos"
        }
    }

    public init(login: String, id: Int, nodeID: String, avatarURL: URL, gravatarID: String? = nil, url: URL, htmlURL: URL, followersURL: URL, followingURL: String, gistsURL: String, starredURL: String, subscriptionsURL: URL, organizationsURL: URL, reposURL: URL, eventsURL: String, receivedEventsURL: URL, type: String, isSiteAdmin: Bool, name: String? = nil, company: String? = nil, blog: String? = nil, location: String? = nil, email: String? = nil, isHireable: Bool? = nil, bio: String? = nil, twitterUsername: String? = nil, publicRepos: Int, publicGists: Int, followers: Int, following: Int, createdAt: Date, updatedAt: Date, plan: Plan? = nil, suspendedAt: Date? = nil, privateGists: Int? = nil, totalPrivateRepos: Int? = nil, ownedPrivateRepos: Int? = nil, diskUsage: Int? = nil, collaborators: Int? = nil) {
        self.login = login
        self.id = id
        self.nodeID = nodeID
        self.avatarURL = avatarURL
        self.gravatarID = gravatarID
        self.url = url
        self.htmlURL = htmlURL
        self.followersURL = followersURL
        self.followingURL = followingURL
        self.gistsURL = gistsURL
        self.starredURL = starredURL
        self.subscriptionsURL = subscriptionsURL
        self.organizationsURL = organizationsURL
        self.reposURL = reposURL
        self.eventsURL = eventsURL
        self.receivedEventsURL = receivedEventsURL
        self.type = type
        self.isSiteAdmin = isSiteAdmin
        self.name = name
        self.company = company
        self.blog = blog
        self.location = location
        self.email = email
        self.isHireable = isHireable
        self.bio = bio
        self.twitterUsername = twitterUsername
        self.publicRepos = publicRepos
        self.publicGists = publicGists
        self.followers = followers
        self.following = following
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.plan = plan
        self.suspendedAt = suspendedAt
        self.privateGists = privateGists
        self.totalPrivateRepos = totalPrivateRepos
        self.ownedPrivateRepos = ownedPrivateRepos
        self.diskUsage = diskUsage
        self.collaborators = collaborators
    }

    private enum CodingKeys: String, CodingKey {
        case login
        case id
        case nodeID = "node_id"
        case avatarURL = "avatar_url"
        case gravatarID = "gravatar_id"
        case url
        case htmlURL = "html_url"
        case followersURL = "followers_url"
        case followingURL = "following_url"
        case gistsURL = "gists_url"
        case starredURL = "starred_url"
        case subscriptionsURL = "subscriptions_url"
        case organizationsURL = "organizations_url"
        case reposURL = "repos_url"
        case eventsURL = "events_url"
        case receivedEventsURL = "received_events_url"
        case type
        case isSiteAdmin = "site_admin"
        case name
        case company
        case blog
        case location
        case email
        case isHireable = "hireable"
        case bio
        case twitterUsername = "twitter_username"
        case publicRepos = "public_repos"
        case publicGists = "public_gists"
        case followers
        case following
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case plan
        case suspendedAt = "suspended_at"
        case privateGists = "private_gists"
        case totalPrivateRepos = "total_private_repos"
        case ownedPrivateRepos = "owned_private_repos"
        case diskUsage = "disk_usage"
        case collaborators
    }
}
