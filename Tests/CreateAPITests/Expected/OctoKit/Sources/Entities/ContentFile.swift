// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct ContentFile: Codable {
    public var type: String
    public var encoding: String
    public var size: Int
    public var name: String
    public var path: String
    public var content: String
    public var sha: String
    public var url: URL
    public var gitURL: URL?
    public var htmlURL: URL?
    public var downloadURL: URL?
    public var links: Links
    /// Example: "actual/actual.md"
    public var target: String?
    /// Example: "git://example.com/defunkt/dotjs.git"
    public var submoduleGitURL: String?

    public struct Links: Codable {
        public var git: URL?
        public var html: URL?
        public var this: URL

        public init(git: URL? = nil, html: URL? = nil, this: URL) {
            self.git = git
            self.html = html
            self.this = this
        }

        private enum CodingKeys: String, CodingKey {
            case git
            case html
            case this = "self"
        }
    }

    public init(type: String, encoding: String, size: Int, name: String, path: String, content: String, sha: String, url: URL, gitURL: URL? = nil, htmlURL: URL? = nil, downloadURL: URL? = nil, links: Links, target: String? = nil, submoduleGitURL: String? = nil) {
        self.type = type
        self.encoding = encoding
        self.size = size
        self.name = name
        self.path = path
        self.content = content
        self.sha = sha
        self.url = url
        self.gitURL = gitURL
        self.htmlURL = htmlURL
        self.downloadURL = downloadURL
        self.links = links
        self.target = target
        self.submoduleGitURL = submoduleGitURL
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case encoding
        case size
        case name
        case path
        case content
        case sha
        case url
        case gitURL = "git_url"
        case htmlURL = "html_url"
        case downloadURL = "download_url"
        case links = "_links"
        case target
        case submoduleGitURL = "submodule_git_url"
    }
}
