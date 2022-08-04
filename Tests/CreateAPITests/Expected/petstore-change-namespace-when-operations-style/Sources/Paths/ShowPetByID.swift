// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Namespace {
    /// Info for a specific pet
    static public func showPetByID(petID: String) -> Request<petstore_change_namespace_when_operations_style.Pet> {
        Request(method: "GET", url: "/pets/\(petID)")
    }
}
