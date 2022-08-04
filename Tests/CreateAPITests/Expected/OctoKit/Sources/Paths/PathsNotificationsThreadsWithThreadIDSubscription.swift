// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Notifications.Threads.WithThreadID {
    public var subscription: Subscription {
        Subscription(path: path + "/subscription")
    }

    public struct Subscription {
        /// Path: `/notifications/threads/{thread_id}/subscription`
        public let path: String

        /// Get a thread subscription for the authenticated user
        ///
        /// This checks to see if the current user is subscribed to a thread. You can also [get a repository subscription](https://docs.github.com/rest/reference/activity#get-a-repository-subscription).
        /// 
        /// Note that subscriptions are only generated if a user is participating in a conversation--for example, they've replied to the thread, were **@mentioned**, or manually subscribe to a thread.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/activity#get-a-thread-subscription-for-the-authenticated-user)
        public var get: Request<OctoKit.ThreadSubscription> {
            Request(method: "GET", url: path)
        }

        /// Set a thread subscription
        ///
        /// If you are watching a repository, you receive notifications for all threads by default. Use this endpoint to ignore future notifications for threads until you comment on the thread or get an **@mention**.
        /// 
        /// You can also use this endpoint to subscribe to threads that you are currently not receiving notifications for or to subscribed to threads that you have previously ignored.
        /// 
        /// Unsubscribing from a conversation in a repository that you are not watching is functionally equivalent to the [Delete a thread subscription](https://docs.github.com/rest/reference/activity#delete-a-thread-subscription) endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/activity#set-a-thread-subscription)
        public func put(isIgnored: Bool? = nil) -> Request<OctoKit.ThreadSubscription> {
            Request(method: "PUT", url: path, body: ["ignored": isIgnored])
        }

        /// Delete a thread subscription
        ///
        /// Mutes all future notifications for a conversation until you comment on the thread or get an **@mention**. If you are watching the repository of the thread, you will still receive notifications. To ignore future notifications for a repository you are watching, use the [Set a thread subscription](https://docs.github.com/rest/reference/activity#set-a-thread-subscription) endpoint and set `ignore` to `true`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/activity#delete-a-thread-subscription)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path)
        }
    }
}
