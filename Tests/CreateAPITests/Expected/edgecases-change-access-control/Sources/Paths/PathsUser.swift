// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    static var user: User {
        User(path: "/user")
    }

    struct User {
        /// Path: `/user`
        let path: String

        /// Create user
        ///
        /// This can only be done by the logged in user.
        func post(_ body: edgecases_change_access_control.User) -> Request<Void> {
            Request(method: "POST", url: path, body: body)
        }
    }
}
