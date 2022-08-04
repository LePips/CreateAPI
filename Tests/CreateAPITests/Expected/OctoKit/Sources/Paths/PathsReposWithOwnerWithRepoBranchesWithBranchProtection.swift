// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Branches.WithBranch {
    public var protection: Protection {
        Protection(path: path + "/protection")
    }

    public struct Protection {
        /// Path: `/repos/{owner}/{repo}/branches/{branch}/protection`
        public let path: String

        /// Get branch protection
        ///
        /// Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#get-branch-protection)
        public var get: Request<OctoKit.BranchProtection> {
            Request(method: "GET", url: path)
        }

        /// Update branch protection
        ///
        /// Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        /// 
        /// Protecting a branch requires admin or owner permissions to the repository.
        /// 
        /// **Note**: Passing new arrays of `users` and `teams` replaces their previous values.
        /// 
        /// **Note**: The list of users, apps, and teams in total is limited to 100 items.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#update-branch-protection)
        public func put(_ body: PutRequest) -> Request<OctoKit.ProtectedBranch> {
            Request(method: "PUT", url: path, body: body)
        }

        public struct PutRequest: Encodable {
            /// Require status checks to pass before merging. Set to `null` to disable.
            public var requiredStatusChecks: RequiredStatusChecks?
            /// Enforce all configured restrictions for administrators. Set to `true` to enforce required status checks for repository administrators. Set to `null` to disable.
            public var enforceAdmins: Bool?
            /// Require at least one approving review on a pull request, before merging. Set to `null` to disable.
            public var requiredPullRequestReviews: RequiredPullRequestReviews?
            /// Restrict who can push to the protected branch. User, app, and team `restrictions` are only available for organization-owned repositories. Set to `null` to disable.
            public var restrictions: Restrictions?
            /// Enforces a linear commit Git history, which prevents anyone from pushing merge commits to a branch. Set to `true` to enforce a linear commit history. Set to `false` to disable a linear commit Git history. Your repository must allow squash merging or rebase merging before you can enable a linear commit history. Default: `false`. For more information, see "[Requiring a linear commit history](https://help.github.com/github/administering-a-repository/requiring-a-linear-commit-history)" in the GitHub Help documentation.
            public var isRequiredLinearHistory: Bool?
            /// Permits force pushes to the protected branch by anyone with write access to the repository. Set to `true` to allow force pushes. Set to `false` or `null` to block force pushes. Default: `false`. For more information, see "[Enabling force pushes to a protected branch](https://help.github.com/en/github/administering-a-repository/enabling-force-pushes-to-a-protected-branch)" in the GitHub Help documentation."
            public var allowForcePushes: Bool?
            /// Allows deletion of the protected branch by anyone with write access to the repository. Set to `false` to prevent deletion of the protected branch. Default: `false`. For more information, see "[Enabling force pushes to a protected branch](https://help.github.com/en/github/administering-a-repository/enabling-force-pushes-to-a-protected-branch)" in the GitHub Help documentation.
            public var allowDeletions: Bool?
            /// Requires all conversations on code to be resolved before a pull request can be merged into a branch that matches this rule. Set to `false` to disable. Default: `false`.
            public var isRequiredConversationResolution: Bool?

            /// Require status checks to pass before merging. Set to `null` to disable.
            public struct RequiredStatusChecks: Encodable {
                /// Require branches to be up to date before merging.
                public var isStrict: Bool
                /// **Deprecated**: The list of status checks to require in order to merge into this branch. If any of these checks have recently been set by a particular GitHub App, they will be required to come from that app in future for the branch to merge. Use `checks` instead of `contexts` for more fine-grained control.
                ///
                /// - warning: Deprecated.
                public var contexts: [String]
                /// The list of status checks to require in order to merge into this branch.
                public var checks: [Check]?

                public struct Check: Encodable {
                    /// The name of the required check
                    public var context: String
                    /// The ID of the GitHub App that must provide this check. Omit this field to automatically select the GitHub App that has recently provided this check, or any app if it was not set by a GitHub App. Pass -1 to explicitly allow any app to set the status.
                    public var appID: Int?

                    public init(context: String, appID: Int? = nil) {
                        self.context = context
                        self.appID = appID
                    }

                    private enum CodingKeys: String, CodingKey {
                        case context
                        case appID = "app_id"
                    }
                }

                public init(isStrict: Bool, contexts: [String], checks: [Check]? = nil) {
                    self.isStrict = isStrict
                    self.contexts = contexts
                    self.checks = checks
                }

                private enum CodingKeys: String, CodingKey {
                    case isStrict = "strict"
                    case contexts
                    case checks
                }
            }

            /// Require at least one approving review on a pull request, before merging. Set to `null` to disable.
            public struct RequiredPullRequestReviews: Encodable {
                /// Specify which users and teams can dismiss pull request reviews. Pass an empty `dismissal_restrictions` object to disable. User and team `dismissal_restrictions` are only available for organization-owned repositories. Omit this parameter for personal repositories.
                public var dismissalRestrictions: DismissalRestrictions?
                /// Set to `true` if you want to automatically dismiss approving reviews when someone pushes a new commit.
                public var dismissStaleReviews: Bool?
                /// Blocks merging pull requests until [code owners](https://help.github.com/articles/about-code-owners/) review them.
                public var requireCodeOwnerReviews: Bool?
                /// Specify the number of reviewers required to approve pull requests. Use a number between 1 and 6 or 0 to not require reviewers.
                public var requiredApprovingReviewCount: Int?

                /// Specify which users and teams can dismiss pull request reviews. Pass an empty `dismissal_restrictions` object to disable. User and team `dismissal_restrictions` are only available for organization-owned repositories. Omit this parameter for personal repositories.
                public struct DismissalRestrictions: Encodable {
                    /// The list of user `login`s with dismissal access
                    public var users: [String]?
                    /// The list of team `slug`s with dismissal access
                    public var teams: [String]?

                    public init(users: [String]? = nil, teams: [String]? = nil) {
                        self.users = users
                        self.teams = teams
                    }
                }

                public init(dismissalRestrictions: DismissalRestrictions? = nil, dismissStaleReviews: Bool? = nil, requireCodeOwnerReviews: Bool? = nil, requiredApprovingReviewCount: Int? = nil) {
                    self.dismissalRestrictions = dismissalRestrictions
                    self.dismissStaleReviews = dismissStaleReviews
                    self.requireCodeOwnerReviews = requireCodeOwnerReviews
                    self.requiredApprovingReviewCount = requiredApprovingReviewCount
                }

                private enum CodingKeys: String, CodingKey {
                    case dismissalRestrictions = "dismissal_restrictions"
                    case dismissStaleReviews = "dismiss_stale_reviews"
                    case requireCodeOwnerReviews = "require_code_owner_reviews"
                    case requiredApprovingReviewCount = "required_approving_review_count"
                }
            }

            /// Restrict who can push to the protected branch. User, app, and team `restrictions` are only available for organization-owned repositories. Set to `null` to disable.
            public struct Restrictions: Encodable {
                /// The list of user `login`s with push access
                public var users: [String]
                /// The list of team `slug`s with push access
                public var teams: [String]
                /// The list of app `slug`s with push access
                public var apps: [String]?

                public init(users: [String], teams: [String], apps: [String]? = nil) {
                    self.users = users
                    self.teams = teams
                    self.apps = apps
                }
            }

            public init(requiredStatusChecks: RequiredStatusChecks? = nil, enforceAdmins: Bool? = nil, requiredPullRequestReviews: RequiredPullRequestReviews? = nil, restrictions: Restrictions? = nil, isRequiredLinearHistory: Bool? = nil, allowForcePushes: Bool? = nil, allowDeletions: Bool? = nil, isRequiredConversationResolution: Bool? = nil) {
                self.requiredStatusChecks = requiredStatusChecks
                self.enforceAdmins = enforceAdmins
                self.requiredPullRequestReviews = requiredPullRequestReviews
                self.restrictions = restrictions
                self.isRequiredLinearHistory = isRequiredLinearHistory
                self.allowForcePushes = allowForcePushes
                self.allowDeletions = allowDeletions
                self.isRequiredConversationResolution = isRequiredConversationResolution
            }

            private enum CodingKeys: String, CodingKey {
                case requiredStatusChecks = "required_status_checks"
                case enforceAdmins = "enforce_admins"
                case requiredPullRequestReviews = "required_pull_request_reviews"
                case restrictions
                case isRequiredLinearHistory = "required_linear_history"
                case allowForcePushes = "allow_force_pushes"
                case allowDeletions = "allow_deletions"
                case isRequiredConversationResolution = "required_conversation_resolution"
            }
        }

        /// Delete branch protection
        ///
        /// Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#delete-branch-protection)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path)
        }
    }
}
