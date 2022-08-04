// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var markdown: Markdown {
        Markdown(path: "/markdown")
    }

    public struct Markdown {
        /// Path: `/markdown`
        public let path: String

        /// Render a Markdown document
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/markdown#render-a-markdown-document)
        public func post(_ body: PostRequest) -> Request<String> {
            Request(method: "POST", url: path, body: body)
        }

        public enum PostResponseHeaders {
            public static let contentType = HTTPHeader<String>(field: "Content-Type")
            public static let contentLength = HTTPHeader<String>(field: "Content-Length")
            public static let commonMarkerVersion = HTTPHeader<String>(field: "X-CommonMarker-Version")
        }

        public struct PostRequest: Encodable {
            /// The Markdown text to render in HTML.
            public var text: String
            /// The rendering mode. Can be either `markdown` or `gfm`.
            ///
            /// Example: "markdown"
            public var mode: Mode?
            /// The repository context to use when creating references in `gfm` mode.  For example, setting `context` to `octo-org/octo-repo` will change the text `#42` into an HTML link to issue 42 in the `octo-org/octo-repo` repository.
            public var context: String?

            /// The rendering mode. Can be either `markdown` or `gfm`.
            ///
            /// Example: "markdown"
            public enum Mode: String, Codable, CaseIterable {
                case markdown
                case gfm
            }

            public init(text: String, mode: Mode? = nil, context: String? = nil) {
                self.text = text
                self.mode = mode
                self.context = context
            }
        }
    }
}
