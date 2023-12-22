import SwiftUI

extension Image {
    enum SFSymbol: String {
        case debug = "ladybug"
        case error = "exclamationmark.octagon"
        case info = "info.circle"
        case notice = "bell"
        case success = "checkmark.circle"
        case warning = "exclamationmark.triangle"
    }

    init(_ symbol: SFSymbol) {
        self.init(systemName: symbol.rawValue)
    }
}
