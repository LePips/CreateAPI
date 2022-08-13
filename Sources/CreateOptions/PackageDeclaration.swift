import Foundation

public struct PackageDeclaration: Decodable {
    
    let url: URL
    let product: String
    var requirement: SourceControlRequirement
    
    public var packageDeclaration: String {
        ".package(url: \"\(url)\", \(requirement.declaration))"
    }
    
    public var productDeclaration: String {
        let cleanedPackage = url
            .deletingPathExtension()
            .lastPathComponent
        
        return ".product(name: \"\(product)\", package: \"\(cleanedPackage)\")"
    }
    
    public init(url: URL, product: String, requirement: SourceControlRequirement) {
        self.url = url
        self.product = product
        self.requirement = requirement
    }
    
    public static let get = PackageDeclaration(url: URL(string: "https://github.com/kean/Get")!,
                                               product: "Get",
                                               requirement: .from(version: "1.0.2"))
    
    public static let httpHeaders = PackageDeclaration(url: URL(string: "https://github.com/CreateAPI/HTTPHeaders")!,
                                                       product: "HTTPHeaders",
                                                       requirement: .from(version: "0.1.0"))
    
    public static let naiveDate = PackageDeclaration(url: URL(string: "https://github.com/CreateAPI/NaiveDate")!,
                                                     product: "NaiveDate",
                                                     requirement: .from(version: "1.0.0"))
    
    public static let urlQueryEncoder = PackageDeclaration(url: URL(string: "https://github.com/CreateAPI/URLQueryEncoder")!,
                                                           product: "URLQueryEncoder",
                                                           requirement: .from(version: "0.2.0"))
    
    public enum SourceControlRequirement: Decodable {
        case exact(version: String)
        case range(from: String, to: String)
        case closedRange(from: String, to: String)
        case branch(name: String)
        case commit(hash: String)
        case from(version: String)

        var declaration: String {
            switch self {
            case .exact(version: let version):
                return ".exact(\"\(version)\")"
            case .range(from: let min, to: let max):
                return "\"\(min)\"..<\"\(max)\""
            case .closedRange(from: let min, to: let max):
                return "\"\(min)\"...\"\(max)\""
            case .branch(name: let name):
                return ".branch(\"\(name)\")"
            case .commit(hash: let hash):
                return ".revision(\"\(hash)\")"
            case .from(let version):
                return "from: \"\(version)\""
            }
        }
    }

}
