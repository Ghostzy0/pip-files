import Foundation

enum FeatureEdition: String {
    case baseline, pip

    static func resolve(marker: String?, packaged: Bool, arguments: [String]) -> Self? {
        if packaged { return marker.flatMap(Self.init(rawValue:)) }
        return arguments.contains("--baseline") ? .baseline : .pip
    }

    static func customDataPath(_ path: String?, packaged: Bool) -> String? {
        packaged ? nil : path
    }

    static var packaged: Bool { Bundle.main.bundleURL.pathExtension == "app" }
    static var selected: Self? {
        resolve(marker: Bundle.main.object(forInfoDictionaryKey: "PipFilesEdition") as? String,
                packaged: packaged, arguments: ProcessInfo.processInfo.arguments)
    }
    var baseline: Bool { self == .baseline }
    var name: String { baseline ? "Files Baseline" : "Pip Files" }
    var dataDirectoryName: String { name + (Self.packaged ? "" : " Development") }
}
