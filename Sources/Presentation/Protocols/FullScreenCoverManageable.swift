import SwiftUI

/// A type that can be used to manage a sheet view
public protocol FullScreenCoverManageable: ObservableObject {
    associatedtype Destination: ViewDisplayable

    var fullScreenCover: Destination? { get set}

    func presentFullScreenCover(_ destination: Destination)
    func dismissCover()
}

extension FullScreenCoverManageable {
    /// Presents a full screen cover with the specific destination
    /// - Parameter destination: The destination to present as a full screen cover
    public func presentFullScreenCover(_ destination: Destination) {
        fullScreenCover = destination
    }

    /// Dismisses the currently presented sheet view
    public func dismissCover() {
        fullScreenCover = nil
    }
}
