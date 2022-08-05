// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Git {
    public var trees: Trees {
        Trees(path: path + "/trees")
    }

    public struct Trees {
        /// Path: `/repos/{owner}/{repo}/git/trees`
        public let path: String

        /// Create a tree
        ///
        /// The tree creation API accepts nested entries. If you specify both a tree and a nested path modifying that tree, this endpoint will overwrite the contents of the tree with the new path contents, and create a new tree structure.
        /// 
        /// If you use this endpoint to add, delete, or modify the file contents in a tree, you will need to commit the tree and then update a branch to point to the commit. For more information see "[Create a commit](https://docs.github.com/rest/reference/git#create-a-commit)" and "[Update a reference](https://docs.github.com/rest/reference/git#update-a-reference)."
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/git#create-a-tree)
        public func post(_ body: PostRequest) -> Request<OctoKit.GitTree> {
            Request(method: "POST", url: path, body: body, id: "git/create-tree")
        }

        public enum PostResponseHeaders {
            public static let location = HTTPHeader<String>(field: "Location")
        }

        public struct PostRequest: Encodable {
            /// Objects (of `path`, `mode`, `type`, and `sha`) specifying a tree structure.
            public var tree: [TreeItem]
            /// The SHA1 of an existing Git tree object which will be used as the base for the new tree. If provided, a new Git tree object will be created from entries in the Git tree object pointed to by `base_tree` and entries defined in the `tree` parameter. Entries defined in the `tree` parameter will overwrite items from `base_tree` with the same `path`. If you're creating new changes on a branch, then normally you'd set `base_tree` to the SHA1 of the Git tree object of the current latest commit on the branch you're working on.
            /// If not provided, GitHub will create a new Git tree object from only the entries defined in the `tree` parameter. If you create a new commit pointing to such a tree, then all files which were a part of the parent commit's tree and were not defined in the `tree` parameter will be listed as deleted by the new commit.
            public var baseTree: String?

            public struct TreeItem: Encodable {
                /// The file referenced in the tree.
                public var path: String?
                /// The file mode; one of `100644` for file (blob), `100755` for executable (blob), `040000` for subdirectory (tree), `160000` for submodule (commit), or `120000` for a blob that specifies the path of a symlink.
                public var mode: Mode?
                /// Either `blob`, `tree`, or `commit`.
                public var type: `Type`?
                /// The SHA1 checksum ID of the object in the tree. Also called `tree.sha`. If the value is `null` then the file will be deleted.  
                ///   
                /// **Note:** Use either `tree.sha` or `content` to specify the contents of the entry. Using both `tree.sha` and `content` will return an error.
                public var sha: String?
                /// The content you want this file to have. GitHub will write this blob out and use that SHA for this entry. Use either this, or `tree.sha`.  
                ///   
                /// **Note:** Use either `tree.sha` or `content` to specify the contents of the entry. Using both `tree.sha` and `content` will return an error.
                public var content: String?

                /// The file mode; one of `100644` for file (blob), `100755` for executable (blob), `040000` for subdirectory (tree), `160000` for submodule (commit), or `120000` for a blob that specifies the path of a symlink.
                public enum Mode: String, Codable, CaseIterable {
                    case _100644 = "100644"
                    case _100755 = "100755"
                    case _040000 = "040000"
                    case _160000 = "160000"
                    case _120000 = "120000"
                }

                /// Either `blob`, `tree`, or `commit`.
                public enum `Type`: String, Codable, CaseIterable {
                    case blob
                    case tree
                    case commit
                }

                public init(path: String? = nil, mode: Mode? = nil, type: `Type`? = nil, sha: String? = nil, content: String? = nil) {
                    self.path = path
                    self.mode = mode
                    self.type = type
                    self.sha = sha
                    self.content = content
                }
            }

            public init(tree: [TreeItem], baseTree: String? = nil) {
                self.tree = tree
                self.baseTree = baseTree
            }

            private enum CodingKeys: String, CodingKey {
                case tree
                case baseTree = "base_tree"
            }
        }
    }
}
