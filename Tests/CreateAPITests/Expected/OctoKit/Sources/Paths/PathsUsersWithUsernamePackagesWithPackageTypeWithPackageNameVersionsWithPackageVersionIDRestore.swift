// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Users.WithUsername.Packages.WithPackageType.WithPackageName.Versions.WithPackageVersionID {
    public var restore: Restore {
        Restore(path: path + "/restore")
    }

    public struct Restore {
        /// Path: `/users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}/restore`
        public let path: String

        /// Restore package version for a user
        ///
        /// Restores a specific package version for a user.
        /// 
        /// You can restore a deleted package under the following conditions:
        ///   - The package was deleted within the last 30 days.
        ///   - The same package namespace and version is still available and not reused for a new package. If the same package namespace is not available, you will not be able to restore your package. In this scenario, to restore the deleted package, you must delete the new package that uses the deleted package's namespace first.
        /// 
        /// To use this endpoint, you must authenticate using an access token with the `packages:read` and `packages:write` scopes. In addition:
        /// - If `package_type` is not `container`, your token must also include the `repo` scope.
        /// - If `package_type` is `container`, you must also have admin permissions to the container that you want to restore.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/packages#restore-a-package-version-for-a-user)
        public var post: Request<Void> {
            Request(method: "POST", url: path)
        }
    }
}
