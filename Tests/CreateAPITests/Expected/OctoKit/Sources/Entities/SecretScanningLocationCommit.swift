// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Represents a 'commit' secret scanning location type. This location type shows that a secret was detected inside a commit to a repository.
public struct SecretScanningLocationCommit: Codable {
    /// The file path in the repository
    ///
    /// Example: "/example/secrets.txt"
    public var path: String
    /// Line number at which the secret starts in the file
    public var startLine: Double
    /// Line number at which the secret ends in the file
    public var endLine: Double
    /// The column at which the secret starts within the start line when the file is interpreted as 8BIT ASCII
    public var startColumn: Double
    /// The column at which the secret ends within the end line when the file is interpreted as 8BIT ASCII
    public var endColumn: Double
    /// SHA-1 hash ID of the associated blob
    ///
    /// Example: "af5626b4a114abcb82d63db7c8082c3c4756e51b"
    public var blobSha: String
    /// The API URL to get the associated blob resource
    public var blobURL: String
    /// SHA-1 hash ID of the associated commit
    ///
    /// Example: "af5626b4a114abcb82d63db7c8082c3c4756e51b"
    public var commitSha: String
    /// The API URL to get the associated commit resource
    public var commitURL: String

    public init(path: String, startLine: Double, endLine: Double, startColumn: Double, endColumn: Double, blobSha: String, blobURL: String, commitSha: String, commitURL: String) {
        self.path = path
        self.startLine = startLine
        self.endLine = endLine
        self.startColumn = startColumn
        self.endColumn = endColumn
        self.blobSha = blobSha
        self.blobURL = blobURL
        self.commitSha = commitSha
        self.commitURL = commitURL
    }

    private enum CodingKeys: String, CodingKey {
        case path
        case startLine = "start_line"
        case endLine = "end_line"
        case startColumn = "start_column"
        case endColumn = "end_column"
        case blobSha = "blob_sha"
        case blobURL = "blob_url"
        case commitSha = "commit_sha"
        case commitURL = "commit_url"
    }
}
