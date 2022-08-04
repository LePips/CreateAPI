// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

/// An invocation of a workflow
public struct WorkflowRun: Codable {
    /// The ID of the workflow run.
    public var id: Int
    /// The name of the workflow run.
    ///
    /// Example: "Build"
    public var name: String?
    /// Example: "MDEwOkNoZWNrU3VpdGU1"
    public var nodeID: String
    /// The ID of the associated check suite.
    ///
    /// Example: 42
    public var checkSuiteID: Int?
    /// The node ID of the associated check suite.
    ///
    /// Example: "MDEwOkNoZWNrU3VpdGU0Mg=="
    public var checkSuiteNodeID: String?
    /// Example: "master"
    public var headBranch: String?
    /// The SHA of the head commit that points to the version of the worflow being run.
    ///
    /// Example: "009b8a3a9ccbb128af87f9b1c0f4c62e8a304f6d"
    public var headSha: String
    /// The auto incrementing run number for the workflow run.
    ///
    /// Example: 106
    public var runNumber: Int
    /// Attempt number of the run, 1 for first attempt and higher if the workflow was re-run.
    public var runAttempt: Int?
    /// Example: "push"
    public var event: String
    /// Example: "completed"
    public var status: String?
    /// Example: "neutral"
    public var conclusion: String?
    /// The ID of the parent workflow.
    public var workflowID: Int
    /// The URL to the workflow run.
    ///
    /// Example: "https://api.github.com/repos/github/hello-world/actions/runs/5"
    public var url: String
    /// Example: "https://github.com/github/hello-world/suites/4"
    public var htmlURL: String
    public var pullRequests: [PullRequestMinimal]?
    public var createdAt: Date
    public var updatedAt: Date
    /// The start time of the latest run. Resets on re-run.
    public var runStartedAt: Date?
    /// The URL to the jobs for the workflow run.
    ///
    /// Example: "https://api.github.com/repos/github/hello-world/actions/runs/5/jobs"
    public var jobsURL: String
    /// The URL to download the logs for the workflow run.
    ///
    /// Example: "https://api.github.com/repos/github/hello-world/actions/runs/5/logs"
    public var logsURL: String
    /// The URL to the associated check suite.
    ///
    /// Example: "https://api.github.com/repos/github/hello-world/check-suites/12"
    public var checkSuiteURL: String
    /// The URL to the artifacts for the workflow run.
    ///
    /// Example: "https://api.github.com/repos/github/hello-world/actions/runs/5/rerun/artifacts"
    public var artifactsURL: String
    /// The URL to cancel the workflow run.
    ///
    /// Example: "https://api.github.com/repos/github/hello-world/actions/runs/5/cancel"
    public var cancelURL: String
    /// The URL to rerun the workflow run.
    ///
    /// Example: "https://api.github.com/repos/github/hello-world/actions/runs/5/rerun"
    public var rerunURL: String
    /// The URL to the previous attempted run of this workflow, if one exists.
    ///
    /// Example: "https://api.github.com/repos/github/hello-world/actions/runs/5/attempts/3"
    public var previousAttemptURL: String?
    /// The URL to the workflow.
    ///
    /// Example: "https://api.github.com/repos/github/hello-world/actions/workflows/main.yaml"
    public var workflowURL: String
    /// Simple Commit
    public var headCommit: SimpleCommit?
    /// Minimal Repository
    public var repository: MinimalRepository
    /// Minimal Repository
    public var headRepository: MinimalRepository
    public var headRepositoryID: Int?

    public init(id: Int, name: String? = nil, nodeID: String, checkSuiteID: Int? = nil, checkSuiteNodeID: String? = nil, headBranch: String? = nil, headSha: String, runNumber: Int, runAttempt: Int? = nil, event: String, status: String? = nil, conclusion: String? = nil, workflowID: Int, url: String, htmlURL: String, pullRequests: [PullRequestMinimal]? = nil, createdAt: Date, updatedAt: Date, runStartedAt: Date? = nil, jobsURL: String, logsURL: String, checkSuiteURL: String, artifactsURL: String, cancelURL: String, rerunURL: String, previousAttemptURL: String? = nil, workflowURL: String, headCommit: SimpleCommit? = nil, repository: MinimalRepository, headRepository: MinimalRepository, headRepositoryID: Int? = nil) {
        self.id = id
        self.name = name
        self.nodeID = nodeID
        self.checkSuiteID = checkSuiteID
        self.checkSuiteNodeID = checkSuiteNodeID
        self.headBranch = headBranch
        self.headSha = headSha
        self.runNumber = runNumber
        self.runAttempt = runAttempt
        self.event = event
        self.status = status
        self.conclusion = conclusion
        self.workflowID = workflowID
        self.url = url
        self.htmlURL = htmlURL
        self.pullRequests = pullRequests
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.runStartedAt = runStartedAt
        self.jobsURL = jobsURL
        self.logsURL = logsURL
        self.checkSuiteURL = checkSuiteURL
        self.artifactsURL = artifactsURL
        self.cancelURL = cancelURL
        self.rerunURL = rerunURL
        self.previousAttemptURL = previousAttemptURL
        self.workflowURL = workflowURL
        self.headCommit = headCommit
        self.repository = repository
        self.headRepository = headRepository
        self.headRepositoryID = headRepositoryID
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case nodeID = "node_id"
        case checkSuiteID = "check_suite_id"
        case checkSuiteNodeID = "check_suite_node_id"
        case headBranch = "head_branch"
        case headSha = "head_sha"
        case runNumber = "run_number"
        case runAttempt = "run_attempt"
        case event
        case status
        case conclusion
        case workflowID = "workflow_id"
        case url
        case htmlURL = "html_url"
        case pullRequests = "pull_requests"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case runStartedAt = "run_started_at"
        case jobsURL = "jobs_url"
        case logsURL = "logs_url"
        case checkSuiteURL = "check_suite_url"
        case artifactsURL = "artifacts_url"
        case cancelURL = "cancel_url"
        case rerunURL = "rerun_url"
        case previousAttemptURL = "previous_attempt_url"
        case workflowURL = "workflow_url"
        case headCommit = "head_commit"
        case repository
        case headRepository = "head_repository"
        case headRepositoryID = "head_repository_id"
    }
}
