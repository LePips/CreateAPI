// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A list of external groups available to be connected to a team
public struct ExternalGroups: Codable {
    /// An array of external groups available to be mapped to a team
    ///
    /// Example:
    ///
    /// [
    ///   {
    ///     "group_id" : 1,
    ///     "group_name" : "group-azuread-test",
    ///     "updated_at" : "2021-01-03 22:27:15:000 -700"
    ///   },
    ///   {
    ///     "group_id" : 2,
    ///     "group_name" : "group-azuread-test2",
    ///     "updated_at" : "2021-06-03 22:27:15:000 -700"
    ///   }
    /// ]
    public var groups: [Group]?

    public struct Group: Codable {
        /// The internal ID of the group
        public var groupID: Int
        /// The display name of the group
        ///
        /// Example: "group-azuread-test"
        public var groupName: String
        /// The time of the last update for this group
        ///
        /// Example: "2019-06-03 22:27:15:000 -700"
        public var updatedAt: String

        public init(groupID: Int, groupName: String, updatedAt: String) {
            self.groupID = groupID
            self.groupName = groupName
            self.updatedAt = updatedAt
        }

        private enum CodingKeys: String, CodingKey {
            case groupID = "group_id"
            case groupName = "group_name"
            case updatedAt = "updated_at"
        }
    }

    public init(groups: [Group]? = nil) {
        self.groups = groups
    }
}
