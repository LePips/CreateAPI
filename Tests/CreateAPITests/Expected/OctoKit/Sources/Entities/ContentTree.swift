// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct ContentTree: Codable {
    public var type: String
    public var size: Int
    public var name: String
    public var path: String
    public var sha: String
    public var url: URL
    public var gitURL: URL?
    public var htmlURL: URL?
    public var downloadURL: URL?
    public var entries: [Entry]?
    public var links: Links
    public var content: AnyJSON
    public var encoding: AnyJSON

    public struct Entry: Codable {
        public var type: String
        public var size: Int
        public var name: String
        public var path: String
        public var content: String?
        public var sha: String
        public var url: URL
        public var gitURL: URL?
        public var htmlURL: URL?
        public var downloadURL: URL?
        public var links: Links

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

        public init(type: String, size: Int, name: String, path: String, content: String? = nil, sha: String, url: URL, gitURL: URL? = nil, htmlURL: URL? = nil, downloadURL: URL? = nil, links: Links) {
            self.type = type
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
        }

        private enum CodingKeys: String, CodingKey {
            case type
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
        }
    }

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

    public init(type: String, size: Int, name: String, path: String, sha: String, url: URL, gitURL: URL? = nil, htmlURL: URL? = nil, downloadURL: URL? = nil, entries: [Entry]? = nil, links: Links, content: AnyJSON, encoding: AnyJSON) {
        self.type = type
        self.size = size
        self.name = name
        self.path = path
        self.sha = sha
        self.url = url
        self.gitURL = gitURL
        self.htmlURL = htmlURL
        self.downloadURL = downloadURL
        self.entries = entries
        self.links = links
        self.content = content
        self.encoding = encoding
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case size
        case name
        case path
        case sha
        case url
        case gitURL = "git_url"
        case htmlURL = "html_url"
        case downloadURL = "download_url"
        case entries
        case links = "_links"
        case content
        case encoding
    }
}
