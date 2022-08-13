// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Pets {
    public func petID(_ petID: String) -> WithPetID {
        WithPetID(path: "\(path)/\(petID)")
    }

    public struct WithPetID {
        /// Path: `/pets/{petId}`
        public let path: String

        /// Info for a specific pet
        public var get: Request<petstore_SPM_imports_linux.Pet> {
            Request(method: "GET", url: path, id: "showPetById")
        }
    }
}
